.class public final synthetic Ls2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/coremanger/CoreManager;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/coremanger/CoreManager;ZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Ls2/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls2/j;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 7
    .line 8
    iput-boolean p2, p0, Ls2/j;->c:Z

    .line 9
    .line 10
    iput-object p3, p0, Ls2/j;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ls2/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls2/j;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Ls2/j;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Ls2/j;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const v0, 0x7f130673

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0x7f130672

    .line 24
    .line 25
    .line 26
    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->i(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/zalexdev/stryker/coremanger/CoreManager;->d()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const v0, 0x7f130145

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const v0, 0x7f130144

    .line 53
    .line 54
    .line 55
    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->i(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/zalexdev/stryker/coremanger/CoreManager;->e()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
