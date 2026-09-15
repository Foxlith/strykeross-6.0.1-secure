.class public Lcom/airbnb/lottie/Lottie;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Lcom/airbnb/lottie/LottieConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig;->networkFetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    invoke-static {v0}, Lcom/airbnb/lottie/L;->setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    invoke-static {v0}, Lcom/airbnb/lottie/L;->setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->enableSystraceMarkers:Z

    invoke-static {v0}, Lcom/airbnb/lottie/L;->setTraceEnabled(Z)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->enableNetworkCache:Z

    invoke-static {v0}, Lcom/airbnb/lottie/L;->setNetworkCacheEnabled(Z)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieConfig;->enableNetworkCache:Z

    invoke-static {v0}, Lcom/airbnb/lottie/L;->setNetworkCacheEnabled(Z)V

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieConfig;->disablePathInterpolatorCache:Z

    invoke-static {p0}, Lcom/airbnb/lottie/L;->setDisablePathInterpolatorCache(Z)V

    return-void
.end method
