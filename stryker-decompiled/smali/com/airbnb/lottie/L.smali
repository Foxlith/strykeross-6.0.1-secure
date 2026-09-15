.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider; = null

.field private static depthPastMaxDepth:I = 0x0

.field private static disablePathInterpolatorCache:Z = true

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher; = null

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache; = null

.field private static networkCacheEnabled:Z = true

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher; = null

.field private static sections:[Ljava/lang/String; = null

.field private static startTimeNs:[J = null

.field private static traceDepth:I = 0x0

.field private static traceEnabled:Z = false


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 7
    .line 8
    const/16 v1, 0x14

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    sget p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 13
    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    sput p0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 20
    .line 21
    aput-object p0, v1, v0

    .line 22
    .line 23
    sget-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    aput-wide v2, v1, v0

    .line 30
    .line 31
    sget v0, Ld0/l;->a:I

    .line 32
    .line 33
    invoke-static {p0}, Ld0/k;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget p0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 37
    .line 38
    add-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    sput p0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 41
    .line 42
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 4

    .line 1
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 26
    .line 27
    aget-object v0, v1, v0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget p0, Ld0/l;->a:I

    .line 36
    .line 37
    invoke-static {}, Ld0/k;->b()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sget-object p0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 45
    .line 46
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 47
    .line 48
    aget-wide v2, p0, v2

    .line 49
    .line 50
    sub-long/2addr v0, v2

    .line 51
    long-to-float p0, v0

    .line 52
    const v0, 0x49742400    # 1000000.0f

    .line 53
    .line 54
    .line 55
    div-float/2addr p0, v0

    .line 56
    return p0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "Unbalanced trace call "

    .line 60
    .line 61
    const-string v2, ". Expected "

    .line 62
    .line 63
    invoke-static {v1, p0, v2}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 68
    .line 69
    sget v2, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 70
    .line 71
    aget-object v1, v1, v2

    .line 72
    .line 73
    const-string v2, "."

    .line 74
    .line 75
    invoke-static {p0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v0, "Can\'t end trace section. There are none."

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static getDisablePathInterpolatorCache()Z
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    return v0
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 3

    sget-boolean v0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_3

    const-class v1, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    if-nez v0, :cond_2

    new-instance v0, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v2, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/airbnb/lottie/L$1;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/L$1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_2

    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object p0

    sget-object v2, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v2}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    return-void
.end method

.method public static setDisablePathInterpolatorCache(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/lottie/L;->disablePathInterpolatorCache:Z

    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    return-void
.end method

.method public static setNetworkCacheEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/airbnb/lottie/L;->networkCacheEnabled:Z

    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 1

    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x14

    new-array v0, p0, [Ljava/lang/String;

    sput-object v0, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    new-array p0, p0, [J

    sput-object p0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    :cond_1
    return-void
.end method
