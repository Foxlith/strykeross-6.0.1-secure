.class public Lcom/airbnb/lottie/model/LottieCompositionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;


# instance fields
.field private final cache:Ln/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/f;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/model/LottieCompositionCache;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ln/f;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Ln/f;

    return-void
.end method

.method public static getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Ln/f;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Ln/f;->c(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Ln/f;

    invoke-virtual {v0, p1}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Ln/f;

    invoke-virtual {v0, p1, p2}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Ln/f;

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput p1, v0, Ln/f;->c:I

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v0, p1}, Ln/f;->c(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "maxSize <= 0"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
