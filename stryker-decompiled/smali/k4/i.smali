.class public final synthetic Lk4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lk4/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lk4/i;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lk4/i;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk4/i;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 9
    .line 10
    new-instance v0, Lf/q0;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v2}, Lf/q0;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lf/q0;->H()Le3/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 24
    .line 25
    invoke-virtual {v2}, Lv1/c;->g()Lf3/c;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Lk4/j;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v4, v1, v0, v2, v5}, Lk4/j;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;Le3/b;Lf3/c;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    iget-object v0, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 44
    .line 45
    invoke-virtual {v0}, Lv1/c;->l()V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 49
    .line 50
    invoke-virtual {v0}, Lv1/c;->k()V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->c:Lv1/c;

    .line 54
    .line 55
    invoke-virtual {v0}, Lv1/c;->g()Lf3/c;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v2, Lf/q0;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Lf/q0;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lf/q0;->H()Le3/b;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v4, Lk4/j;

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-direct {v4, v1, v2, v0, v5}, Lk4/j;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;Le3/b;Lf3/c;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
