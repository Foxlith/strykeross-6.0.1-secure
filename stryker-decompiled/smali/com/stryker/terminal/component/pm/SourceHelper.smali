.class public final Lcom/stryker/terminal/component/pm/SourceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/pm/SourceHelper;

    invoke-direct {v0}, Lcom/stryker/terminal/component/pm/SourceHelper;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/pm/SourceHelper;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final detectSourceFilePrefix(Lcom/stryker/terminal/component/pm/Source;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "_dists_"

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    const-string v2, "source"

    .line 6
    .line 7
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/stryker/terminal/component/pm/Source;->url:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, -0x1

    .line 31
    if-eq v4, v5, :cond_0

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const-string v2, "_"

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-lez v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, "/"

    .line 73
    .line 74
    invoke-static {v1, v4, v2}, Lq5/h;->E1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v4, "this as java.lang.String).substring(startIndex)"

    .line 84
    .line 85
    invoke-static {v1, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lcom/stryker/terminal/component/pm/Source;->repo:Ljava/lang/String;

    .line 97
    .line 98
    const-string v0, "source.repo"

    .line 99
    .line 100
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, " "

    .line 104
    .line 105
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v4, "compile(pattern)"

    .line 110
    .line 111
    invoke-static {v0, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    .line 123
    .line 124
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, "_binary-"

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v0, "builder.toString()"

    .line 147
    .line 148
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :goto_1
    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Failed to detect source file prefix: "

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const-string v1, "PM"

    .line 177
    .line 178
    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const-string p1, ""

    .line 182
    .line 183
    return-object p1
.end method

.method public final detectSourceFiles()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, Lcom/stryker/terminal/component/pm/PackageComponent;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/stryker/terminal/component/pm/PackageComponent;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/PackageComponent;->getSourceManager()Lcom/stryker/terminal/component/pm/SourceManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/SourceManager;->getEnabledSources()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/stryker/terminal/component/pm/Source;

    .line 51
    .line 52
    sget-object v5, Lcom/stryker/terminal/component/pm/SourceHelper;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Lcom/stryker/terminal/component/pm/SourceHelper;->detectSourceFilePrefix(Lcom/stryker/terminal/component/pm/Source;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_4

    .line 64
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v5, v3

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-lez v5, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 97
    .line 98
    const-string v3, "/data/data/com.zalexdev.stryker/files/usr/var/lib/apt/lists"

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    if-nez v2, :cond_3

    .line 108
    .line 109
    new-array v2, v4, [Ljava/io/File;

    .line 110
    .line 111
    :cond_3
    array-length v3, v2

    .line 112
    move v5, v4

    .line 113
    :goto_2
    if-ge v5, v3, :cond_7

    .line 114
    .line 115
    aget-object v6, v2, v5

    .line 116
    .line 117
    new-instance v7, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_5

    .line 131
    .line 132
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    move-object v10, v9

    .line 137
    check-cast v10, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const-string v12, "file.name"

    .line 144
    .line 145
    invoke-static {v11, v12}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v11, v10, v4}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-eqz v10, :cond_4

    .line 153
    .line 154
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-lez v7, :cond_6

    .line 163
    .line 164
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    sget-object v2, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 174
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v4, "Failed to detect source files: "

    .line 178
    .line 179
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v3, "PM"

    .line 198
    .line 199
    invoke-virtual {v2, v3, v0}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    return-object v1
.end method

.method public final syncSource()V
    .locals 5

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lcom/stryker/terminal/component/pm/PackageComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/pm/PackageComponent;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/PackageComponent;->getSourceManager()Lcom/stryker/terminal/component/pm/SourceManager;

    move-result-object v0

    const-string v1, "sourceManager"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/pm/SourceHelper;->syncSource(Lcom/stryker/terminal/component/pm/SourceManager;)V

    return-void
.end method

.method public final syncSource(Lcom/stryker/terminal/component/pm/SourceManager;)V
    .locals 3

    .line 2
    const-string v0, "sourceManager"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# Generated by NeoTerm-Preference\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/SourceManager;->getEnabledSources()Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;->INSTANCE:Lcom/stryker/terminal/component/pm/SourceHelper$syncSource$content$1$1;

    const/16 v2, 0x3c

    invoke-static {p1, v0, v1, v2}, Lx4/m;->z0(Ljava/util/List;Ljava/lang/StringBuilder;Lj5/l;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v1}, Lc3/a;->n([Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    sget-object v2, Lq5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, p1, v0}, Lc3/a;->A(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
