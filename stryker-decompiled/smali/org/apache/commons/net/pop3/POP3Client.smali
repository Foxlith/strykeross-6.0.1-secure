.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->lambda$listUniqueIdentifiers$1(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->lambda$listMessages$0(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$listMessages$0(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$listUniqueIdentifiers$1(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/pop3/POP3Client;->parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    :catch_0
    return-object v1
.end method

.method private static parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    :catch_0
    return-object v1
.end method


# virtual methods
.method public capa()Z
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getAdditionalReply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessage(I)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/pop3/POP3;->lastReplyLine:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getAdditionalReply()V

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/net/pop3/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/net/pop3/a;-><init>(Ljava/util/ListIterator;I)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/16 v0, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/pop3/POP3;->lastReplyLine:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/pop3/POP3Client;->parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getAdditionalReply()V

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/net/pop3/a;

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/net/pop3/a;-><init>(Ljava/util/ListIterator;I)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-static {p2, p3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1

    const-string v3, "0"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    return p1
.end method

.method public logout()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3;->setState(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    iget v0, p0, Lorg/apache/commons/net/pop3/POP3;->replyCode:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public noop()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public reset()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .locals 3

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/pop3/POP3;->reader:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3;->sendCommand(I)I

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3;->lastReplyLine:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method
