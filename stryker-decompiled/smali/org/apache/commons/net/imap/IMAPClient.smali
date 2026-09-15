.class public Lorg/apache/commons/net/imap/IMAPClient;
.super Lorg/apache/commons/net/imap/IMAP;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;,
        Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;,
        Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    }
.end annotation


# static fields
.field private static final DQUOTE:C = '\"'

.field private static final DQUOTE_S:Ljava/lang/String; = "\""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/net/imap/IMAP;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/net/imap/IMAPClient;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, " "

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, v0, p2}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_2

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x7b

    if-ne p2, v1, :cond_1

    .line 4
    invoke-static {p1, v0, p3}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    sget-object p2, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/16 p1, 0x7b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "ISO-8859-1"

    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/net/imap/IMAP;->sendCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p4}, Lorg/apache/commons/net/imap/IMAP;->sendData(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAPReply;->isSuccess(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    return p2
.end method

.method public capability()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public check()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public close()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public create(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public examine(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public expunge()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAP;->getState()Lorg/apache/commons/net/imap/IMAP$IMAPState;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    sget-object p1, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/imap/IMAP;->setState(Lorg/apache/commons/net/imap/IMAP$IMAPState;)V

    const/4 p1, 0x1

    return p1
.end method

.method public logout()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public noop()Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public search(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAPClient;->search(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "CHARSET "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    invoke-static {p1, p2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public select(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_1

    if-lez p1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "STATUS command requires at least one data item name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public subscribe(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public uid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {p1}, Lorg/apache/commons/net/imap/IMAP;->quoteMailboxName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/imap/IMAP;->doCommand(Lorg/apache/commons/net/imap/IMAPCommand;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
