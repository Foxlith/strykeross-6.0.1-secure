.class public Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstNode:[B

.field private firstNodeHeight:I

.field private heightOfNodes:Ljava/util/Vector;

.field private isFinished:Z

.field private isInitialized:Z

.field private maxHeight:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private seedActive:[B

.field private seedInitialized:Z

.field private seedNext:[B

.field private tailLength:I

.field private tailStack:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    const/4 p1, 0x0

    aget v0, p3, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    const/4 v0, 0x1

    aget v1, p3, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    const/4 v1, 0x2

    aget v2, p3, v1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    const/4 v2, 0x3

    aget v2, p3, v2

    if-ne v2, v0, :cond_0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    :goto_0
    const/4 v2, 0x4

    aget v2, p3, v2

    if-ne v2, v0, :cond_1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    goto :goto_1

    :cond_1
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    :goto_1
    const/4 v2, 0x5

    aget v2, p3, v2

    if-ne v2, v0, :cond_2

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    goto :goto_2

    :cond_2
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    :goto_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    move v2, p1

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    add-int/lit8 v4, v2, 0x6

    aget v4, p3, v4

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    aget-object p3, p2, p1

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    aget-object p3, p2, v0

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aget-object p3, p2, v1

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    :goto_4
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    add-int/lit8 v0, p1, 0x3

    aget-object v0, p2, v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    return-void
.end method

.method public getFirstNode()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    return-object v0
.end method

.method public getFirstNodeHeight()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    return v0
.end method

.method public getLowestNodeHeight()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    return v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSeedActive()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    aput-object v3, v0, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStatInt()[I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    aput v4, v1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    aput v2, v1, v4

    goto :goto_0

    :cond_0
    aput v3, v1, v4

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    aput v2, v1, v4

    goto :goto_1

    :cond_1
    aput v3, v1, v4

    :goto_1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    const/4 v4, 0x5

    if-eqz v0, :cond_2

    aput v2, v1, v4

    goto :goto_2

    :cond_2
    aput v3, v1, v4

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v3, v0, :cond_3

    add-int/lit8 v0, v3, 0x6

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public getTailStack()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 23
    .line 24
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    .line 25
    .line 26
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    .line 27
    .line 28
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 29
    .line 30
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "Seed "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 48
    .line 49
    const-string v3, " not initialized"

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public initializeSeed([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    return-void
.end method

.method public setFirstNode([B)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->initialize()V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Treehash    : "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 6
    .line 7
    add-int/lit8 v3, v3, 0x6

    .line 8
    .line 9
    const-string v4, " "

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aget v3, v3, v2

    .line 22
    .line 23
    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x3

    .line 33
    .line 34
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    aget-object v2, v2, v1

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    aget-object v3, v3, v1

    .line 55
    .line 56
    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v2, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    const-string v2, "null "

    .line 69
    .line 70
    invoke-static {v0, v2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const-string v1, "  "

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 84
    .line 85
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public update(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "No more update possible for treehash instance!"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_1

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Treehash instance not initialized before update"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    goto/16 :goto_2

    :cond_2
    move p1, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    shl-int/2addr v2, v0

    new-array v3, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-static {p2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2, v3, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    shl-int/2addr p1, v0

    new-array p2, p1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-static {v2, v1, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-static {v2, v1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p2, v1, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    :cond_4
    :goto_2
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    if-ne p1, p2, :cond_5

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    :cond_5
    return-void
.end method

.method public updateNextSeed(Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    return-void
.end method

.method public wasFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    return v0
.end method
