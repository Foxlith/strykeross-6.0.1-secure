.class public final synthetic Lu3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;

.field public final synthetic c:Lv1/t;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lu3/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/m;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lu3/m;->c:Lv1/t;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lu3/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu3/m;->c:Lv1/t;

    .line 4
    .line 5
    iget-object v2, p0, Lu3/m;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->E:I

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->d(Lv1/t;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v3, Lu3/q;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v3, v2, v0, v4}, Lu3/q;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Ljava/io/File;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->E:I

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->d(Lv1/t;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v3, Lu3/q;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-direct {v3, v2, v0, v4}, Lu3/q;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Ljava/io/File;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
