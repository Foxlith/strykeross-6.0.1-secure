.class public Lcom/airbnb/lottie/LottieConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieConfig$Builder;
    }
.end annotation


# instance fields
.field final cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field final disablePathInterpolatorCache:Z

.field final enableNetworkCache:Z

.field final enableSystraceMarkers:Z

.field final networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieConfig;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieConfig;->enableSystraceMarkers:Z

    iput-boolean p4, p0, Lcom/airbnb/lottie/LottieConfig;->enableNetworkCache:Z

    iput-boolean p5, p0, Lcom/airbnb/lottie/LottieConfig;->disablePathInterpolatorCache:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;ZZZLcom/airbnb/lottie/LottieConfig$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/LottieConfig;-><init>(Lcom/airbnb/lottie/network/LottieNetworkFetcher;Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;ZZZ)V

    return-void
.end method
