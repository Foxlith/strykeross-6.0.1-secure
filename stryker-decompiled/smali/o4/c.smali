.class public final synthetic Lo4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo4/u;


# direct methods
.method public synthetic constructor <init>(Lo4/u;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/c;->b:Lo4/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lo4/c;->a:I

    .line 2
    .line 3
    const v0, 0x104000a

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lo4/c;->b:Lo4/u;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 15
    .line 16
    iget-object v1, v1, Lo4/u;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "WPS Locked"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "Stryker detected that this network is WPS Locked. This means that you can\'t use WPS to connect to this network. You can still try wps attacks, but they will fail."

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 34
    .line 35
    const/16 v2, 0xb

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 52
    .line 53
    iget-object v1, v1, Lo4/u;->b:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "PMKID Capture"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "Pmkid capture are included into HS Capture attack. Please use HS Capture instead of PMKID Capture."

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v1, Lcom/stryker/terminal/setup/a;

    .line 71
    .line 72
    const/16 v2, 0xc

    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Lcom/stryker/terminal/setup/a;

    .line 82
    .line 83
    const/16 v1, 0xd

    .line 84
    .line 85
    invoke-direct {v0, v1}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const/high16 v1, 0x1040000

    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
