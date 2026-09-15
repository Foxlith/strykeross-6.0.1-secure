.class public final synthetic Lk4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln2/c;

.field public final synthetic c:Lf3/b;


# direct methods
.method public synthetic constructor <init>(Ln2/c;Lf3/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lk4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lk4/a;->b:Ln2/c;

    .line 7
    .line 8
    iput-object p2, p0, Lk4/a;->c:Lf3/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lk4/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lk4/a;->c:Lf3/b;

    .line 4
    .line 5
    iget-object v1, p0, Lk4/a;->b:Ln2/c;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Ln2/c;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lk4/b;

    .line 13
    .line 14
    check-cast p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const v2, 0x7f13007f

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v3, v0, Lf3/b;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    .line 42
    .line 43
    const/16 v4, 0x12

    .line 44
    .line 45
    invoke-direct {v3, p1, v0, v4}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/high16 v0, 0x1040000

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    iget-object p1, v1, Ln2/c;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lk4/b;

    .line 66
    .line 67
    check-cast p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v1, Lk4/f;

    .line 73
    .line 74
    new-instance v2, Lk4/h;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Lk4/h;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, p1, v0, v2}, Lk4/f;-><init>(Landroidx/fragment/app/Fragment;Lf3/b;Lk4/h;)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->h:Lk4/f;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->i:Landroidx/activity/result/c;

    .line 85
    .line 86
    iput-object p1, v1, Lk4/f;->f:Landroidx/activity/result/c;

    .line 87
    .line 88
    iget-object p1, v1, Lk4/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_1
    iget-object p1, v1, Ln2/c;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lk4/b;

    .line 97
    .line 98
    check-cast p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 99
    .line 100
    iget-object v1, p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 101
    .line 102
    const-string v2, "APPLY"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    const v2, 0x7f0800ae

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 116
    .line 117
    const v2, -0x109400

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Ljava/lang/Thread;

    .line 124
    .line 125
    new-instance v2, Ld4/d;

    .line 126
    .line 127
    const/4 v3, 0x7

    .line 128
    invoke-direct {v2, p1, v0, v3}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    const-string p1, "arsenal-apply"

    .line 132
    .line 133
    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
