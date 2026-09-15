.class public Lorg/apache/commons/net/smtp/SMTPSClient;
.super Lorg/apache/commons/net/smtp/SMTPClient;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"


# instance fields
.field private context:Ljavax/net/ssl/SSLContext;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final isImplicit:Z

.field private keyManager:Ljavax/net/ssl/KeyManager;

.field private final protocol:Ljava/lang/String;

.field private protocols:[Ljava/lang/String;

.field private suites:[Ljava/lang/String;

.field private tlsEndpointChecking:Z

.field private trustManager:Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TLS"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPClient;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocol:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->isImplicit:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocol:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->isImplicit:Z

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(ZLjavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 6
    const-string v0, "TLS"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/smtp/SMTPSClient;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ZLjavax/net/ssl/SSLContext;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPClient;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->isImplicit:Z

    iput-object p2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->context:Ljavax/net/ssl/SSLContext;

    const-string p1, "TLS"

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocol:Ljava/lang/String;

    return-void
.end method

.method private initSSLContext()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocol:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;->getKeyManager()Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SSLContextUtils;->createSSLContext(Ljava/lang/String;Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->context:Ljavax/net/ssl/SSLContext;

    :cond_0
    return-void
.end method

.method private performSSLNegotiation()V
    .locals 6

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;->initSSLContext()V

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->context:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_hostname_:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemotePort()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    iget-boolean v2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->tlsEndpointChecking:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/apache/commons/net/util/SSLSocketUtils;->enableEndpointNameVerification(Ljavax/net/ssl/SSLSocket;)Z

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocols:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->suites:[Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iput-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    new-instance v2, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->reader:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    iget-object v5, p0, Lorg/apache/commons/net/smtp/SMTP;->encoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    iget-object v2, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

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


# virtual methods
.method public _connectAction_()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->isImplicit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->applySocketAttributes()V

    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;->performSSLNegotiation()V

    :cond_0
    invoke-super {p0}, Lorg/apache/commons/net/smtp/SMTP;->_connectAction_()V

    return-void
.end method

.method public execTLS()Z
    .locals 1

    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->sendCommand(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTPSClient;->performSSLNegotiation()V

    const/4 v0, 0x1

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

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getKeyManager()Ljavax/net/ssl/KeyManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public isEndpointCheckingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->tlsEndpointChecking:Z

    return v0
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->suites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public setEndpointCheckingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->tlsEndpointChecking:Z

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setKeyManager(Ljavax/net/ssl/KeyManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->keyManager:Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/smtp/SMTPSClient;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method
