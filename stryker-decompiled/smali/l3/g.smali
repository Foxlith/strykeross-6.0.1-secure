.class public final synthetic Ll3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ll3/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/g;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 7
    .line 8
    iput-object p2, p0, Ll3/g;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Ll3/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v8, p0, Ll3/g;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lf/q0;

    .line 15
    .line 16
    invoke-direct {v0, v8}, Lf/q0;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lf/q0;->H()Le3/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h(Le3/b;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Le3/a;->a:Le3/a;

    .line 27
    .line 28
    iget-object v3, v0, Le3/b;->j:Le3/a;

    .line 29
    .line 30
    if-ne v3, v2, :cond_0

    .line 31
    .line 32
    iget-boolean v0, v0, Le3/b;->e:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v0, "\u25b6 Starting run."

    .line 37
    .line 38
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ll3/g;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->o(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "\u26a0 Bound but capability still "

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " \u2014 open USB Arsenal manually"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v8, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v8, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v8, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 75
    .line 76
    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v6, p0, Ll3/g;->c:Ljava/lang/String;

    .line 83
    .line 84
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 85
    .line 86
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v0, Lg3/b;

    .line 90
    .line 91
    invoke-direct {v0, v8}, Lg3/b;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lg3/b;->f()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lf3/b;

    .line 113
    .line 114
    iget-object v4, v3, Lf3/b;->b:Ljava/lang/String;

    .line 115
    .line 116
    const-string v5, "HID-to-Go (KBD + Mouse + Channel)"

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_1

    .line 123
    .line 124
    :goto_1
    move-object v5, v3

    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    sget-object v4, Lf3/a;->c:Lf3/a;

    .line 135
    .line 136
    if-eqz v3, :cond_4

    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lf3/b;

    .line 143
    .line 144
    iget-object v5, v3, Lf3/b;->d:Ljava/util/Set;

    .line 145
    .line 146
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_3

    .line 151
    .line 152
    sget-object v4, Lf3/a;->h:Lf3/a;

    .line 153
    .line 154
    iget-object v5, v3, Lf3/b;->d:Ljava/util/Set;

    .line 155
    .line 156
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_6

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lf3/b;

    .line 178
    .line 179
    iget-object v3, v2, Lf3/b;->d:Ljava/util/Set;

    .line 180
    .line 181
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_5

    .line 186
    .line 187
    move-object v5, v2

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    const/4 v0, 0x0

    .line 190
    move-object v5, v0

    .line 191
    :goto_2
    if-nez v5, :cond_7

    .line 192
    .line 193
    new-instance v0, Ll3/e;

    .line 194
    .line 195
    invoke-direct {v0, v8, v1}, Ll3/e;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    .line 196
    .line 197
    .line 198
    :goto_3
    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    new-instance v0, Lv1/c;

    .line 203
    .line 204
    invoke-direct {v0, v8}, Lv1/c;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lv1/c;->k()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v5}, Lv1/c;->a(Lf3/b;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    new-instance v0, Lj2/d;

    .line 215
    .line 216
    const/4 v7, 0x2

    .line 217
    move-object v2, v0

    .line 218
    move-object v3, v8

    .line 219
    invoke-direct/range {v2 .. v7}, Lj2/d;-><init>(Landroid/view/KeyEvent$Callback;ZLjava/lang/Object;Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :goto_4
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
