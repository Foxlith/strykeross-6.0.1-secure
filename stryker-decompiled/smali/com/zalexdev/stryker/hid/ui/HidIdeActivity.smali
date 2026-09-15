.class public Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;
.super Lf/q;
.source "SourceFile"

# interfaces
.implements Lm3/b;


# static fields
.field public static final synthetic M:I


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Le3/a;

.field public G:Z

.field public H:Z

.field public I:Landroidx/activity/result/c;

.field public J:Landroidx/activity/result/c;

.field public K:Ljava/lang/String;

.field public final L:Le0/j;

.field public a:Ll4/l;

.field public b:Lh3/c;

.field public c:Lv1/e;

.field public d:Li3/c;

.field public e:Lm3/c;

.field public f:Lcom/google/android/material/appbar/MaterialToolbar;

.field public g:Lcom/google/android/material/textview/MaterialTextView;

.field public h:Lcom/google/android/material/textview/MaterialTextView;

.field public i:Lcom/google/android/material/textview/MaterialTextView;

.field public j:Lcom/google/android/material/textview/MaterialTextView;

.field public k:Lcom/google/android/material/textview/MaterialTextView;

.field public l:Lcom/google/android/material/textview/MaterialTextView;

.field public m:Lcom/google/android/material/textview/MaterialTextView;

.field public n:Lcom/google/android/material/textview/MaterialTextView;

.field public p:Lcom/google/android/material/card/MaterialCardView;

.field public q:Lcom/google/android/material/card/MaterialCardView;

.field public r:Lcom/google/android/material/button/MaterialButton;

.field public s:Lcom/google/android/material/button/MaterialButton;

.field public t:Lcom/google/android/material/button/MaterialButton;

.field public u:Lcom/google/android/material/button/MaterialButton;

.field public v:Lcom/google/android/material/button/MaterialButton;

.field public w:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    new-instance v0, Le0/j;

    invoke-direct {v0, p0}, Le0/j;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->L:Le0/j;

    return-void
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f130234

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1302cc

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Ll3/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ll3/f;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    const v2, 0x7f1302c8

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f1302c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public final h(Le3/b;)V
    .locals 11

    .line 1
    sget-object v0, Le3/a;->a:Le3/a;

    .line 2
    .line 3
    iget-object v1, p1, Le3/b;->j:Le3/a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-boolean v4, p1, Le3/b;->e:Z

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iput-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->E:Z

    .line 17
    .line 18
    iput-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->F:Le3/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const v1, -0x109400

    .line 25
    .line 26
    .line 27
    const v5, 0x7f0800ae

    .line 28
    .line 29
    .line 30
    const-string v6, "?"

    .line 31
    .line 32
    const v7, -0x39d7d8

    .line 33
    .line 34
    .line 35
    const v8, 0x7f0800ac

    .line 36
    .line 37
    .line 38
    packed-switch v0, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    move v8, v2

    .line 42
    move-object v0, v6

    .line 43
    move-object v7, v0

    .line 44
    goto :goto_4

    .line 45
    :pswitch_0
    const-string v0, "SELINUX DENIES"

    .line 46
    .line 47
    const-string v1, "SELINUX"

    .line 48
    .line 49
    :goto_1
    move v5, v8

    .line 50
    :goto_2
    move v8, v2

    .line 51
    move v10, v7

    .line 52
    move-object v7, v1

    .line 53
    move v1, v10

    .line 54
    goto :goto_4

    .line 55
    :pswitch_1
    const-string v0, "/dev/hidg0 MISSING"

    .line 56
    .line 57
    const-string v7, "ARSENAL"

    .line 58
    .line 59
    move v8, v3

    .line 60
    goto :goto_4

    .line 61
    :pswitch_2
    const-string v0, "NO UDC"

    .line 62
    .line 63
    :goto_3
    move v1, v7

    .line 64
    move v5, v8

    .line 65
    move-object v7, v0

    .line 66
    move v8, v2

    .line 67
    goto :goto_4

    .line 68
    :pswitch_3
    const-string v0, "CONFIGFS MISSING"

    .line 69
    .line 70
    const-string v1, "CFGFS"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_4
    const-string v0, "KERNEL TOO OLD"

    .line 74
    .line 75
    const-string v1, "KERNEL"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_5
    const-string v0, "NO ROOT"

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :pswitch_6
    const-string v0, "READY \u00b7 KEYBOARD BOUND"

    .line 82
    .line 83
    const-string v1, "READY"

    .line 84
    .line 85
    const v5, 0x7f0800ad

    .line 86
    .line 87
    .line 88
    const v7, -0xd182ce

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_4
    iget-object v9, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 93
    .line 94
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    .line 113
    .line 114
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->v:Lcom/google/android/material/button/MaterialButton;

    .line 123
    .line 124
    const/16 v1, 0x8

    .line 125
    .line 126
    if-eqz v8, :cond_1

    .line 127
    .line 128
    move v5, v2

    .line 129
    goto :goto_5

    .line 130
    :cond_1
    move v5, v1

    .line 131
    :goto_5
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->n:Lcom/google/android/material/textview/MaterialTextView;

    .line 135
    .line 136
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 137
    .line 138
    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v7, p1, Le3/b;->b:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-eqz v8, :cond_2

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_2
    move-object v6, v7

    .line 150
    :goto_6
    aput-object v6, v1, v2

    .line 151
    .line 152
    iget-object v2, p1, Le3/b;->d:Ljava/lang/String;

    .line 153
    .line 154
    if-nez v2, :cond_3

    .line 155
    .line 156
    const-string v2, "\u2014"

    .line 157
    .line 158
    :cond_3
    aput-object v2, v1, v3

    .line 159
    .line 160
    iget-boolean v2, p1, Le3/b;->c:Z

    .line 161
    .line 162
    const-string v3, "\u2717 unavailable"

    .line 163
    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    const-string v2, "\u2713 mounted"

    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_4
    move-object v2, v3

    .line 170
    :goto_7
    const/4 v6, 0x2

    .line 171
    aput-object v2, v1, v6

    .line 172
    .line 173
    const-string v2, "\u2717 missing"

    .line 174
    .line 175
    const-string v6, "\u2713 present"

    .line 176
    .line 177
    if-eqz v4, :cond_5

    .line 178
    .line 179
    move-object v4, v6

    .line 180
    goto :goto_8

    .line 181
    :cond_5
    move-object v4, v2

    .line 182
    :goto_8
    const/4 v7, 0x3

    .line 183
    aput-object v4, v1, v7

    .line 184
    .line 185
    iget-boolean v4, p1, Le3/b;->f:Z

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    move-object v2, v6

    .line 190
    :cond_6
    const/4 v4, 0x4

    .line 191
    aput-object v2, v1, v4

    .line 192
    .line 193
    iget-boolean v2, p1, Le3/b;->g:Z

    .line 194
    .line 195
    const-string v4, "\u2713 supported"

    .line 196
    .line 197
    if-eqz v2, :cond_7

    .line 198
    .line 199
    move-object v2, v4

    .line 200
    goto :goto_9

    .line 201
    :cond_7
    move-object v2, v3

    .line 202
    :goto_9
    const/4 v6, 0x5

    .line 203
    aput-object v2, v1, v6

    .line 204
    .line 205
    iget-boolean v2, p1, Le3/b;->h:Z

    .line 206
    .line 207
    if-eqz v2, :cond_8

    .line 208
    .line 209
    move-object v3, v4

    .line 210
    :cond_8
    const/4 v2, 0x6

    .line 211
    aput-object v3, v1, v2

    .line 212
    .line 213
    iget-boolean p1, p1, Le3/b;->i:Z

    .line 214
    .line 215
    if-eqz p1, :cond_9

    .line 216
    .line 217
    const-string p1, "enforcing"

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_9
    const-string p1, "permissive"

    .line 221
    .line 222
    :goto_a
    const/4 v2, 0x7

    .line 223
    aput-object p1, v1, v2

    .line 224
    .line 225
    const-string p1, "kernel        : %s\nudc           : %s\nconfigfs      : %s\n/dev/hidg0    : %s\n/dev/hidg1    : %s\nmass storage  : %s\nrndis         : %s\nselinux       : %s"

    .line 226
    .line 227
    invoke-static {v5, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final j(Lg3/e;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->C:Ljava/lang/String;

    iget-object p1, p1, Lg3/e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v2, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "s"

    :goto_0
    aput-object p1, v3, v0

    const p1, 0x7f130221

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    const v0, 0x7f0800ad

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    const v0, -0xd182ce

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->setErrorLine(I)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s()V

    return-void
.end method

.method public final k()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->d:Li3/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    iget-object v3, v0, Li3/c;->a:Landroid/content/res/AssetManager;

    .line 13
    .line 14
    const-string v4, "hid/keymap"

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    array-length v4, v3

    .line 24
    move v5, v2

    .line 25
    :goto_0
    if-ge v5, v4, :cond_3

    .line 26
    .line 27
    aget-object v6, v3, v5

    .line 28
    .line 29
    const-string v7, ".json"

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    add-int/lit8 v7, v7, -0x5

    .line 43
    .line 44
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v6}, Li3/c;->a(Ljava/lang/String;)Li3/b;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    iget-object v7, v6, Li3/b;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v6, v6, Li3/b;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 71
    .line 72
    const-string v1, "No keymap layouts bundled"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    new-array v3, v3, [Ljava/lang/String;

    .line 92
    .line 93
    move v4, v2

    .line 94
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ge v2, v5, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Ljava/lang/String;

    .line 105
    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v7, "  \u00b7  "

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    aput-object v6, v3, v2

    .line 133
    .line 134
    iget-object v6, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    move v4, v2

    .line 143
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 149
    .line 150
    .line 151
    const v2, 0x7f130230

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    .line 159
    .line 160
    const/16 v5, 0xb

    .line 161
    .line 162
    invoke-direct {v2, p0, v0, v5}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/high16 v1, 0x1040000

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final l()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13024a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1302cb

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v1, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    const-string v1, "PROBING\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    const v2, -0x109400

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    const-string v3, "\u2026"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ll3/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ll3/e;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    const-string v2, "ide-cap-probe"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 16
    .line 17
    const-string v1, "Editor is empty"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const v1, 0x7f1302c7

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-boolean v3, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->H:Z

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->c:Lv1/e;

    .line 50
    .line 51
    invoke-virtual {v2, v1, v0}, Lv1/e;->n(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iput-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    .line 58
    .line 59
    iput-boolean v4, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->G:Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 62
    .line 63
    const v1, 0x7f13024d

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, -0x1

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 79
    .line 80
    const v1, 0x7f13024c

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :cond_2
    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 92
    .line 93
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    const v3, 0x7f13024a

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Landroid/widget/EditText;

    .line 107
    .line 108
    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iget-object v5, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v5}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    const-string v5, ""

    .line 132
    .line 133
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .line 154
    const/high16 v6, 0x41c00000    # 24.0f

    .line 155
    .line 156
    mul-float/2addr v5, v6

    .line 157
    float-to-int v5, v5

    .line 158
    div-int/lit8 v6, v5, 0x2

    .line 159
    .line 160
    invoke-virtual {v1, v5, v6, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 167
    .line 168
    invoke-direct {v2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    const v4, 0x7f13024e

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v2, Lcom/stryker/terminal/ui/customize/b;

    .line 183
    .line 184
    const/4 v4, 0x5

    .line 185
    invoke-direct {v2, p0, v3, v0, v4}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    const v0, 0x7f130249

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/high16 v1, 0x1040000

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->w:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s:Lcom/google/android/material/button/MaterialButton;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->b:Lh3/c;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v7, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->L:Le0/j;

    .line 28
    .line 29
    iget-object v1, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance p1, Ld3/d;

    .line 42
    .line 43
    sget-object v0, Lh3/a;->e:Lh3/a;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    const-string v3, "Another script is already running"

    .line 47
    .line 48
    invoke-direct {p1, v0, v3, v2, v1}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, p1}, Le0/j;->b(Ld3/d;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 56
    .line 57
    new-instance v2, Lj2/b;

    .line 58
    .line 59
    const/4 v8, 0x7

    .line 60
    move-object v3, v2

    .line 61
    move-object v4, v0

    .line 62
    move-object v5, p1

    .line 63
    invoke-direct/range {v3 .. v8}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    const-string p1, "stryker-hid"

    .line 67
    .line 68
    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 72
    .line 73
    iget-object p1, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/a;->z(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    const v1, 0x7f06007a

    .line 1
    invoke-static {p0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 3
    new-instance v1, Landroidx/core/view/w2;

    .line 4
    invoke-static {p1}, Landroidx/core/view/z1;->l(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/core/view/w2;-><init>(Landroid/view/WindowInsetsController;)V

    iput-object p1, v1, Landroidx/core/view/w2;->f:Landroid/view/Window;

    goto :goto_1

    :cond_0
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 5
    new-instance v2, Landroidx/core/view/u2;

    .line 6
    invoke-direct {v2, p1, v1}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 7
    :cond_1
    new-instance v2, Landroidx/core/view/t2;

    .line 8
    invoke-direct {v2, p1, v1}, Landroidx/core/view/s2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :goto_1
    invoke-virtual {v1, v0}, Ld/d;->q(Z)V

    const p1, 0x7f0d001f

    .line 10
    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    new-instance p1, Ll4/l;

    invoke-direct {p1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    new-instance p1, Lh3/c;

    invoke-direct {p1, p0}, Lh3/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->b:Lh3/c;

    new-instance p1, Lv1/e;

    invoke-direct {p1, p0}, Lv1/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->c:Lv1/e;

    new-instance p1, Li3/c;

    invoke-direct {p1, p0}, Li3/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->d:Li3/c;

    const p1, 0x7f0a02cb

    .line 11
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    const p1, 0x7f0a02c2

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02c3

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02c9

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02b7

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02c4

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->k:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02bf

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02ba

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02b6

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->n:Lcom/google/android/material/textview/MaterialTextView;

    const p1, 0x7f0a02be

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p:Lcom/google/android/material/card/MaterialCardView;

    const p1, 0x7f0a02b9

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q:Lcom/google/android/material/card/MaterialCardView;

    const p1, 0x7f0a02c7

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02ca

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02bb

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->t:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02c8

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->u:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02b4

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->v:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0a02c5

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->w:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const p1, 0x7f0a02c0

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 12
    invoke-virtual {p0, p1}, Lf/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object p1

    invoke-virtual {p1}, Lf/b;->n()V

    :cond_2
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v1, Ll3/c;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    const v1, 0x7f0f0001

    invoke-virtual {p1, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->inflateMenu(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v1, Ll3/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ll3/d;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/o4;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Ll3/c;

    const/16 v3, 0xc

    invoke-direct {v1, p0, v3}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->u:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ll3/c;

    const/16 v3, 0xd

    invoke-direct {v1, p0, v3}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance p1, Lm3/c;

    invoke-direct {p1, p0}, Lm3/c;-><init>(Lm3/b;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    new-instance v1, Lm3/a;

    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    new-instance v1, Ls2/k;

    invoke-direct {v1, p0, v2}, Ls2/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 16
    new-instance v1, Ll3/c;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ll3/c;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->t:Lcom/google/android/material/button/MaterialButton;

    .line 17
    new-instance v1, Ll3/c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02bd

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ll3/c;

    invoke-direct {v1, p0, v0}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02bc

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ll3/c;

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02b5

    .line 18
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ll3/c;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02b8

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ll3/c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->v:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Ll3/c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 19
    new-instance v1, Ll3/c;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Ll3/c;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    new-instance v1, Ll3/c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ll3/c;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance p1, Ld/c;

    invoke-direct {p1, v3}, Ld/c;-><init>(I)V

    new-instance v1, Ll3/d;

    invoke-direct {v1, p0, v3}, Ll3/d;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p0, p1, v1}, Landroidx/activity/h;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->I:Landroidx/activity/result/c;

    new-instance p1, Ld/b;

    invoke-direct {p1}, Ld/b;-><init>()V

    new-instance v1, Ll3/d;

    invoke-direct {v1, p0, v0}, Ll3/d;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    invoke-virtual {p0, p1, v1}, Landroidx/activity/h;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->J:Landroidx/activity/result/c;

    .line 21
    invoke-virtual {p0}, Landroidx/activity/h;->getOnBackPressedDispatcher()Landroidx/activity/p;

    move-result-object p1

    new-instance v1, Landroidx/fragment/app/n0;

    invoke-direct {v1, p0, v0, v0}, Landroidx/fragment/app/n0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, p0, v1}, Landroidx/activity/p;->a(Landroidx/lifecycle/t;Landroidx/fragment/app/n0;)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v2, "stryker.hid.ide.name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    const-string v1, "stryker.hid.ide.body"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    move-object p1, v2

    goto :goto_3

    :cond_5
    const p1, 0x7f1302c7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->H:Z

    if-eqz v1, :cond_7

    iput-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    const-string p1, ""

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    :goto_5
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    const-string v0, "hid_layout"

    invoke-virtual {p1, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_8
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->d:Li3/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Li3/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "en"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "us"

    if-eqz v3, :cond_a

    const-string p1, "gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move-object p1, v4

    :goto_6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    const-string v0, "fr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    const-string v0, "es"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "it"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v4, v0

    :cond_11
    iput-object v4, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    :cond_12
    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->y:Ljava/lang/String;

    .line 24
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    .line 25
    invoke-virtual {p1}, Lm3/c;->a()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->m()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf/q;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->e:Lm3/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lm3/c;->b:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v0, v0, Lm3/c;->c:Landroidx/activity/b;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->b:Lh3/c;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->b:Lh3/c;

    .line 32
    .line 33
    iget-object v1, v0, Lh3/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lg3/c;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v1, Lg3/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, v0, Lh3/c;->c:Ljava/lang/Thread;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q:Lcom/google/android/material/card/MaterialCardView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p:Lcom/google/android/material/card/MaterialCardView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v0, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
