.class public final Lorg/apache/commons/net/nntp/NewsgroupInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODERATED_POSTING_PERMISSION:I = 0x1

.field public static final PERMITTED_POSTING_PERMISSION:I = 0x2

.field public static final PROHIBITED_POSTING_PERMISSION:I = 0x3

.field public static final UNKNOWN_POSTING_PERMISSION:I


# instance fields
.field private estimatedArticleCount:J

.field private firstArticle:J

.field private lastArticle:J

.field private newsgroup:Ljava/lang/String;

.field private postingPermission:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getArticleCountLong()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    return-wide v0
.end method

.method public getFirstArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getFirstArticleLong()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    return-wide v0
.end method

.method public getLastArticle()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    long-to-int v0, v0

    return v0
.end method

.method public getLastArticleLong()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    return-wide v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPostingPermission()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    return v0
.end method

.method public setArticleCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->estimatedArticleCount:J

    return-void
.end method

.method public setFirstArticle(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->firstArticle:J

    return-void
.end method

.method public setLastArticle(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->lastArticle:J

    return-void
.end method

.method public setNewsgroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->newsgroup:Ljava/lang/String;

    return-void
.end method

.method public setPostingPermission(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->postingPermission:I

    return-void
.end method
