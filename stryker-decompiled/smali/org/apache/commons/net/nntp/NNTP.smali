.class public Lorg/apache/commons/net/nntp/NNTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final DEFAULT_PORT:I = 0x77


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field _isAllowedToPost:Z

.field protected _reader_:Ljava/io/BufferedReader;

.field protected _writer_:Ljava/io/BufferedWriter;

.field private replyCode:I

.field private replyString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/net/nntp/NNTP;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .locals 4

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    sget-object v3, Lorg/apache/commons/net/nntp/NNTP;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReply()I

    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    return-void
.end method

.method public article()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public article(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->article(J)I

    move-result p1

    return p1
.end method

.method public article(J)I
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public article(Ljava/lang/String;)I
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public authinfoPass(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PASS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public authinfoUser(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public body()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public body(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->body(J)I

    move-result p1

    return p1
.end method

.method public body(J)I
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public body(Ljava/lang/String;)I
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    return-void
.end method

.method public getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getReply()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_reader_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/SocketClient;->fireReplyReceived(ILjava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyCode:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "NNTP response 400 received.  Server closed connection."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse response code.\nServer Reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Truncated server reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NNTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTP;->replyString:Ljava/lang/String;

    return-object v0
.end method

.method public group(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public head()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public head(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->head(J)I

    move-result p1

    return p1
.end method

.method public head(J)I
    .locals 1

    .line 3
    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public head(Ljava/lang/String;)I
    .locals 1

    .line 4
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public help()I
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public ihave(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isAllowedToPost()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NNTP;->_isAllowedToPost:Z

    return v0
.end method

.method public last()I
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public list()I
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public listActive(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTIVE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, " GMT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, " <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, " GMT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p5, :cond_1

    const-string p1, " <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public next()I
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public post()I
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 4
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTP;->_writer_:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTP;->getReply()I

    move-result p1

    return p1
.end method

.method public stat()I
    .locals 1

    .line 1
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public stat(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTP;->stat(J)I

    move-result p1

    return p1
.end method

.method public stat(J)I
    .locals 1

    .line 3
    const/16 v0, 0xe

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stat(Ljava/lang/String;)I
    .locals 1

    .line 4
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public xhdr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public xover(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
