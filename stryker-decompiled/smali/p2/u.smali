.class public final synthetic Lp2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/RunExploitSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/RunExploitSheet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/u;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/u;->b:Lcom/zalexdev/stryker/arsenal/RunExploitSheet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lp2/u;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/u;->b:Lcom/zalexdev/stryker/arsenal/RunExploitSheet;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->j:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f1300ae

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->c:Lcom/zalexdev/stryker/custom/Exploit;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f1300ad

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v1, Lcom/stryker/terminal/a;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {v1, v0, v2}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f1300ac

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/high16 v0, 0x1040000

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "{"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    const-string v1, "}"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->a:Ll4/l;

    .line 99
    .line 100
    const v1, 0x7f1300af

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->c:Lcom/zalexdev/stryker/custom/Exploit;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Exploit;->getSuccesspatern()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v2, Lv2/a;

    .line 118
    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    const-string v1, ""

    .line 122
    .line 123
    :cond_1
    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->a:Ll4/l;

    .line 124
    .line 125
    invoke-direct {v2, v1, p1, v3}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ll4/l;)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    new-array p1, p1, [Ljava/lang/Void;

    .line 130
    .line 131
    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    .line 133
    .line 134
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->a:Ll4/l;

    .line 135
    .line 136
    const v1, 0x7f1300b1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 147
    .line 148
    .line 149
    :goto_0
    return-void

    .line 150
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->b:Landroid/content/Context;

    .line 151
    .line 152
    const-string v1, "clipboard"

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/content/ClipboardManager;

    .line 159
    .line 160
    if-nez p1, :cond_2

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "stryker.exploit"

    .line 170
    .line 171
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->a:Ll4/l;

    .line 179
    .line 180
    const v1, 0x7f1300aa

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_1
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
