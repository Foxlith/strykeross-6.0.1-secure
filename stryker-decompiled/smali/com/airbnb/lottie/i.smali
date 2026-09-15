.class public final synthetic Lcom/airbnb/lottie/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/airbnb/lottie/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/LottieDrawable;

    .line 7
    .line 8
    iput p2, p0, Lcom/airbnb/lottie/i;->c:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/i;->a:I

    iget v1, p0, Lcom/airbnb/lottie/i;->c:F

    iget-object v2, p0, Lcom/airbnb/lottie/i;->b:Lcom/airbnb/lottie/LottieDrawable;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->b(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->d(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->e(Lcom/airbnb/lottie/LottieDrawable;FLcom/airbnb/lottie/LottieComposition;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
