.class public final synthetic Lo4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lo4/u;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic d:Landroid/app/Dialog;

.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo4/u;[Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/h;->a:Lo4/u;

    iput-object p2, p0, Lo4/h;->b:[Ljava/lang/String;

    iput-object p3, p0, Lo4/h;->c:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Lo4/h;->d:Landroid/app/Dialog;

    iput-object p5, p0, Lo4/h;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lo4/h;->f:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lo4/h;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lo4/h;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/h;->i:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p10, p0, Lo4/h;->j:Landroid/view/View;

    iput-object p11, p0, Lo4/h;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/h;->l:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v15, v0, Lo4/h;->a:Lo4/u;

    .line 4
    .line 5
    iget-object v1, v0, Lo4/h;->b:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lo4/h;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 8
    .line 9
    iget-object v3, v0, Lo4/h;->d:Landroid/app/Dialog;

    .line 10
    .line 11
    iget-object v8, v0, Lo4/h;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    iget-object v9, v0, Lo4/h;->f:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    iget-object v10, v0, Lo4/h;->g:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v13, v0, Lo4/h;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v11, v0, Lo4/h;->i:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 20
    .line 21
    iget-object v6, v0, Lo4/h;->j:Landroid/view/View;

    .line 22
    .line 23
    iget-object v7, v0, Lo4/h;->k:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v12, v0, Lo4/h;->l:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    aput-object v4, v1, v5

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/16 v14, 0x8

    .line 49
    .line 50
    if-ne v4, v14, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 56
    .line 57
    const v3, 0x3f266666    # 0.65f

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 71
    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v9, v3}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    .line 82
    .line 83
    .line 84
    const/high16 v2, 0x1040000

    .line 85
    .line 86
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v3, v15, Lo4/u;->b:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const v4, 0x7f130539

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    aget-object v3, v1, v5

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    const-string v2, "Trying to connect..."

    .line 123
    .line 124
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v13}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, v15, Lo4/u;->d:Ll4/l;

    .line 131
    .line 132
    invoke-virtual {v2}, Ll4/l;->t0()V

    .line 133
    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v3, "python3 -u /CORE/PixieWps/pixie.py -i "

    .line 138
    .line 139
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v15, Lo4/u;->d:Ll4/l;

    .line 143
    .line 144
    const-string v4, "wlan_wps"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v3, v15, Lo4/u;->d:Ll4/l;

    .line 154
    .line 155
    invoke-virtual {v3}, Ll4/l;->u0()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, " -p "

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    aget-object v1, v1, v5

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, " -b "

    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    new-instance v14, Lo4/q;

    .line 189
    .line 190
    iget-object v3, v15, Lo4/u;->c:Landroid/app/Activity;

    .line 191
    .line 192
    iget-object v4, v15, Lo4/u;->b:Landroid/content/Context;

    .line 193
    .line 194
    const/16 v16, 0x2

    .line 195
    .line 196
    move-object v1, v14

    .line 197
    move-object v2, v15

    .line 198
    move-object v0, v14

    .line 199
    move/from16 v14, v16

    .line 200
    .line 201
    invoke-direct/range {v1 .. v14}, Lo4/q;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 202
    .line 203
    .line 204
    iput-object v0, v15, Lo4/u;->f:Lo4/q;

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_0
    const-string v0, "Pin must be 8 digits!"

    .line 208
    .line 209
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    :goto_0
    return-void
.end method
