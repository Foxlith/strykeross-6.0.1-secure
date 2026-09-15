.class public final synthetic Lw3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public final synthetic b:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic c:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic d:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic l:[Ll4/c;

.field public final synthetic m:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/Context;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;[Ll4/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/l;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object p2, p0, Lw3/l;->b:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lw3/l;->c:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lw3/l;->d:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p5, p0, Lw3/l;->e:Landroid/content/Context;

    iput-object p6, p0, Lw3/l;->f:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p7, p0, Lw3/l;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p8, p0, Lw3/l;->h:Landroid/view/View;

    iput-object p9, p0, Lw3/l;->i:Landroid/widget/TextView;

    iput-object p10, p0, Lw3/l;->j:Landroid/widget/TextView;

    iput-object p11, p0, Lw3/l;->k:Lcom/google/android/material/button/MaterialButton;

    iput-object p12, p0, Lw3/l;->l:[Ll4/c;

    iput-object p13, p0, Lw3/l;->m:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object v2, p0, Lw3/l;->e:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lw3/l;->m:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object p1, p0, Lw3/l;->a:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lw3/l;->b:Lcom/google/android/material/textfield/TextInputEditText;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, ""

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move-object v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    iget-object v3, p0, Lw3/l;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    move-object v3, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_1
    iget-object v5, p0, Lw3/l;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    move-object v9, v4

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    move-object v9, v5

    .line 88
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/4 v6, 0x2

    .line 93
    const/4 v10, 0x0

    .line 94
    if-lt v5, v6, :cond_4

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v6, 0x1

    .line 101
    if-lt v5, v6, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v7, 0x7

    .line 108
    if-lt v5, v7, :cond_4

    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-ge v5, v6, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    iget-object v5, p0, Lw3/l;->f:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    .line 120
    .line 121
    .line 122
    iget-object v6, p0, Lw3/l;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 123
    .line 124
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v7, p0, Lw3/l;->h:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v8, p0, Lw3/l;->i:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object v7, p0, Lw3/l;->j:Landroid/widget/TextView;

    .line 138
    .line 139
    const v4, 0x7f13052f

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 143
    .line 144
    .line 145
    iget-object v11, p0, Lw3/l;->k:Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    invoke-virtual {v11, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v12, "msfpc "

    .line 153
    .line 154
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, " "

    .line 161
    .line 162
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-instance p1, Lw3/m;

    .line 179
    .line 180
    move-object v0, p1

    .line 181
    move-object v4, v6

    .line 182
    move-object v6, v11

    .line 183
    invoke-direct/range {v0 .. v9}, Lw3/m;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lw3/l;->l:[Ll4/c;

    .line 187
    .line 188
    aput-object p1, v0, v10

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_4
    :goto_3
    const p1, 0x7f130521

    .line 192
    .line 193
    .line 194
    invoke-static {v2, p1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 199
    .line 200
    .line 201
    :goto_4
    return-void
.end method
