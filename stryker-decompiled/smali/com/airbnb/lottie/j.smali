.class public final synthetic Lcom/airbnb/lottie/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/j;->b:F

    iput p3, p0, Lcom/airbnb/lottie/j;->c:F

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/j;->b:F

    iget v1, p0, Lcom/airbnb/lottie/j;->c:F

    iget-object v2, p0, Lcom/airbnb/lottie/j;->a:Lcom/airbnb/lottie/LottieDrawable;

    invoke-static {v2, v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->g(Lcom/airbnb/lottie/LottieDrawable;FFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
