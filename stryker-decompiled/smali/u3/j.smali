.class public final synthetic Lu3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lu3/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/j;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lu3/j;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lu3/j;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->k:Landroid/widget/EditText;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 19
    .line 20
    invoke-virtual {p1}, Lv1/t;->i()Lv1/t;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lu3/m;

    .line 25
    .line 26
    invoke-direct {v0, v2, p1, v1}, Lu3/m;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    iget-object p1, v2, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 34
    .line 35
    invoke-virtual {p1}, Lv1/t;->i()Lv1/t;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Lu3/m;

    .line 40
    .line 41
    invoke-direct {v1, v2, p1, v0}, Lu3/m;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->E:I

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance p1, Lu3/k;

    .line 54
    .line 55
    invoke-direct {p1, v2, v0}, Lu3/k;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/zalexdev/stryker/logger/LoggerFragment;->f(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/logger/LoggerFragment;->E:I

    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    instance-of p1, p1, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/u0;->I()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 89
    .line 90
    invoke-direct {v0}, Lcom/zalexdev/stryker/settings/SettingsNew;-><init>()V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    const v3, 0x7f0a0205

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
