.class public final Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;
.super Lcom/stryker/terminal/component/config/NeoConfigureFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OldExtraKeysConfigureFile"
.end annotation


# instance fields
.field private configVisitor:Lt4/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "configureFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/config/NeoConfigureFile;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private final generateVisitor(Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)Z
    .locals 8

    .line 1
    new-instance v0, Lt4/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->setConfigVisitor(Lt4/a;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->getConfigVisitor()Lt4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lu4/d;

    .line 17
    .line 18
    const-string v2, "global"

    .line 19
    .line 20
    invoke-direct {v1, v2}, Lu4/d;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lt4/a;->b:Lu4/d;

    .line 24
    .line 25
    iput-object v1, v0, Lt4/a;->a:Lu4/d;

    .line 26
    .line 27
    const-string v1, "extra-key"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lt4/a;->d(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lt4/a;->b:Lu4/d;

    .line 33
    .line 34
    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lu4/e;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getVersion()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-direct {v2, v3}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v3, "version"

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lu4/e;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getWithDefaultKeys()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v2, v3}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-string v3, "with-default"

    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "program"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lt4/a;->d(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x0

    .line 87
    move v3, v2

    .line 88
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const/4 v5, 0x0

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    add-int/lit8 v6, v3, 0x1

    .line 100
    .line 101
    if-ltz v3, :cond_0

    .line 102
    .line 103
    check-cast v4, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, v0, Lt4/a;->b:Lu4/d;

    .line 106
    .line 107
    invoke-static {v5}, Li5/a;->m(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    new-instance v7, Lu4/e;

    .line 115
    .line 116
    invoke-direct {v7, v4}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v3, v7}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 120
    .line 121
    .line 122
    move v3, v6

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lv1/f;->V()V

    .line 125
    .line 126
    .line 127
    throw v5

    .line 128
    :cond_1
    invoke-virtual {v0}, Lt4/a;->e()V

    .line 129
    .line 130
    .line 131
    const-string v1, "key"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lt4/a;->d(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getShortcutKeys()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    add-int/lit8 v3, v2, 0x1

    .line 155
    .line 156
    if-ltz v2, :cond_3

    .line 157
    .line 158
    check-cast v1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;

    .line 159
    .line 160
    instance-of v4, v1, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;

    .line 161
    .line 162
    if-eqz v4, :cond_2

    .line 163
    .line 164
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Lt4/a;->d(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v0, Lt4/a;->b:Lu4/d;

    .line 172
    .line 173
    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Lu4/e;

    .line 177
    .line 178
    move-object v6, v1

    .line 179
    check-cast v6, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;

    .line 180
    .line 181
    invoke-virtual {v6}, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;->getWithEnter()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-direct {v4, v6}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const-string v6, "with-enter"

    .line 193
    .line 194
    invoke-virtual {v2, v6, v4}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 195
    .line 196
    .line 197
    new-instance v4, Lu4/e;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->getButtonKeys()Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v6}, Li5/a;->m(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v6}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const-string v6, "display"

    .line 210
    .line 211
    invoke-virtual {v2, v6, v4}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 212
    .line 213
    .line 214
    new-instance v4, Lu4/e;

    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->getButtonKeys()Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {v4, v1}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    const-string v1, "code"

    .line 227
    .line 228
    invoke-virtual {v2, v1, v4}, Lu4/d;->a(Ljava/lang/String;Lu4/e;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lt4/a;->e()V

    .line 232
    .line 233
    .line 234
    :cond_2
    move v2, v3

    .line 235
    goto :goto_1

    .line 236
    :cond_3
    invoke-static {}, Lv1/f;->V()V

    .line 237
    .line 238
    .line 239
    throw v5

    .line 240
    :cond_4
    invoke-virtual {v0}, Lt4/a;->e()V

    .line 241
    .line 242
    .line 243
    iget-object p1, v0, Lt4/a;->b:Lu4/d;

    .line 244
    .line 245
    :goto_2
    if-eqz p1, :cond_5

    .line 246
    .line 247
    iget-object v1, p1, Lu4/d;->d:Lu4/d;

    .line 248
    .line 249
    if-eqz v1, :cond_5

    .line 250
    .line 251
    move-object p1, v1

    .line 252
    goto :goto_2

    .line 253
    :cond_5
    iput-object p1, v0, Lt4/a;->b:Lu4/d;

    .line 254
    .line 255
    const/4 p1, 0x1

    .line 256
    return p1
.end method

.method private final parseHeader(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->setVersion(I)V

    return-void

    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad version \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final parseKeyDefine(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lq5/h;->I1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "true"

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getShortcutKeys()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;

    invoke-direct {v1, v0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bad define"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseOldConfig(Ljava/io/BufferedReader;)Lcom/stryker/terminal/component/extrakey/NeoExtraKey;
    .locals 4

    .line 1
    new-instance v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    if-eqz v1, :cond_6

    .line 11
    .line 12
    invoke-static {v1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v2, "#"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v2, v3}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "version"

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseHeader(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const-string v2, "program"

    .line 62
    .line 63
    invoke-static {v1, v2, v3}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseProgram(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-string v2, "define"

    .line 74
    .line 75
    invoke-static {v1, v2, v3}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseKeyDefine(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const-string v2, "with-default"

    .line 86
    .line 87
    invoke-static {v1, v2, v3}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseWithDefault(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    invoke-virtual {v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getVersion()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-ltz p1, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    const-string v0, "At least one program name should be given"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 123
    .line 124
    const-string v0, "Not a valid shortcut config file"

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method private final parseProgram(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lq5/h;->I1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final parseWithDefault(Ljava/lang/String;Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-static {p1, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->setWithDefaultKeys(Z)V

    return-void
.end method


# virtual methods
.method public getConfigVisitor()Lt4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->configVisitor:Lt4/a;

    return-object v0
.end method

.method public parseConfigure()Z
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getConfigureFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->parseOldConfig(Ljava/io/BufferedReader;)Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->generateVisitor(Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load old extra keys config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ConfigureLoader"

    invoke-virtual {v1, v2, v0}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setConfigVisitor(Lt4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/component/config/OldConfigureLoader$Companion$OldExtraKeysConfigureFile;->configVisitor:Lt4/a;

    return-void
.end method
