.class public final Lorg/apache/commons/net/ntp/NTPUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x7b


# instance fields
.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->version:I

    return-void
.end method


# virtual methods
.method public getTime(Ljava/net/InetAddress;)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 1

    .line 1
    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ntp/NTPUDPClient;->getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/net/InetAddress;I)Lorg/apache/commons/net/ntp/TimeInfo;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/DatagramSocketClient;->open()V

    :cond_0
    new-instance v0, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {v0}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setMode(I)V

    iget v1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->version:I

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setVersion(I)V

    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {v1, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    new-instance p1, Lorg/apache/commons/net/ntp/NtpV3Impl;

    invoke-direct {p1}, Lorg/apache/commons/net/ntp/NtpV3Impl;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object p2

    invoke-static {}, Lorg/apache/commons/net/ntp/TimeStamp;->getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/net/ntp/NtpV3Packet;->setTransmitTime(Lorg/apache/commons/net/ntp/TimeStamp;)V

    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    iget-object v0, p0, Lorg/apache/commons/net/DatagramSocketClient;->_socket_:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/commons/net/ntp/TimeStamp;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lorg/apache/commons/net/ntp/TimeInfo;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Originate time does not match the request"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->version:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ntp/NTPUDPClient;->version:I

    return-void
.end method
