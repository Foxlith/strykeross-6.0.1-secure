.class public Lorg/apache/commons/net/ftp/FTPSClient;
.super Lorg/apache/commons/net/ftp/FTPClient;
.source "SourceFile"


# static fields
.field private static final CMD_ADAT:Ljava/lang/String; = "ADAT"

.field private static final CMD_AUTH:Ljava/lang/String; = "AUTH"

.field private static final CMD_CCC:Ljava/lang/String; = "CCC"

.field private static final CMD_CONF:Ljava/lang/String; = "CONF"

.field private static final CMD_ENC:Ljava/lang/String; = "ENC"

.field private static final CMD_MIC:Ljava/lang/String; = "MIC"

.field private static final CMD_PBSZ:Ljava/lang/String; = "PBSZ"

.field private static final CMD_PROT:Ljava/lang/String; = "PROT"

.field public static final DEFAULT_FTPS_DATA_PORT:I = 0x3dd

.field public static final DEFAULT_FTPS_PORT:I = 0x3de

.field private static final DEFAULT_PROT:Ljava/lang/String; = "C"

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static KEYSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROT_COMMAND_VALUE:[Ljava/lang/String;

.field public static PROVIDER:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static STORE_TYPE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static TRUSTSTORE_ALGORITHM:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private auth:Ljava/lang/String;

.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isClientMode:Z

.field private isCreation:Z

.field private final isImplicit:Z

.field private isNeedClientAuth:Z

.field private isWantClientAuth:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private plainSocket:Ljava/net/Socket;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "S"

    const-string v1, "P"

    const-string v2, "C"

    const-string v3, "E"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    const-string v0, "TLS"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getValidateServerCertificateTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-eqz p2, :cond_0

    const/16 p1, 0x3de

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 1

    .line 6
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private checkPROTValue(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lorg/apache/commons/net/ftp/FTPSClient;->PROT_COMMAND_VALUE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/Socket;->close()V

    :cond_1
    return-void
.end method

.method private createSSLSocket(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method private initSslContext()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method private openDataSecureConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 9

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getDataConnectionMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getDataConnectionMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getDataTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getDataConnectionMode()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getActivePort()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3, v7, v6, v8}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v3

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->eprt(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->port(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    return-object v1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_3
    return-object v1

    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_5
    return-object v1

    :cond_6
    if-ltz v2, :cond_7

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_7
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    if-ltz v2, :cond_8

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReceiveDataSocketBufferSize()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReceiveDataSocketBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSendDataSocketBufferSize()I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSendDataSocketBufferSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_5

    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v3, :cond_b

    :try_start_6
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    throw p2

    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_d

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->epsv()I

    move-result v3

    const/16 v8, 0xe5

    if-ne v3, v8, :cond_e

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    move-result v0

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_10

    return-object v1

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReceiveDataSocketBufferSize()I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReceiveDataSocketBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_12
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSendDataSocketBufferSize()I

    move-result v3

    if-lez v3, :cond_13

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSendDataSocketBufferSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_13
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassiveLocalIPAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassiveLocalIPAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-direct {v3, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_14
    if-ltz v2, :cond_15

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_15
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassivePort()I

    move-result v7

    invoke-direct {v2, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassiveHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getPassivePort()I

    move-result v7

    invoke-virtual {v2, v0, v3, v7, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    goto :goto_4

    :cond_16
    move-object v2, v1

    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_17

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRestartOffset()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    return-object v1

    :cond_17
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-nez p1, :cond_18

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    return-object v1

    :cond_18
    move-object p1, v0

    move-object v1, v2

    :goto_5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isRemoteVerificationEnabled()Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_6

    :cond_19
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->closeSockets(Ljava/net/Socket;Ljava/net/Socket;)V

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host attempting data connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not same as server "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getProxy()Ljava/net/Proxy;

    move-result-object p2

    if-eqz p2, :cond_1b

    move-object p1, v1

    :cond_1b
    return-object p1
.end method


# virtual methods
.method public _connectAction_()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->applySocketAttributes()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_()V

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isImplicit:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->execAUTH()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->sslNegotiation()V

    :cond_1
    return-void
.end method

.method public _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->openDataSecureConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->_prepareDataSocket_(Ljava/net/Socket;)V

    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    :cond_3
    return-object p1
.end method

.method public _prepareDataSocket_(Ljava/net/Socket;)V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    return-void
.end method

.method public execADAT([B)I
    .locals 1

    const-string v0, "ADAT"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execAUTH(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "AUTH"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public execAUTH()V
    .locals 2

    .line 2
    const-string v0, "AUTH"

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14e

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xea

    if-ne v1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execCCC()I
    .locals 1

    const-string v0, "CCC"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public execCONF([B)I
    .locals 1

    const-string v0, "CONF"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public execENC([B)I
    .locals 1

    const-string v0, "ENC"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public execMIC([B)I
    .locals 1

    const-string v0, "MIC"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64StringUnChunked([B)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public execPBSZ(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    const-string v0, "PBSZ"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xc8

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public execPROT(Ljava/lang/String;)V
    .locals 3

    const-string v0, "C"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->checkPROTValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PROT"

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/net/ftp/FTPSSocketFactory;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPSSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->setSocketFactory(Ljavax/net/SocketFactory;)V

    new-instance p1, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPSServerSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->setServerSocketFactory(Ljavax/net/ServerSocketFactory;)V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAuthValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEndpointCheckingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    return v0
.end method

.method public parseADATReply(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "ADAT="

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public parsePBSZ(J)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPSClient;->execPBSZ(J)V

    const-string v0, "PBSZ="

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPSClient;->extractPrefixedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v0, "CCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    iput-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p2
.end method

.method public setAuthValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->auth:Ljava/lang/String;

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledSessionCreation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    return-void
.end method

.method public sslNegotiation()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPSClient;->plainSocket:Ljava/net/Socket;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPSClient;->initSslContext()V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->createSSLSocket(Ljava/net/Socket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isCreation:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->tlsEndpointChecking:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isNeedClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isWantClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->suites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->isClientMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Hostname doesn\'t match certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method
