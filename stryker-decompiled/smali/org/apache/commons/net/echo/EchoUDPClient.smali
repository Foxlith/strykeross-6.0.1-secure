.class public final Lorg/apache/commons/net/echo/EchoUDPClient;
.super Lorg/apache/commons/net/discard/DiscardUDPClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x7


# instance fields
.field private final receivePacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/net/discard/DiscardUDPClient;-><init>()V

    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_BTYE_ARRAY:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public receive([B)I
    .locals 1

    .line 1
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/echo/EchoUDPClient;->receive([BI)I

    move-result p1

    return p1
.end method

.method public receive([BI)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setData([B)V

    iget-object p1, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramPacket;->setLength(I)V

    iget-object p1, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    iget-object p2, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    iget-object p1, p0, Lorg/apache/commons/net/echo/EchoUDPClient;->receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    return p1
.end method

.method public send([BILjava/net/InetAddress;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    return-void
.end method

.method public send([BLjava/net/InetAddress;)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/commons/net/discard/DiscardUDPClient;->send([BILjava/net/InetAddress;I)V

    return-void
.end method
