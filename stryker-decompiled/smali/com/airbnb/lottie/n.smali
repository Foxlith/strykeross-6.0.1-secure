.class public final synthetic Lcom/airbnb/lottie/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/airbnb/lottie/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/LottieDrawable;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/airbnb/lottie/n;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/n;->a:I

    iget-object v1, p0, Lcom/airbnb/lottie/n;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->b:Lcom/airbnb/lottie/LottieDrawable;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->o(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->f(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->k(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
