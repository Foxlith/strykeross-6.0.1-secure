.class public Lorg/bouncycastle/oer/OERInputStream$Sequence;
.super Lorg/bouncycastle/oer/OERInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sequence"
.end annotation


# instance fields
.field private final extensionFlagSet:Z

.field private final optionalPresent:[Z

.field final preamble:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZZ)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    new-array p1, v0, [Z

    iput-object p1, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    if-ltz p3, :cond_7

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    and-int/lit16 v2, p3, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    const/4 v2, 0x7

    if-eqz p4, :cond_2

    const/4 p4, 0x6

    goto :goto_1

    :cond_2
    move p4, v2

    :goto_1
    new-array p2, p2, [Z

    iput-object p2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    move p2, v0

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    array-length v3, v3

    if-ge p2, v3, :cond_6

    if-gez p4, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p3

    if-ltz p3, :cond_3

    move p4, v2

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "expecting mask byte sequence"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    invoke-static {}, Lorg/bouncycastle/oer/OERInputStream;->access$100()[I

    move-result-object v4

    aget v4, v4, p4

    and-int/2addr v4, p3

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    aput-boolean v4, v3, p2

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "expecting preamble byte of sequence"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return v0
.end method

.method public hasOptional(I)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SEQ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ext "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->optionalPresent:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v2, "0"

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
