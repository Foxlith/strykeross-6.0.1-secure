.class public final synthetic Lcom/airbnb/lottie/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/o;->a:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/o;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/o;->d:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/o;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/airbnb/lottie/o;->d:Z

    iget-object v2, p0, Lcom/airbnb/lottie/o;->a:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, p0, Lcom/airbnb/lottie/o;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->i(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
