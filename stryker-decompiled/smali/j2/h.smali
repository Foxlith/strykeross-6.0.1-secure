.class public final synthetic Lj2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/MainActivity;

.field public final synthetic b:Lu2/l;

.field public final synthetic c:I

.field public final synthetic d:La4/e;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;Lu2/l;ILa4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/h;->a:Lcom/zalexdev/stryker/MainActivity;

    iput-object p2, p0, Lj2/h;->b:Lu2/l;

    iput p3, p0, Lj2/h;->c:I

    iput-object p4, p0, Lj2/h;->d:La4/e;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v0, p0, Lj2/h;->a:Lcom/zalexdev/stryker/MainActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lj2/h;->b:Lu2/l;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v1, Lu2/l;->d:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v1

    .line 20
    iget v1, p0, Lj2/h;->c:I

    .line 21
    .line 22
    invoke-static {v2, v1}, Lcom/zalexdev/stryker/MainActivity;->f(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v1

    .line 29
    throw p1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    new-instance v2, Lj2/d;

    .line 32
    .line 33
    iget-object v3, p0, Lj2/h;->d:La4/e;

    .line 34
    .line 35
    invoke-direct {v2, v0, p1, v1, v3}, Lj2/d;-><init>(Lcom/zalexdev/stryker/MainActivity;ZLjava/lang/String;La4/e;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
