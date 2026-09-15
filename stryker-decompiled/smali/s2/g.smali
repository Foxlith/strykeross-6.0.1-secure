.class public final synthetic Ls2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/coremanger/CoreManager;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/coremanger/CoreManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls2/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls2/g;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Ls2/g;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Ls2/g;->b:Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->i:Lcom/google/android/material/textfield/TextInputEditText;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-boolean v3, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->w:Z

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    const v0, 0x7f130146

    .line 47
    .line 48
    .line 49
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->i(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/Thread;

    .line 61
    .line 62
    new-instance v3, Ls2/i;

    .line 63
    .line 64
    invoke-direct {v3, v2, p1, v1}, Ls2/i;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v2, Lcom/zalexdev/stryker/coremanger/CoreManager;->u:Landroid/widget/TextView;

    .line 100
    .line 101
    const v3, 0x7f130155

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/lang/Thread;

    .line 108
    .line 109
    new-instance v3, Ls2/i;

    .line 110
    .line 111
    invoke-direct {v3, v2, p1, v0}, Ls2/i;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/coremanger/CoreManager;->h(Z)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lcom/zalexdev/stryker/coremanger/CoreManager;->h(Z)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
