.class public final synthetic Lm4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/vnc/VNCFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lm4/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lm4/c;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget p1, p0, Lm4/c;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lm4/c;->b:Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 40
    .line 41
    const-string v1, "Starting uninstallation\u2026"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ln3/i;

    .line 63
    .line 64
    iget-object v2, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 65
    .line 66
    iget-object v3, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 67
    .line 68
    const-string v4, "/CORE/VNC/uninstall.sh"

    .line 69
    .line 70
    const/4 v5, 0x2

    .line 71
    move-object v0, p1

    .line 72
    move-object v1, p2

    .line 73
    invoke-direct/range {v0 .. v5}, Ln3/i;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p2, Lcom/zalexdev/stryker/vnc/VNCFragment;->G:Ln3/i;

    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance p1, Ljava/lang/Thread;

    .line 85
    .line 86
    new-instance v0, Lm4/a;

    .line 87
    .line 88
    const/16 v1, 0x9

    .line 89
    .line 90
    invoke-direct {v0, p2, v1}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
