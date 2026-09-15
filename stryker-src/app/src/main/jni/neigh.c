#include <jni.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
#include <linux/neighbour.h>
#include <arpa/inet.h>

#define NEIGH_BUF 8192
#define NEIGH_MAX 512

struct neigh_ctx {
    JNIEnv *env;
    jobject list;
    jmethodID add;
    int count;
};

static void emit(struct neigh_ctx *ctx, const char *ip, const unsigned char *mac, int maclen) {
    char line[128];
    if (maclen != 6) return;
    snprintf(line, sizeof(line), "%s %02X:%02X:%02X:%02X:%02X:%02X",
             ip, mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
    jstring s = (*ctx->env)->NewStringUTF(ctx->env, line);
    if (s == NULL) return;
    (*ctx->env)->CallBooleanMethod(ctx->env, ctx->list, ctx->add, s);
    (*ctx->env)->DeleteLocalRef(ctx->env, s);
    ctx->count++;
}

static void parse_message(struct neigh_ctx *ctx, struct nlmsghdr *nh) {
    struct ndmsg *nd = (struct ndmsg *) NLMSG_DATA(nh);
    if (nd->ndm_family != AF_INET) return;
    if (nd->ndm_state & (NUD_INCOMPLETE | NUD_FAILED | NUD_NOARP)) return;

    struct rtattr *rta = (struct rtattr *) ((char *) nd + NLMSG_ALIGN(sizeof(struct ndmsg)));
    int len = nh->nlmsg_len - NLMSG_LENGTH(sizeof(struct ndmsg));

    char ip[INET_ADDRSTRLEN];
    unsigned char mac[8];
    int have_ip = 0, maclen = 0;
    memset(ip, 0, sizeof(ip));
    memset(mac, 0, sizeof(mac));

    for (; RTA_OK(rta, len); rta = RTA_NEXT(rta, len)) {
        if (rta->rta_type == NDA_DST && RTA_PAYLOAD(rta) == 4) {
            if (inet_ntop(AF_INET, RTA_DATA(rta), ip, sizeof(ip)) != NULL) have_ip = 1;
        } else if (rta->rta_type == NDA_LLADDR) {
            size_t n = RTA_PAYLOAD(rta);
            if (n <= sizeof(mac)) {
                memcpy(mac, RTA_DATA(rta), n);
                maclen = (int) n;
            }
        }
    }
    if (have_ip && maclen == 6) emit(ctx, ip, mac, maclen);
}

JNIEXPORT jint JNICALL
Java_com_zalexdev_stryker_localnetwork_nonroot_Neighbours_nativeDump(JNIEnv *env, jclass clazz,
                                                                    jobject list) {
    (void) clazz;
    jclass listClass = (*env)->GetObjectClass(env, list);
    jmethodID add = (*env)->GetMethodID(env, listClass, "add", "(Ljava/lang/Object;)Z");
    if (add == NULL) return -1;

    int fd = socket(AF_NETLINK, SOCK_RAW | SOCK_CLOEXEC, NETLINK_ROUTE);
    if (fd < 0) return -errno;

    struct timeval tv;
    tv.tv_sec = 2;
    tv.tv_usec = 0;
    setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));

    struct {
        struct nlmsghdr nh;
        struct ndmsg nd;
    } req;
    memset(&req, 0, sizeof(req));
    req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(struct ndmsg));
    req.nh.nlmsg_type = RTM_GETNEIGH;
    req.nh.nlmsg_flags = NLM_F_REQUEST | NLM_F_DUMP;
    req.nh.nlmsg_seq = 1;
    req.nd.ndm_family = AF_INET;

    struct sockaddr_nl sa;
    memset(&sa, 0, sizeof(sa));
    sa.nl_family = AF_NETLINK;

    if (sendto(fd, &req, req.nh.nlmsg_len, 0, (struct sockaddr *) &sa, sizeof(sa)) < 0) {
        int e = -errno;
        close(fd);
        return e;
    }

    struct neigh_ctx ctx;
    ctx.env = env;
    ctx.list = list;
    ctx.add = add;
    ctx.count = 0;

    char buf[NEIGH_BUF];
    int done = 0;
    while (!done && ctx.count < NEIGH_MAX) {
        ssize_t n = recv(fd, buf, sizeof(buf), 0);
        if (n <= 0) break;
        struct nlmsghdr *nh = (struct nlmsghdr *) buf;
        for (; NLMSG_OK(nh, (unsigned int) n); nh = NLMSG_NEXT(nh, n)) {
            if (nh->nlmsg_type == NLMSG_DONE) { done = 1; break; }
            if (nh->nlmsg_type == NLMSG_ERROR) {
                struct nlmsgerr *err = (struct nlmsgerr *) NLMSG_DATA(nh);
                close(fd);
                return err->error == 0 ? ctx.count : err->error;
            }
            if (nh->nlmsg_type == RTM_NEWNEIGH) parse_message(&ctx, nh);
        }
    }
    close(fd);
    return ctx.count;
}
