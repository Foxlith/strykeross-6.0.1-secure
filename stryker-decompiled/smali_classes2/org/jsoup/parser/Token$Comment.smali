.class final Lorg/jsoup/parser/Token$Comment;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation


# instance fields
.field bogus:Z

.field private final data:Ljava/lang/StringBuilder;

.field private dataS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private ensureData()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final append(C)Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Comment;->ensureData()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Comment;->ensureData()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public reset()Lorg/jsoup/parser/Token;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    iget-object v0, p0, Lorg/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!--"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "-->"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
