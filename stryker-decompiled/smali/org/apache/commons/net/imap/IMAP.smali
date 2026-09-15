.class public Lorg/apache/commons/net/imap/IMAP;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAP$IMAPState;,
        Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x8f

.field public static final TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field protected static final __DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected __writer:Ljava/io/BufferedWriter;

.field protected _reader:Ljava/io/BufferedReader;

.field private volatile chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

.field private final initialID:[C

.field private replyCode:I

.field private final replyLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/apache/commons/net/imap/IMAP$IMAPState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/mac/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Linet/ipaddr/mac/j;-><init>(I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAP;->TRUE_CHUNK_LISTENER:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    const/16 v0, 0x8f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->createCommandSupport()V

    return-void

    :array_0
    .array-data 2
        0x41s
        0x41s
        0x41s
        0x41s
    .end array-data
.end method

.method public static synthetic a(Lorg/apache/commons/net/imap/IMAP;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/imap/IMAP;->lambda$static$0(Lorg/apache/commons/net/imap/IMAP;)Z

    move-result p0

    return p0
.end method

.method private getReply()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->getReply(Z)V

    return-void
.end method

.method private getReply(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection closed without indication."

    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_6

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->isUntagged(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->literalCount(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ltz p1, :cond_2

    iget-object v2, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;->chunkReceived(Lorg/apache/commons/net/imap/IMAP;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;)I

    move-result p1

    :goto_2
    iput p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    goto :goto_3

    :cond_6
    invoke-static {v0}, Lorg/apache/commons/net/imap/IMAPReply;->getUntaggedReplyCode(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :goto_3
    iget p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->fireReplyReceived(ILjava/lang/String;)V

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic lambda$static$0(Lorg/apache/commons/net/imap/IMAP;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\"\""

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\""

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "([\\\\\"])"

    const-string v3, "\\\\$1"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/SocketClient;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;->getReply()V

    iget p1, p0, Lorg/apache/commons/net/imap/IMAP;->replyCode:I

    return p1
.end method


# virtual methods
.method public _connectAction_()V
    .locals 4

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getSoTimeout()I

    move-result v0

    if-gtz v0, :cond_0

    iget v1, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/net/imap/IMAP;->getReply(Z)V

    if-gtz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setSoTimeout(I)V

    :cond_1
    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public disconnect()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->_reader:Ljava/io/BufferedReader;

    iput-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->__writer:Ljava/io/BufferedWriter;

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    return-void
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result p1

    return p1
.end method

.method public doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result p1

    return p1
.end method

.method public fireReplyReceived(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->getListenerCount()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->fireReplyReceived(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public generateCommandID()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-eqz v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lorg/apache/commons/net/imap/IMAP;->initialID:[C

    aget-char v4, v3, v1

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    const/16 v4, 0x41

    aput-char v4, v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    int-to-char v2, v4

    aput-char v2, v3, v1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getReplyString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->replyLines:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->generateCommandID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;)I
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendData(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/apache/commons/net/imap/IMAP;->sendCommandWithID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setChunkListener(Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->chunkListener:Lorg/apache/commons/net/imap/IMAP$IMAPChunkListener;

    return-void
.end method

.method public setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/imap/IMAP;->state:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-void
.end method
