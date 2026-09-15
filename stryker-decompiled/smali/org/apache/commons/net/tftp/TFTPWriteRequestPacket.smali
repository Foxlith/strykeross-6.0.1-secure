.class public final Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;
.super Lorg/apache/commons/net/tftp/TFTPRequestPacket;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(ILjava/net/DatagramPacket;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;I)V
    .locals 6

    .line 2
    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/net/tftp/TFTPPacket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WRQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/tftp/TFTPRequestPacket;->getMode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/tftp/TFTP;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
