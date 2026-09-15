.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private maxTimeouts:I

.field private totalBytesReceived:J

.field private totalBytesSent:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    return-wide v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6

    .line 2
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6

    .line 3
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result p1

    return p1
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 18

    .line 4
    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    if-nez v0, :cond_0

    new-instance v4, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    move-object v4, v5

    :goto_0
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v6, p1

    invoke-direct {v5, v2, v3, v6, v0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    new-instance v6, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v7}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    move v9, v7

    move v11, v9

    move v12, v11

    move v13, v12

    const/4 v0, 0x1

    const/4 v10, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v15, v7

    const/4 v14, 0x1

    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 p3, v9

    const/4 v9, 0x5

    if-eqz v0, :cond_3

    if-eq v7, v3, :cond_2

    :try_start_2
    invoke-virtual {v6, v7}, Lorg/apache/commons/net/tftp/TFTPPacket;->setPort(I)V

    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    :try_start_3
    invoke-virtual {v6, v8}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {v5, v8}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v7

    move-object v9, v8

    :goto_3
    const/16 p3, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move v9, v7

    move-object v2, v8

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_1
    move-object v9, v2

    move v2, v7

    goto :goto_3

    :catch_2
    move v9, v7

    goto :goto_4

    :cond_2
    :try_start_4
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 p4, v2

    :try_start_5
    const-string v2, "INCORRECT SOURCE PORT"

    invoke-direct {v0, v8, v7, v9, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect source port ("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") in request reply."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    move/from16 v9, p3

    move-object/from16 v2, p4

    goto :goto_4

    :catch_4
    move-object/from16 p4, v2

    move/from16 v9, p3

    goto :goto_4

    :cond_3
    move-object/from16 p4, v2

    move/from16 v2, p3

    move-object/from16 v9, p4

    move/from16 p3, v0

    :goto_5
    :try_start_6
    invoke-virtual {v9, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_a

    if-ne v7, v2, :cond_a

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    const/4 v8, 0x5

    if-eq v0, v8, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected packet type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move/from16 v0, p3

    move-object/from16 v17, v9

    move v9, v2

    move-object/from16 v2, v17

    goto/16 :goto_b

    :cond_4
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v16, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v12
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const v0, 0xffff

    if-ne v12, v10, :cond_7

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v7

    invoke-virtual {v4, v8, v7, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v10, v10, 0x1

    if-le v10, v0, :cond_6

    const/4 v10, 0x0

    :cond_6
    :goto_6
    move/from16 v16, v2

    const/4 v14, 0x0

    goto :goto_8

    :catch_6
    move-exception v0

    :try_start_9
    new-instance v7, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v8, "File write failed."

    const/4 v3, 0x3

    invoke-direct {v7, v9, v2, v3, v8}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    throw v0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->discardPackets()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v0, v10, -0x1

    :goto_7
    if-ne v12, v0, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v16, v2

    goto :goto_8

    :cond_a
    :try_start_a
    new-instance v0, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v3, "Unexpected host or port."
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v16, v2

    const/4 v2, 0x5

    :try_start_b
    invoke-direct {v0, v8, v7, v2, v3}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/InterruptedIOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_8
    move/from16 v0, p3

    move-object v2, v9

    move/from16 v9, v16

    goto :goto_c

    :catch_7
    :goto_9
    move/from16 v0, p3

    move-object v2, v9

    move/from16 v9, v16

    goto :goto_b

    :catch_8
    move/from16 v16, v2

    goto :goto_9

    :catch_9
    move-object/from16 p4, v2

    move/from16 p3, v9

    goto :goto_b

    :goto_a
    :try_start_c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_b
    add-int/lit8 v15, v15, 0x1

    iget v3, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    if-ge v15, v3, :cond_d

    :goto_c
    if-nez v14, :cond_c

    invoke-virtual {v6, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    add-int/2addr v11, v13

    iget-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    int-to-long v14, v13

    add-long/2addr v7, v14

    iput-wide v7, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesReceived:J

    const/16 v3, 0x200

    if-eq v13, v3, :cond_b

    invoke-virtual {v1, v6}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    return v11

    :cond_b
    move/from16 v3, p5

    move-object v5, v6

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    move/from16 v3, p5

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    throw v0
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6

    .line 2
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6

    .line 3
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 17

    .line 4
    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v9, p5

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    if-nez v0, :cond_0

    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object v10, v3

    :goto_0
    new-instance v11, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v2, p1

    move-object/from16 v12, p4

    invoke-direct {v11, v12, v9, v2, v0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    new-instance v0, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->beginBufferedOps()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {v1, v11}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x1

    const/4 v13, 0x0

    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x5

    if-eqz v4, :cond_4

    if-eq v3, v9, :cond_3

    :try_start_2
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/tftp/TFTPPacket;->setPort(I)V

    invoke-virtual {v12, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    :try_start_3
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {v11, v2}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v2

    :cond_2
    move v5, v3

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-object v12, v2

    :catch_2
    move v5, v3

    :catch_3
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_3
    :try_start_4
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const-string v15, "INCORRECT SOURCE PORT"

    invoke-direct {v4, v2, v3, v14, v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect source port ("

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") in request reply."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {v12, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v16, :cond_9

    if-ne v3, v5, :cond_9

    :try_start_6
    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    if-eq v2, v14, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Received unexpected packet type."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error code "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " received: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    check-cast v15, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    invoke-virtual {v15}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v2

    if-ne v2, v6, :cond_8

    add-int/lit8 v6, v6, 0x1

    const v2, 0xffff

    if-le v6, v2, :cond_7

    const/4 v6, 0x0

    :cond_7
    move/from16 p4, v4

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->discardPackets()V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 p4, v4

    goto :goto_3

    :cond_9
    :try_start_7
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 p4, v4

    :try_start_8
    const-string v4, "Unexpected host or port."

    invoke-direct {v15, v2, v3, v14, v4}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    invoke-virtual {v1, v15}, Lorg/apache/commons/net/tftp/TFTP;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    move/from16 v4, p4

    goto :goto_6

    :catch_4
    move/from16 v4, p4

    goto :goto_5

    :catch_5
    move/from16 p4, v4

    goto :goto_5

    :goto_4
    :try_start_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_6
    :goto_5
    add-int/lit8 v13, v13, 0x1

    iget v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ge v13, v2, :cond_d

    :goto_6
    if-nez v8, :cond_1

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    return-void

    :cond_a
    const/16 v2, 0x200

    move v8, v2

    const/4 v3, 0x4

    const/4 v11, 0x0

    :goto_7
    if-lez v8, :cond_b

    :try_start_a
    iget-object v13, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    invoke-virtual {v10, v13, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-lez v13, :cond_b

    add-int/2addr v3, v13

    sub-int/2addr v8, v13

    add-int/2addr v11, v13

    goto :goto_7

    :cond_b
    if-ge v11, v2, :cond_c

    const/4 v7, 0x1

    :cond_c
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    iget-object v2, v1, Lorg/apache/commons/net/tftp/TFTP;->sendBuffer:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    iget-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    int-to-long v13, v11

    add-long/2addr v2, v13

    iput-wide v2, v1, Lorg/apache/commons/net/tftp/TFTPClient;->totalBytesSent:J

    move-object v11, v0

    goto/16 :goto_1

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Connection timed out."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTP;->endBufferedOps()V

    throw v0
.end method

.method public setMaxTimeouts(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->maxTimeouts:I

    return-void
.end method
