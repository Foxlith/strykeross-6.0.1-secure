.class public Lorg/apache/commons/net/DefaultSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SourceFile"


# instance fields
.field private final connProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/DefaultSocketFactory;-><init>(Ljava/net/Proxy;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 1

    .line 2
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 1

    .line 3
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/commons/net/DefaultSocketFactory;->connProxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance p3, Ljava/net/InetSocketAddress;

    invoke-direct {p3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-object v0
.end method
