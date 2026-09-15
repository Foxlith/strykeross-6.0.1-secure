.class public final synthetic Ll3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln2/c;

.field public final synthetic c:Lj3/a;


# direct methods
.method public synthetic constructor <init>(Ln2/c;Lj3/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ll3/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/h;->b:Ln2/c;

    .line 7
    .line 8
    iput-object p2, p0, Ll3/h;->c:Lj3/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Ll3/h;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ll3/h;->c:Lj3/a;

    .line 4
    .line 5
    iget-object v1, p0, Ll3/h;->b:Ln2/c;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Ln2/c;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ll3/i;

    .line 13
    .line 14
    check-cast p1, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 15
    .line 16
    const v1, 0x7f13023f

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f130237

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const v3, 0x7f13023d

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const v4, 0x7f13023c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v0, Lj3/a;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ll3/b;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-direct {v3, p1, v0, v4}, Ll3/b;-><init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;Lj3/a;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/high16 v0, 0x1040000

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_0
    iget-object p1, v1, Ln2/c;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Ll3/i;

    .line 87
    .line 88
    check-cast p1, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f(Lj3/a;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
