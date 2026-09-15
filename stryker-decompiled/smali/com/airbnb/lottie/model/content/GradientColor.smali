.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    return-void
.end method

.method private getColorForPosition(F)I
    .locals 5

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    aget p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    return p1

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    aget v2, v2, v0

    aget v3, v1, v3

    aget v0, v1, v0

    sub-float/2addr p1, v4

    sub-float/2addr v2, v4

    div-float/2addr p1, v2

    invoke-static {p1, v3, v0}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->getColorForPosition(F)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    return-object v1
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    array-length v0, v0

    return v0
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 16
    .line 17
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 18
    .line 19
    aget v2, v2, v0

    .line 20
    .line 21
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 22
    .line 23
    aget v3, v3, v0

    .line 24
    .line 25
    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    aput v2, v1, v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 32
    .line 33
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 34
    .line 35
    aget v2, v2, v0

    .line 36
    .line 37
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 38
    .line 39
    aget v3, v3, v0

    .line 40
    .line 41
    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    aput v2, v1, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Cannot interpolate between gradients. Lengths vary ("

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 61
    .line 62
    array-length p1, p1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, " vs "

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 72
    .line 73
    array-length p1, p1

    .line 74
    const-string p2, ")"

    .line 75
    .line 76
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p3
.end method
