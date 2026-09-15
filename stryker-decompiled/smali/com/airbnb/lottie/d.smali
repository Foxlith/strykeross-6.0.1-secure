.class public final synthetic Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/d;->a:I

    iput-object p3, p0, Lcom/airbnb/lottie/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/d;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/airbnb/lottie/d;->a:I

    iput-object p1, p0, Lcom/airbnb/lottie/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/d;->a:I

    iget-object v1, p0, Lcom/airbnb/lottie/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/d;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/io/InputStream;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->h(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->j(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->d(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
