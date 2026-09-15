.class public final Lcom/stryker/terminal/component/extrakey/NeoExtraKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/ConfigFileBasedObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/extrakey/NeoExtraKey$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/extrakey/NeoExtraKey$Companion;

.field public static final EKS_META_CODE:Ljava/lang/String; = "code"

.field public static final EKS_META_CONTEXT_NAME:Ljava/lang/String; = "extra-key"

.field private static final EKS_META_CONTEXT_PATH:[Ljava/lang/String;

.field public static final EKS_META_DISPLAY:Ljava/lang/String; = "display"

.field public static final EKS_META_KEY:Ljava/lang/String; = "key"

.field public static final EKS_META_PROGRAM:Ljava/lang/String; = "program"

.field public static final EKS_META_VERSION:Ljava/lang/String; = "version"

.field public static final EKS_META_WITH_DEFAULT:Ljava/lang/String; = "with-default"

.field public static final EKS_META_WITH_ENTER:Ljava/lang/String; = "with-enter"


# instance fields
.field private final programNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shortcutKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ">;"
        }
    .end annotation
.end field

.field private version:I

.field private withDefaultKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->Companion:Lcom/stryker/terminal/component/extrakey/NeoExtraKey$Companion;

    const-string v0, "extra-key"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->EKS_META_CONTEXT_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->programNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->shortcutKeys:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->withDefaultKeys:Z

    return-void
.end method

.method public static final synthetic access$getEKS_META_CONTEXT_PATH$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->EKS_META_CONTEXT_PATH:[Ljava/lang/String;

    return-object v0
.end method

.method private final getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->EKS_META_CONTEXT_PATH:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lt4/a;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final applyExtraKeys(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 2

    const-string v0, "extraKeysView"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->withDefaultKeys:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->loadDefaultUserKeys()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->shortcutKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addUserKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getProgramNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->programNames:Ljava/util/List;

    return-object v0
.end method

.method public final getShortcutKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->shortcutKeys:Ljava/util/List;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->version:I

    return v0
.end method

.method public final getWithDefaultKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->withDefaultKeys:Z

    return v0
.end method

.method public onConfigLoaded(Lt4/a;)V
    .locals 7

    .line 1
    const-string v0, "configVisitor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->EKS_META_CONTEXT_PATH:[Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "program"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lt4/a;->a(Ljava/lang/String;[Ljava/lang/String;)Lu4/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lu4/b;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_6

    .line 19
    .line 20
    iget-object v0, v0, Lu4/b;->a:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lu4/c;

    .line 37
    .line 38
    check-cast v1, Lu4/a;

    .line 39
    .line 40
    iget v2, v1, Lu4/a;->a:I

    .line 41
    .line 42
    packed-switch v2, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->programNames:Ljava/util/List;

    .line 46
    .line 47
    packed-switch v2, :pswitch_data_1

    .line 48
    .line 49
    .line 50
    sget-object v1, Lu4/e;->b:Lu4/e;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_1
    iget-object v1, v1, Lu4/a;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lu4/e;

    .line 56
    .line 57
    :goto_1
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->EKS_META_CONTEXT_PATH:[Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "key"

    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Lt4/a;->a(Ljava/lang/String;[Ljava/lang/String;)Lu4/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v0, v0, Lu4/b;->a:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    move-object v3, v2

    .line 97
    check-cast v3, Lu4/c;

    .line 98
    .line 99
    check-cast v3, Lu4/a;

    .line 100
    .line 101
    iget v3, v3, Lu4/a;->a:I

    .line 102
    .line 103
    packed-switch v3, :pswitch_data_2

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :pswitch_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const-string v2, "true"

    .line 120
    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lu4/c;

    .line 128
    .line 129
    const-string v3, "display"

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Lu4/c;->a(Ljava/lang/String;)Lu4/e;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const-string v4, "code"

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Lu4/c;->a(Ljava/lang/String;)Lu4/e;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    sget-object v5, Lu4/e;->b:Lu4/e;

    .line 145
    .line 146
    invoke-static {v4, v5}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    xor-int/lit8 v6, v6, 0x1

    .line 151
    .line 152
    if-eqz v6, :cond_3

    .line 153
    .line 154
    iget-object v4, v4, Lu4/e;->a:Ljava/lang/Object;

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {v3, v5}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    xor-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    if-eqz v5, :cond_2

    .line 170
    .line 171
    iget-object v3, v3, Lu4/e;->a:Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_5

    .line 178
    :cond_2
    move-object v3, v4

    .line 179
    :goto_5
    const-string v5, "with-enter"

    .line 180
    .line 181
    invoke-virtual {v1, v5}, Lu4/c;->a(Ljava/lang/String;)Lu4/e;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    new-instance v2, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;

    .line 196
    .line 197
    invoke-direct {v2, v4, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/TextButton;-><init>(Ljava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->setDisplayText(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->shortcutKeys:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 210
    .line 211
    const-string v0, "Key must have a code"

    .line 212
    .line 213
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_4
    const-string v0, "version"

    .line 218
    .line 219
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_5

    .line 224
    .line 225
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    double-to-int v0, v0

    .line 230
    goto :goto_6

    .line 231
    :cond_5
    const/4 v0, 0x0

    .line 232
    :goto_6
    iput v0, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->version:I

    .line 233
    .line 234
    const-string v0, "with-default"

    .line 235
    .line 236
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {v2, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    iput-boolean p1, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->withDefaultKeys:Z

    .line 245
    .line 246
    return-void

    .line 247
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 248
    .line 249
    const-string v0, "Extra Key must have programs attribute"

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->version:I

    return-void
.end method

.method public final setWithDefaultKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->withDefaultKeys:Z

    return-void
.end method
