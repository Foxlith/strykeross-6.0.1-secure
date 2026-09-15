.class public Lorg/apache/commons/net/smtp/SMTPClient;
.super Lorg/apache/commons/net/smtp/SMTP;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/smtp/SMTP;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->rcpt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public addRecipient(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->rcpt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public completePendingCommand()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->help(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public login()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/smtp/SMTP;->helo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->helo(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public logout()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->rset()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendMessageData()Ljava/io/Writer;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->data()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/smtp/SMTP;->writer:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public sendNoOp()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTP;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendShortMessageData(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->sendMessageData()Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/smtp/SMTPClient;->completePendingCommand()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public sendSimpleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendSimpleMessage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTPClient;->setSender(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move p1, v0

    move v1, p1

    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    aget-object v2, p2, p1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/smtp/SMTPClient;->addRecipient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/smtp/SMTPClient;->sendShortMessageData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setSender(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->mail(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public setSender(Lorg/apache/commons/net/smtp/RelayPath;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/net/smtp/RelayPath;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->mail(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/smtp/SMTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/smtp/SMTP;->vrfy(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xfa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xfb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
