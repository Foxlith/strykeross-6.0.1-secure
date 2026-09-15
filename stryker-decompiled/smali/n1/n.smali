.class public final synthetic Ln1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Ln1/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ln1/n;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ln1/n;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Ln1/n;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ln1/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ln1/n;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Ln1/n;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Ln1/n;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Landroid/content/Context;

    .line 13
    .line 14
    check-cast v2, Ljava/util/zip/ZipInputStream;

    .line 15
    .line 16
    invoke-static {v3, v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->k(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_0
    check-cast v3, Ln1/p;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v0, v3, Ln1/p;->e:Landroidx/work/impl/WorkDatabase;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->w()Lv1/t;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v1}, Lv1/t;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
