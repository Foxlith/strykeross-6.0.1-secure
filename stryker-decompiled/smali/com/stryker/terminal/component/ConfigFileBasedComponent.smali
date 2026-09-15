.class public abstract Lcom/stryker/terminal/component/ConfigFileBasedComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stryker/terminal/component/ConfigFileBasedObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stryker/terminal/component/NeoComponent;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;

.field private static final NEOLANG_FILTER:Ljava/io/FileFilter;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final baseDir:Ljava/lang/String;

.field private final checkComponentFileWhenObtained:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->Companion:Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;

    const-string v0, "ConfigFileBasedComponent"

    sput-object v0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/stryker/terminal/component/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/a;-><init>(I)V

    sput-object v0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->NEOLANG_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "baseDir"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->baseDir:Ljava/lang/String;

    return-void
.end method

.method private static final NEOLANG_FILTER$lambda$0(Ljava/io/File;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lg5/i;->j0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "nl"

    invoke-static {p0, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->NEOLANG_FILTER$lambda$0(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getNEOLANG_FILTER$cp()Ljava/io/FileFilter;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->NEOLANG_FILTER:Ljava/io/FileFilter;

    return-object v0
.end method

.method private final ensureBaseDir()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->baseDir:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/stryker/terminal/component/ConfigFileBasedComponent$ensureBaseDir$chain$1;->INSTANCE:Lcom/stryker/terminal/component/ConfigFileBasedComponent$ensureBaseDir$chain$1;

    .line 20
    .line 21
    const-string v3, "nextFunction"

    .line 22
    .line 23
    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget-object v1, Lp5/d;->a:Lp5/d;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v3, Lp5/f;

    .line 32
    .line 33
    new-instance v4, Landroidx/lifecycle/m0;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v4, v1, v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4, v2}, Lp5/f;-><init>(Landroidx/lifecycle/m0;Lj5/l;)V

    .line 40
    .line 41
    .line 42
    move-object v1, v3

    .line 43
    :goto_0
    invoke-static {v1}, Lp5/j;->k1(Lp5/g;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lx4/t;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Lx4/t;-><init>(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lx4/t;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_1
    move-object v2, v1

    .line 57
    check-cast v2, Lx4/r;

    .line 58
    .line 59
    invoke-virtual {v2}, Lx4/r;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-string v4, "TAG"

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Lx4/r;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v3, v5}, Lg5/i;->l0([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-ltz v3, :cond_4

    .line 106
    .line 107
    :cond_3
    sget-object v3, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 108
    .line 109
    sget-object v5, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->TAG:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v5, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v6, "Clearing stale entry at "

    .line 117
    .line 118
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v5, v4}, Lcom/stryker/terminal/utils/NLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    sget-object v2, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 162
    .line 163
    sget-object v3, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->TAG:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v4, 0x1

    .line 169
    new-array v4, v4, [Ljava/lang/Object;

    .line 170
    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v6, "Cannot create component config directory: "

    .line 174
    .line 175
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, " (parent exists="

    .line 186
    .line 187
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    goto :goto_2

    .line 202
    :cond_7
    move-object v6, v0

    .line 203
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v6, ", isDir="

    .line 207
    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    if-eqz v1, :cond_8

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    goto :goto_3

    .line 222
    :cond_8
    move-object v6, v0

    .line 223
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v6, ", writable="

    .line 227
    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    if-eqz v1, :cond_9

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, ", freeBytes="

    .line 245
    .line 246
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    if-eqz v1, :cond_a

    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    goto :goto_4

    .line 256
    :cond_a
    const-wide/16 v0, -0x1

    .line 257
    .line 258
    :goto_4
    const-string v6, ") \u2014 continuing with built-in defaults"

    .line 259
    .line 260
    invoke-static {v5, v0, v1, v6}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const/4 v1, 0x0

    .line 265
    aput-object v0, v4, v1

    .line 266
    .line 267
    invoke-virtual {v2, v3, v4}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method


# virtual methods
.method public final getBaseDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckComponentFileWhenObtained()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->checkComponentFileWhenObtained:Z

    return v0
.end method

.method public final loadConfigure(Ljava/io/File;)Lcom/stryker/terminal/component/ConfigFileBasedObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v2, Lcom/stryker/terminal/component/config/ConfigureComponent;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/config/ConfigureComponent;

    invoke-virtual {v1, p1}, Lcom/stryker/terminal/component/config/ConfigureComponent;->newLoader(Ljava/io/File;)Lcom/stryker/terminal/component/config/IConfigureLoader;

    move-result-object v1

    invoke-interface {v1}, Lcom/stryker/terminal/component/config/IConfigureLoader;->loadConfigure()Lcom/stryker/terminal/component/config/NeoConfigureFile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stryker/terminal/component/config/NeoConfigureFile;->getVisitor()Lt4/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/ConfigFileBasedObject;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/stryker/terminal/component/ConfigFileBasedObject;->onConfigLoaded(Lt4/a;)V

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Parse configuration failed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    sget-object v3, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to load config: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public abstract onCheckComponentFiles()V
.end method

.method public abstract onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/ConfigFileBasedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->ensureBaseDir()V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->onCheckComponentFiles()V

    return-void
.end method

.method public onServiceObtained()V
    .locals 1

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->getCheckComponentFileWhenObtained()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->onCheckComponentFiles()V

    :cond_0
    return-void
.end method
