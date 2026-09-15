.class public Lorg/apache/commons/net/ftp/FTP;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field public static final ASCII_FILE_TYPE:I = 0x0

.field public static final BINARY_FILE_TYPE:I = 0x2

.field public static final BLOCK_TRANSFER_MODE:I = 0xb

.field public static final CARRIAGE_CONTROL_TEXT_FORMAT:I = 0x6

.field public static final COMPRESSED_TRANSFER_MODE:I = 0xc

.field public static final DEFAULT_CONTROL_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_DATA_PORT:I = 0x14

.field public static final DEFAULT_PORT:I = 0x15

.field public static final EBCDIC_FILE_TYPE:I = 0x1

.field public static final FILE_STRUCTURE:I = 0x7

.field public static final LOCAL_FILE_TYPE:I = 0x3

.field public static final NON_PRINT_TEXT_FORMAT:I = 0x4

.field public static final PAGE_STRUCTURE:I = 0x9

.field public static final RECORD_STRUCTURE:I = 0x8

.field public static final REPLY_CODE_LEN:I = 0x3

.field public static final STREAM_TRANSFER_MODE:I = 0xa

.field public static final TELNET_TEXT_FORMAT:I = 0x5

.field private static final modes:Ljava/lang/String; = "AEILNTCFRPSBC"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _controlEncoding:Ljava/lang/String;

.field protected _controlInput_:Ljava/io/BufferedReader;

.field protected _controlOutput_:Ljava/io/BufferedWriter;

.field protected _newReplyString:Z

.field protected _replyCode:I

.field protected _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _replyString:Ljava/lang/String;

.field protected strictMultilineParsing:Z

.field private strictReplyParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictReplyParsing:Z

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method private buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string p2, "\r\n"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private getReply(Z)I
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_b

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Truncated server reply: \'"

    const-string v6, "\'"

    if-le v2, v3, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isStrictMultilineParsing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/apache/commons/net/ftp/FTP;->strictCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->lenientCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    invoke-direct {p1, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isStrictReplyParsing()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    if-eq v2, v1, :cond_5

    const/16 v1, 0x20

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    const-string v1, "Invalid server reply: \'"

    .line 2
    invoke-static {v1, v0, v6}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 4
    invoke-static {v5, v0, v6}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isStrictReplyParsing()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/SocketClient;->fireReplyReceived(ILjava/lang/String;)V

    :cond_8
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    const/16 v0, 0x1a5

    if-eq p1, v0, :cond_9

    return p1

    :cond_9
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "FTP response 421 received.  Server closed connection."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 6
    invoke-static {v5, v0, v6}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    const-string v1, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    const-string v1, "Truncated server reply: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    invoke-direct {p1, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private lenientCheck(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private send(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v0, "Connection unexpectedly closed."

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    throw p1
.end method

.method private strictCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

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


# virtual methods
.method public __getReplyNoReport()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->getReply(Z)I

    return-void
.end method

.method public __noop()V
    .locals 2

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NOOP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReplyNoReport()V

    return-void
.end method

.method public _connectAction_()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_(Ljava/io/Reader;)V

    return-void
.end method

.method public _connectAction_(Ljava/io/Reader;)V
    .locals 3

    .line 2
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    :goto_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    iget p1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_4

    :goto_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Timed out waiting for initial connect reply"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    iget-object v1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    :cond_3
    :goto_4
    return-void
.end method

.method public abor()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ABOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public acct(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ACCT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(I)I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(II)I
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " R "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(J)I
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public allo(JI)I
    .locals 2

    .line 4
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->ALLO:Lorg/apache/commons/net/ftp/FTPCmd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " R "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public appe(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public cdup()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->CDUP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public cwd(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->CWD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dele(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->DELE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-void
.end method

.method public eprt(Ljava/net/InetAddress;I)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    const-string p1, "1"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_2

    const-string p1, "2"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->EPRT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public epsv()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->EPSV:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public feat()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->FEAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getControlEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->getReply(Z)I

    move-result v0

    return v0
.end method

.method public getReplyCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyString(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public help()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->HELP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->HELP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isStrictMultilineParsing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return v0
.end method

.method public isStrictReplyParsing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictReplyParsing:Z

    return v0
.end method

.method public list()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mdtm(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MDTM:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mfmt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MFMT:Lorg/apache/commons/net/ftp/FTPCmd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mkd(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MKD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mlsd()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public mlsd(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mlst()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public mlst(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public mode(I)I
    .locals 3

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MODE:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public nlst()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public nlst(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public noop()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->NOOP:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public pass(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PASS:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pasv()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PASV:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public port(Ljava/net/InetAddress;I)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p1, p2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p2, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->PORT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pwd()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->PWD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public quit()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->QUIT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public rein()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->REIN:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public rest(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->REST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public retr(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rmd(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RMD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rnfr(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RNFR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public rnto(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RNTO:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(ILjava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->send(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/SocketClient;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection is not open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I
    .locals 0

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setControlEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-void
.end method

.method public setStrictMultilineParsing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return-void
.end method

.method public setStrictReplyParsing(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->strictReplyParsing:Z

    return-void
.end method

.method public site(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SITE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public size(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SIZE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public smnt(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SMNT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stat()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public stat(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STAT:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stor(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stou()I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public stou(Ljava/lang/String;)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stru(I)I
    .locals 3

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STRU:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public syst()I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->SYST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;)I

    move-result v0

    return v0
.end method

.method public type(I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->TYPE:Lorg/apache/commons/net/ftp/FTPCmd;

    add-int/lit8 v1, p1, 0x1

    const-string v2, "AEILNTCFRPSBC"

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public type(II)I
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AEILNTCFRPSBC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    sget-object p1, Lorg/apache/commons/net/ftp/FTPCmd;->TYPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public user(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->USER:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
