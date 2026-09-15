.class public final Lo4/r;
.super Ll4/h;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:Landroid/widget/ProgressBar;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:[Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic k:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic l:Landroid/widget/TextView;

.field public final synthetic m:Landroid/widget/TextView;

.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:[I

.field public final synthetic p:Landroid/content/Context;

.field public final synthetic q:Lo4/u;


# direct methods
.method public constructor <init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;[Lcom/zalexdev/stryker/custom/WiFINetwork;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;[ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/r;->q:Lo4/u;

    iput-object p4, p0, Lo4/r;->e:Landroid/widget/ImageView;

    iput-object p5, p0, Lo4/r;->f:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lo4/r;->g:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/r;->h:Landroid/view/View;

    iput-object p8, p0, Lo4/r;->i:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/r;->j:[Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p10, p0, Lo4/r;->k:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p11, p0, Lo4/r;->l:Landroid/widget/TextView;

    iput-object p12, p0, Lo4/r;->m:Landroid/widget/TextView;

    iput-object p13, p0, Lo4/r;->n:Ljava/util/ArrayList;

    iput-object p14, p0, Lo4/r;->o:[I

    iput-object p15, p0, Lo4/r;->p:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Ll4/h;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    const-wide/16 v0, 0xfa0

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Ll4/h;->c:Ll4/l;

    .line 12
    .line 13
    const-string v1, "wlan_wps"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lo4/r;->n:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v3, p0, Ll4/h;->d:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    iget-object v3, p0, Lo4/r;->o:[I

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    aget v5, v3, v4

    .line 47
    .line 48
    add-int/lit8 v5, v5, -0x1

    .line 49
    .line 50
    aput v5, v3, v4

    .line 51
    .line 52
    const-string v3, "Trying pin "

    .line 53
    .line 54
    const-string v5, " Left: "

    .line 55
    .line 56
    invoke-static {v3, v2, v5}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v5, p0, Lo4/r;->o:[I

    .line 61
    .line 62
    aget v5, v5, v4

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v3}, Ll4/h;->e(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v5, "python3 -u /CORE/PixieWps/pixie.py -i "

    .line 77
    .line 78
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Ll4/h;->c:Ll4/l;

    .line 85
    .line 86
    invoke-virtual {v5}, Ll4/l;->u0()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v5, " -p "

    .line 94
    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, " -b "

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lo4/r;->k:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lo4/r;->q:Lo4/u;

    .line 125
    .line 126
    new-instance v13, Lv3/e;

    .line 127
    .line 128
    iget-object v7, p0, Ll4/h;->a:Landroid/app/Activity;

    .line 129
    .line 130
    iget-object v8, p0, Lo4/r;->p:Landroid/content/Context;

    .line 131
    .line 132
    const/4 v10, 0x1

    .line 133
    const/4 v12, 0x1

    .line 134
    move-object v5, v13

    .line 135
    move-object v6, p0

    .line 136
    move-object v11, v2

    .line 137
    invoke-direct/range {v5 .. v12}, Lv3/e;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 138
    .line 139
    .line 140
    iput-object v13, v3, Lo4/u;->h:Ll4/c;

    .line 141
    .line 142
    :goto_1
    iget-object v3, p0, Lo4/r;->q:Lo4/u;

    .line 143
    .line 144
    iget-object v3, v3, Lo4/u;->h:Ll4/c;

    .line 145
    .line 146
    iget-boolean v3, v3, Ll4/c;->n:Z

    .line 147
    .line 148
    if-eqz v3, :cond_2

    .line 149
    .line 150
    iget-boolean v3, p0, Ll4/h;->d:Z

    .line 151
    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    const-wide/16 v5, 0x1f4

    .line 155
    .line 156
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catch_1
    :cond_2
    iget-boolean v3, p0, Ll4/h;->d:Z

    .line 161
    .line 162
    if-eqz v3, :cond_3

    .line 163
    .line 164
    iget-object v0, p0, Lo4/r;->q:Lo4/u;

    .line 165
    .line 166
    iget-object v0, v0, Lo4/u;->h:Ll4/c;

    .line 167
    .line 168
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    iget-object v3, p0, Lo4/r;->j:[Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 173
    .line 174
    iget-object v5, p0, Lo4/r;->q:Lo4/u;

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lo4/u;->d(Ljava/util/ArrayList;)Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    aput-object v2, v3, v4

    .line 184
    .line 185
    iget-object v2, p0, Lo4/r;->j:[Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 186
    .line 187
    aget-object v2, v2, v4

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_0

    .line 198
    .line 199
    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lo4/r;->m:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lo4/r;->q:Lo4/u;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lo4/r;->q:Lo4/u;

    invoke-virtual {v0}, Lo4/u;->e()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Ll4/h;->c:Ll4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lo4/r;->e:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v2, p0, Lo4/r;->f:Landroid/widget/ProgressBar;

    invoke-static {v2, v0}, Ll4/l;->m0(Landroid/view/View;Ljava/lang/Float;)V

    iget-object v0, p0, Lo4/r;->g:Landroid/widget/TextView;

    const v2, 0x104000a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo4/r;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo4/r;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lo4/r;->j:[Lcom/zalexdev/stryker/custom/WiFINetwork;

    aget-object v5, v4, v3

    iget-object v6, p0, Lo4/r;->l:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ll4/l;->S()Z

    move-result v2

    iget-object v5, p0, Lo4/r;->k:Lcom/zalexdev/stryker/custom/WiFINetwork;

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    move-result-object v2

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v8}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v7, v8, v9}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ll4/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130539

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v3

    invoke-virtual {v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f130511

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v4, v3

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lo4/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v5, v1}, Lo4/s;-><init>(Ljava/lang/Object;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v1, "Pin not found!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
