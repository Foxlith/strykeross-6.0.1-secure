.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# static fields
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method private broadcastLong()J
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private format([I)Ljava/lang/String;
    .locals 4

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private high()I
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private low()I
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private networkLong()J
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private toArray(I)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_0

    aget v2, v0, v1

    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$000(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCount()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-gtz v2, :cond_0

    .line 11
    .line 12
    long-to-int v0, v0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v3, "Count is larger than an integer: "

    .line 17
    .line 18
    invoke-static {v3, v0, v1}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v2
.end method

.method public getAddressCountLong()J
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v2}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v3

    if-gt v0, v3, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->toArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->format([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInRange(I)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result p1

    int-to-long v7, p1

    and-long/2addr v3, v7

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isInRange(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$000(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CIDR Signature:\t["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  Netmask: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  Network: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  Broadcast: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  First address: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  Last address: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n  Address Count: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
