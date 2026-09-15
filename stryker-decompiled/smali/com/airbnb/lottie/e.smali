.class public final synthetic Lcom/airbnb/lottie/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/airbnb/lottie/e;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/e;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/airbnb/lottie/e;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/airbnb/lottie/e;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/e;->a:I

    iget-object v1, p0, Lcom/airbnb/lottie/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/airbnb/lottie/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/e;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v3, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {v1, v3, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
