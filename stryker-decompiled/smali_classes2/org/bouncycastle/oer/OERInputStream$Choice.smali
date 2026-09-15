.class public Lorg/bouncycastle/oer/OERInputStream$Choice;
.super Lorg/bouncycastle/oer/OERInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Choice"
.end annotation


# instance fields
.field final preamble:I

.field final tag:I

.field final tagClass:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->preamble:I

    if-ltz v0, :cond_3

    and-int/lit16 v1, v0, 0xc0

    iput v1, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0x3f

    and-int/2addr v0, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "expecting further tag bytes"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    return-void

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "expecting preamble byte of choice"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTag()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    return v0
.end method

.method public getTagClass()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    return v0
.end method

.method public isApplicationTagClass()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextSpecific()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivateTagClass()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUniversalTagClass()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CHOICE("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    if-eqz v1, :cond_3

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc0

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Private "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "ContextSpecific "

    goto :goto_0

    :cond_2
    const-string v1, "Application "

    goto :goto_0

    :cond_3
    const-string v1, "Universal "

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
