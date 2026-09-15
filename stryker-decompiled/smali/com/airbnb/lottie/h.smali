.class public final synthetic Lcom/airbnb/lottie/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/h;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/h;->b:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/h;->c:I

    iput-object p4, p0, Lcom/airbnb/lottie/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/h;->c:I

    iget-object v1, p0, Lcom/airbnb/lottie/h;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/h;->a:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/airbnb/lottie/h;->b:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->d(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
