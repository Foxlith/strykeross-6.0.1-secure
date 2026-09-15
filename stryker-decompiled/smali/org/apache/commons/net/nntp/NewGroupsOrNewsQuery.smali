.class public final Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final date:Ljava/lang/String;

.field private distributions:Ljava/lang/StringBuffer;

.field private final isGMT:Z

.field private newsgroups:Ljava/lang/StringBuffer;

.field private final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    iput-boolean p2, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "00"

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v5, "01"

    const/16 v6, 0x30

    if-ne v2, v0, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->date:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_5

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    if-ne v2, v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_7

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_7
    if-ne v2, v4, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_9

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_9
    if-ne v1, v4, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDistribution(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addNewsgroup(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->distributions:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNewsgroups()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->newsgroups:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isGMT()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT:Z

    return v0
.end method

.method public omitNewsgroup(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->addNewsgroup(Ljava/lang/String;)V

    return-void
.end method
