.class public Lcom/zalexdev/stryker/vnc/VNCFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic Q:I


# instance fields
.field public A:Lcom/google/android/material/textfield/TextInputLayout;

.field public B:Lcom/google/android/material/button/MaterialButton;

.field public C:Lcom/google/android/material/button/MaterialButton;

.field public D:Lcom/google/android/material/button/MaterialButton;

.field public E:Lcom/google/android/material/button/MaterialButton;

.field public F:Lm4/e;

.field public G:Ln3/i;

.field public H:Lv3/f;

.field public final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public J:Lcom/google/android/material/textview/MaterialTextView;

.field public K:Lcom/google/android/material/textview/MaterialTextView;

.field public L:Lcom/google/android/material/card/MaterialCardView;

.field public M:Landroid/widget/LinearLayout;

.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Ln2/c;

.field public final P:Ljava/util/EnumMap;

.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Lf/d0;

.field public d:Ll4/l;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lcom/google/android/material/card/MaterialCardView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/LinearLayout;

.field public t:Landroid/widget/ImageView;

.field public u:Z

.field public v:Landroid/widget/TextView;

.field public w:Lcom/google/android/material/textfield/TextInputLayout;

.field public x:Landroid/widget/AutoCompleteTextView;

.field public y:Lcom/google/android/material/textfield/TextInputLayout;

.field public z:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->u:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ln4/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->P:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final d(Lm4/h;Lm4/f;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-eq p2, v0, :cond_2

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq p2, v4, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    if-eq p2, v4, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 19
    .line 20
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 21
    .line 22
    const v0, 0x7f060074

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    iget-object v0, p1, Lm4/h;->c:Landroid/widget/ProgressBar;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lm4/h;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p1, Lm4/h;->a:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 46
    .line 47
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 48
    .line 49
    const v4, 0x7f060302

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-object v4, p1, Lm4/h;->c:Landroid/widget/ProgressBar;

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p1, Lm4/h;->b:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    const v2, 0x7f0800d0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 73
    .line 74
    invoke-virtual {v3, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object v2, p1, Lm4/h;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 84
    .line 85
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 86
    .line 87
    const v0, 0x7f060073

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    iget-object v0, p1, Lm4/h;->c:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lm4/h;->b:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    const v3, 0x7f0800c9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 111
    .line 112
    invoke-virtual {v0, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 117
    .line 118
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 119
    .line 120
    const v4, 0x7f060316

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iget-object v4, p1, Lm4/h;->c:Landroid/widget/ProgressBar;

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p1, Lm4/h;->b:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_2
    iget-object v0, p1, Lm4/h;->a:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p1, Lm4/h;->d:Landroid/widget/FrameLayout;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const/16 p2, 0x3c

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, " copied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    const-string v1, "pidof Xvfb"

    invoke-virtual {v0, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[0-9 ]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ln4/a;Lm4/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    new-instance v1, Lv3/g;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, p2, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->m:Landroid/widget/TextView;

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "5901"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    const-string v1, "vnc_passwd"

    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->p:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->u:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "\u2022\u2022\u2022\u2022\u2022\u2022"

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "(empty)"

    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(ILjava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->g:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->f:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/setup/a;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public final l(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x2000

    .line 18
    .line 19
    :try_start_2
    new-array p1, p1, [B

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_5

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_2
    move-exception v2

    .line 54
    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 58
    :goto_3
    if-eqz v1, :cond_1

    .line 59
    .line 60
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :catchall_3
    move-exception v1

    .line 65
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 69
    :goto_5
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 70
    .line 71
    iget-object v1, v1, Ll4/l;->f:Lu3/g;

    .line 72
    .line 73
    const-string v2, "VNC staging failed for "

    .line 74
    .line 75
    const-string v3, ": "

    .line 76
    .line 77
    invoke-static {v2, p2, v3}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 p2, 0x3

    .line 93
    invoke-virtual {v1, p2, p1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v0
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->O:Ln2/c;

    .line 2
    .line 3
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->J:Lcom/google/android/material/textview/MaterialTextView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->L:Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->K:Lcom/google/android/material/textview/MaterialTextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->k:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->l:Lcom/google/android/material/card/MaterialCardView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->v:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->e:Landroid/widget/TextView;

    .line 85
    .line 86
    const-string v1, "Not installed \u2014 tap install to fetch ~600 MB."

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "OFF"

    .line 92
    .line 93
    const v1, -0x8a8a8b

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1, v0, v2}, Lcom/zalexdev/stryker/vnc/VNCFragment;->j(ILjava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "Start VNC server"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f0801a4

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    const v0, -0x657db

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-virtual {p0, v0, v2, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->j(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->e:Landroid/widget/TextView;

    const-string v1, "Stopped \u00b7 tap Start to spin up xvfb + x11vnc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "Stop VNC server"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f0801b8

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    const-string v0, "RUN"

    const v2, -0xd182ce

    invoke-virtual {p0, v2, v0, v1}, Lcom/zalexdev/stryker/vnc/VNCFragment;->j(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->e:Landroid/widget/TextView;

    const-string v1, "Running \u00b7 accept VNC connections on the port below"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    new-instance v1, Ll4/l;

    invoke-direct {v1, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0069

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->F:Lm4/e;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->F:Lm4/e;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->G:Ln3/i;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->G:Ln3/i;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->H:Lv3/f;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    :try_start_0
    iget-boolean v2, v0, Ll4/o;->k:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v0, v0, Ll4/o;->l:Lu2/b;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lu2/b;->a()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object v0, Ll4/o;->m:Ljava/lang/Process;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->H:Lv3/f;

    .line 54
    .line 55
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    .line 64
    :catch_1
    :cond_5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lm4/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    const-string v2, "vnc-resume-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    const p2, 0x7f0a02ea

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const p2, 0x7f0a0705

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->f:Landroid/widget/ImageView;

    .line 22
    .line 23
    const p2, 0x7f0a0706

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/widget/ProgressBar;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->g:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    const p2, 0x7f0a0704

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->h:Landroid/widget/TextView;

    .line 44
    .line 45
    const p2, 0x7f0a04e2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 55
    .line 56
    const p2, 0x7f0a064d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->j:Landroid/widget/TextView;

    .line 66
    .line 67
    const p2, 0x7f0a06ff

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->k:Landroid/widget/TextView;

    .line 77
    .line 78
    const p2, 0x7f0a06f5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 86
    .line 87
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->l:Lcom/google/android/material/card/MaterialCardView;

    .line 88
    .line 89
    const p2, 0x7f0a06f9

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->m:Landroid/widget/TextView;

    .line 99
    .line 100
    const p2, 0x7f0a06fe

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->n:Landroid/widget/TextView;

    .line 110
    .line 111
    const p2, 0x7f0a06fd

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->p:Landroid/widget/TextView;

    .line 121
    .line 122
    const p2, 0x7f0a06f6

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->q:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    const p2, 0x7f0a06f8

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->r:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const p2, 0x7f0a06f7

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Landroid/widget/LinearLayout;

    .line 152
    .line 153
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->s:Landroid/widget/LinearLayout;

    .line 154
    .line 155
    const p2, 0x7f0a0707

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    check-cast p2, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->t:Landroid/widget/ImageView;

    .line 165
    .line 166
    const p2, 0x7f0a0700

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->v:Landroid/widget/TextView;

    .line 176
    .line 177
    const p2, 0x7f0a0518

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 185
    .line 186
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->w:Lcom/google/android/material/textfield/TextInputLayout;

    .line 187
    .line 188
    const p2, 0x7f0a0517

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    check-cast p2, Landroid/widget/AutoCompleteTextView;

    .line 196
    .line 197
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->x:Landroid/widget/AutoCompleteTextView;

    .line 198
    .line 199
    const p2, 0x7f0a04d3

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 207
    .line 208
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->y:Lcom/google/android/material/textfield/TextInputLayout;

    .line 209
    .line 210
    const p2, 0x7f0a04cf

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 218
    .line 219
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 220
    .line 221
    const p2, 0x7f0a04a4

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 229
    .line 230
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 231
    .line 232
    const p2, 0x7f0a0703

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 240
    .line 241
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->J:Lcom/google/android/material/textview/MaterialTextView;

    .line 242
    .line 243
    const p2, 0x7f0a0701

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 251
    .line 252
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->L:Lcom/google/android/material/card/MaterialCardView;

    .line 253
    .line 254
    const p2, 0x7f0a0702

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    check-cast p2, Landroid/widget/LinearLayout;

    .line 262
    .line 263
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->M:Landroid/widget/LinearLayout;

    .line 264
    .line 265
    const p2, 0x7f0a06fb

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 273
    .line 274
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->K:Lcom/google/android/material/textview/MaterialTextView;

    .line 275
    .line 276
    const p2, 0x7f0a06fc

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    .line 285
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 286
    .line 287
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 288
    .line 289
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 293
    .line 294
    .line 295
    new-instance p2, Ln2/c;

    .line 296
    .line 297
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 298
    .line 299
    invoke-direct {p2, v0}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->O:Ln2/c;

    .line 303
    .line 304
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    .line 305
    .line 306
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 307
    .line 308
    .line 309
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 310
    .line 311
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->M:Landroid/widget/LinearLayout;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->P:Ljava/util/EnumMap;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Ln4/a;->values()[Ln4/a;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    array-length v2, v1

    .line 330
    const/4 v3, 0x0

    .line 331
    move v4, v3

    .line 332
    :goto_0
    if-ge v4, v2, :cond_0

    .line 333
    .line 334
    aget-object v5, v1, v4

    .line 335
    .line 336
    const v6, 0x7f0d0074

    .line 337
    .line 338
    .line 339
    iget-object v7, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->M:Landroid/widget/LinearLayout;

    .line 340
    .line 341
    invoke-virtual {p2, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    const v7, 0x7f0a05db

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    check-cast v7, Landroid/widget/TextView;

    .line 353
    .line 354
    const v8, 0x7f0a05d8

    .line 355
    .line 356
    .line 357
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    check-cast v8, Landroid/widget/ImageView;

    .line 362
    .line 363
    const v9, 0x7f0a05da

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    check-cast v9, Landroid/widget/ProgressBar;

    .line 371
    .line 372
    const v10, 0x7f0a05d9

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    check-cast v10, Landroid/widget/FrameLayout;

    .line 380
    .line 381
    iget v11, v5, Ln4/a;->a:I

    .line 382
    .line 383
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    .line 384
    .line 385
    .line 386
    new-instance v11, Lm4/h;

    .line 387
    .line 388
    invoke-direct {v11, v7, v8, v9, v10}, Lm4/h;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 389
    .line 390
    .line 391
    sget-object v7, Lm4/f;->a:Lm4/f;

    .line 392
    .line 393
    invoke-virtual {p0, v11, v7}, Lcom/zalexdev/stryker/vnc/VNCFragment;->d(Lm4/h;Lm4/f;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v5, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    iget-object v5, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->M:Landroid/widget/LinearLayout;

    .line 400
    .line 401
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v4, v4, 0x1

    .line 405
    .line 406
    goto :goto_0

    .line 407
    :cond_0
    const p2, 0x7f0a02e9

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 415
    .line 416
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 417
    .line 418
    const p2, 0x7f0a065d

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 426
    .line 427
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 428
    .line 429
    const p2, 0x7f0a0678

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 437
    .line 438
    iput-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 439
    .line 440
    const p2, 0x7f0a010b

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 448
    .line 449
    iput-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 450
    .line 451
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 452
    .line 453
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 454
    .line 455
    .line 456
    new-instance p1, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 467
    .line 468
    const-string v1, "window"

    .line 469
    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Landroid/view/WindowManager;

    .line 475
    .line 476
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    new-instance v1, Landroid/graphics/Point;

    .line 481
    .line 482
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 486
    .line 487
    .line 488
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 489
    .line 490
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 491
    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v1, "x"

    .line 501
    .line 502
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v0, "x24"

    .line 516
    .line 517
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    const-string p2, "1920x1080x24"

    .line 528
    .line 529
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    new-instance p2, Landroid/widget/ArrayAdapter;

    .line 533
    .line 534
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->b:Landroid/content/Context;

    .line 535
    .line 536
    const v1, 0x1090009

    .line 537
    .line 538
    .line 539
    invoke-direct {p2, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 540
    .line 541
    .line 542
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 543
    .line 544
    const-string v1, "vnc_last_resolution"

    .line 545
    .line 546
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_1

    .line 555
    .line 556
    iget-object v0, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 557
    .line 558
    const-string v1, "previous_vnc_resolution"

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->x:Landroid/widget/AutoCompleteTextView;

    .line 565
    .line 566
    invoke-virtual {v1, p2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    .line 568
    .line 569
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->x:Landroid/widget/AutoCompleteTextView;

    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    if-eqz v1, :cond_2

    .line 576
    .line 577
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    move-object v0, p1

    .line 582
    check-cast v0, Ljava/lang/CharSequence;

    .line 583
    .line 584
    :cond_2
    invoke-virtual {p2, v0, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 585
    .line 586
    .line 587
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 588
    .line 589
    const-string p2, "vnc_last_port"

    .line 590
    .line 591
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    if-eqz p2, :cond_3

    .line 600
    .line 601
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 602
    .line 603
    const-string p2, "previous_vnc_port"

    .line 604
    .line 605
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    :cond_3
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-eqz v0, :cond_4

    .line 616
    .line 617
    const/16 p1, 0x170d

    .line 618
    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    :cond_4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    .line 625
    .line 626
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->A:Lcom/google/android/material/textfield/TextInputLayout;

    .line 627
    .line 628
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->d:Ll4/l;

    .line 636
    .line 637
    const-string v0, "vnc_passwd"

    .line 638
    .line 639
    invoke-virtual {p2, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object p2

    .line 643
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    .line 645
    .line 646
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->x:Landroid/widget/AutoCompleteTextView;

    .line 647
    .line 648
    new-instance p2, Lm4/d;

    .line 649
    .line 650
    invoke-direct {p2, p0, v3}, Lm4/d;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 654
    .line 655
    .line 656
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->z:Lcom/google/android/material/textfield/TextInputEditText;

    .line 657
    .line 658
    new-instance p2, Lm4/d;

    .line 659
    .line 660
    const/4 v0, 0x1

    .line 661
    invoke-direct {p2, p0, v0}, Lm4/d;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    .line 666
    .line 667
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->q:Landroid/widget/LinearLayout;

    .line 668
    .line 669
    new-instance p2, Lm4/b;

    .line 670
    .line 671
    const/4 v1, 0x2

    .line 672
    invoke-direct {p2, p0, v1}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->r:Landroid/widget/LinearLayout;

    .line 679
    .line 680
    new-instance p2, Lm4/b;

    .line 681
    .line 682
    const/4 v1, 0x3

    .line 683
    invoke-direct {p2, p0, v1}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    .line 688
    .line 689
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->s:Landroid/widget/LinearLayout;

    .line 690
    .line 691
    new-instance p2, Lm4/b;

    .line 692
    .line 693
    const/4 v2, 0x4

    .line 694
    invoke-direct {p2, p0, v2}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    .line 699
    .line 700
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->t:Landroid/widget/ImageView;

    .line 701
    .line 702
    new-instance p2, Lm4/b;

    .line 703
    .line 704
    const/4 v2, 0x5

    .line 705
    invoke-direct {p2, p0, v2}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    .line 710
    .line 711
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->B:Lcom/google/android/material/button/MaterialButton;

    .line 712
    .line 713
    new-instance p2, Lm4/b;

    .line 714
    .line 715
    const/4 v2, 0x6

    .line 716
    invoke-direct {p2, p0, v2}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    .line 721
    .line 722
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->C:Lcom/google/android/material/button/MaterialButton;

    .line 723
    .line 724
    new-instance p2, Lm4/b;

    .line 725
    .line 726
    const/4 v2, 0x7

    .line 727
    invoke-direct {p2, p0, v2}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    .line 732
    .line 733
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->D:Lcom/google/android/material/button/MaterialButton;

    .line 734
    .line 735
    new-instance p2, Lm4/b;

    .line 736
    .line 737
    invoke-direct {p2, p0, v0}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    .line 742
    .line 743
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 744
    .line 745
    new-instance p2, Lm4/b;

    .line 746
    .line 747
    invoke-direct {p2, p0, v3}, Lm4/b;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    .line 752
    .line 753
    new-instance p1, Ljava/lang/Thread;

    .line 754
    .line 755
    new-instance p2, Lm4/a;

    .line 756
    .line 757
    invoke-direct {p2, p0, v0}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 758
    .line 759
    .line 760
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 764
    .line 765
    .line 766
    new-instance p1, Ljava/lang/Thread;

    .line 767
    .line 768
    new-instance p2, Lm4/a;

    .line 769
    .line 770
    invoke-direct {p2, p0, v1}, Lm4/a;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;I)V

    .line 771
    .line 772
    .line 773
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 777
    .line 778
    .line 779
    new-instance p1, Lf/d0;

    .line 780
    .line 781
    invoke-direct {p1, p0}, Lf/d0;-><init>(Lcom/zalexdev/stryker/vnc/VNCFragment;)V

    .line 782
    .line 783
    .line 784
    iput-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 785
    .line 786
    new-instance p1, Landroid/content/IntentFilter;

    .line 787
    .line 788
    const-string p2, "com.zalexdev.stryker.vnc.action.START"

    .line 789
    .line 790
    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    const-string p2, "android.intent.category.DEFAULT"

    .line 794
    .line 795
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    .line 799
    .line 800
    const-string v1, "com.zalexdev.stryker.vnc.action.STOP"

    .line 801
    .line 802
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 809
    .line 810
    const/16 v1, 0x21

    .line 811
    .line 812
    if-lt p2, v1, :cond_5

    .line 813
    .line 814
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 815
    .line 816
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 817
    .line 818
    invoke-static {p2, v1, p1}, Lf4/b;->s(Landroidx/fragment/app/a0;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 819
    .line 820
    .line 821
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 822
    .line 823
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 824
    .line 825
    invoke-static {p1, p2, v0}, Lf4/b;->s(Landroidx/fragment/app/a0;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 826
    .line 827
    .line 828
    goto :goto_1

    .line 829
    :cond_5
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 830
    .line 831
    iget-object v1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 832
    .line 833
    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 834
    .line 835
    .line 836
    iget-object p1, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->a:Landroidx/fragment/app/a0;

    .line 837
    .line 838
    iget-object p2, p0, Lcom/zalexdev/stryker/vnc/VNCFragment;->c:Lf/d0;

    .line 839
    .line 840
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    .line 842
    .line 843
    :goto_1
    return-void
.end method
