.class public Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputDataCtrPrefix:[B

.field private fixedInputData_afterCtr:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v3, v1, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_0

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v6

    ushr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    :cond_2
    array-length v3, v2

    sub-int/2addr v3, v5

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    :cond_3
    array-length v3, v2

    sub-int/2addr v3, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 2
    .line 3
    add-int v1, v0, p3

    .line 4
    .line 5
    if-ltz v1, :cond_2

    .line 6
    .line 7
    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    .line 12
    .line 13
    rem-int/2addr v0, v1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 20
    .line 21
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    .line 22
    .line 23
    rem-int v2, v0, v1

    .line 24
    .line 25
    rem-int/2addr v0, v1

    .line 26
    sub-int/2addr v1, v0

    .line 27
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    .line 32
    .line 33
    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 37
    .line 38
    add-int/2addr v1, v0

    .line 39
    iput v1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 40
    .line 41
    sub-int v1, p3, v0

    .line 42
    .line 43
    :goto_0
    add-int/2addr p2, v0

    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iput v2, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    .line 65
    .line 66
    sub-int/2addr v1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return p3

    .line 69
    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p3, "Current KDFCTR may only be used for "

    .line 74
    .line 75
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p3, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    .line 79
    .line 80
    const-string v0, " bytes"

    .line 81
    .line 82
    invoke-static {p2, p3, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/crypto/params/KDFCounterParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterSuffix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KDFCounterParameters;->getR()I

    move-result p1

    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    sget-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
