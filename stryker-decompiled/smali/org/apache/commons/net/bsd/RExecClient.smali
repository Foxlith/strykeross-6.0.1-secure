.class public Lorg/apache/commons/net/bsd/RExecClient;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PORT:I = 0x200

.field protected static final NULL_CHAR:C


# instance fields
.field protected _errorStream_:Ljava/io/InputStream;

.field private remoteVerificationEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public createErrorStream()Ljava/io/InputStream;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/SocketClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security violation: unexpected connection attempt by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final isRemoteVerificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    return v0
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/bsd/RExecClient;->rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public rexec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/bsd/RExecClient;->createErrorStream()Ljava/io/InputStream;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/commons/net/bsd/RExecClient;->_errorStream_:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    iget-object p4, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-lez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object p2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa

    if-eq p2, p3, :cond_1

    int-to-char p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-ltz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Server closed connection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRemoteVerificationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/bsd/RExecClient;->remoteVerificationEnabled:Z

    return-void
.end method
