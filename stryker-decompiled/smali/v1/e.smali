.class public final Lv1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lv1/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [C

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lv1/e;->l(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lw5/i;)V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/e;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lw5/i;

    if-eqz v1, :cond_0

    check-cast v0, Lw5/i;

    iput-object p1, v0, Lw5/i;->c:Lw5/i;

    iput-object p1, p0, Lv1/e;->b:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    check-cast v0, Lw5/i;

    if-nez v0, :cond_1

    iput-object p1, p0, Lv1/e;->b:Ljava/lang/Object;

    iput-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Head present, but no tail"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ly0/y;->d(ILjava/lang/String;)V

    iget-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    check-cast p1, Ly0/w;

    invoke-virtual {p1}, Ly0/w;->b()V

    iget-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    check-cast p1, Ly0/w;

    invoke-static {p1, v0}, Landroidx/lifecycle/k;->j(Ly0/w;Ly0/y;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ly0/y;->u()V

    return-object v2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ly0/y;->u()V

    throw v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lv1/e;->b:Ljava/lang/Object;

    check-cast v1, Ll4/l;

    const-string v2, "hid_payload_hidden"

    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lv1/e;->h(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lv1/e;->b:Ljava/lang/Object;

    check-cast p1, Ll4/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lv1/e;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lv1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ly0/w;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly0/w;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ly0/w;

    .line 11
    .line 12
    invoke-virtual {v0}, Ly0/w;->c()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ly0/d;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ly0/d;->u(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ly0/w;

    .line 25
    .line 26
    invoke-virtual {p1}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ly0/w;

    .line 32
    .line 33
    invoke-virtual {p1}, Ly0/w;->k()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ly0/w;

    .line 41
    .line 42
    invoke-virtual {v0}, Ly0/w;->k()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x2e

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    :try_start_0
    const-string v5, "hid/payloads"

    .line 19
    .line 20
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_0
    array-length v6, v5

    .line 28
    move v7, v3

    .line 29
    :goto_0
    if-ge v7, v6, :cond_6

    .line 30
    .line 31
    aget-object v8, v5, v7

    .line 32
    .line 33
    const-string v9, ".ducky"

    .line 34
    .line 35
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-nez v9, :cond_1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v10, "hid/payloads/"

    .line 48
    .line 49
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 60
    .line 61
    .line 62
    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :try_start_2
    invoke-static {v9}, Lv1/e;->l(Ljava/io/InputStream;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v9, :cond_3

    .line 68
    .line 69
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v10

    .line 74
    if-eqz v9, :cond_2

    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception v9

    .line 81
    :try_start_5
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_1
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    :catch_0
    const/4 v10, 0x0

    .line 86
    :cond_3
    :goto_2
    if-nez v10, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    :try_start_6
    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-lez v9, :cond_5

    .line 94
    .line 95
    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    :cond_5
    new-instance v9, Lj3/a;

    .line 100
    .line 101
    invoke-static {v8}, Lv1/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-direct {v9, v8, v11, v10, v4}, Lj3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 109
    .line 110
    .line 111
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_1
    :cond_6
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v3}, Lv1/e;->o(Z)Ljava/io/File;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_b

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_7

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_7
    new-instance v6, Lx2/a;

    .line 133
    .line 134
    invoke-direct {v6, v4}, Lx2/a;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-nez v4, :cond_8

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_8
    array-length v5, v4

    .line 145
    move v6, v3

    .line 146
    :goto_5
    if-ge v6, v5, :cond_b

    .line 147
    .line 148
    aget-object v7, v4, v6

    .line 149
    .line 150
    invoke-static {v7}, Lv1/e;->m(Ljava/io/File;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    if-nez v8, :cond_9

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-lez v9, :cond_a

    .line 166
    .line 167
    invoke-virtual {v7, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    :cond_a
    new-instance v9, Lj3/a;

    .line 172
    .line 173
    invoke-static {v7}, Lv1/e;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const/4 v11, 0x2

    .line 178
    invoke-direct {v9, v7, v10, v8, v11}, Lj3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_b
    :goto_7
    iget-object v2, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v2, Ll4/l;

    .line 190
    .line 191
    const-string v3, "hid_payload_hidden"

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2}, Lv1/e;->h(Ljava/lang/String;)Ljava/util/Set;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_c

    .line 215
    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Lj3/a;

    .line 221
    .line 222
    iget-object v5, v4, Lj3/a;->a:Ljava/lang/String;

    .line 223
    .line 224
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :cond_d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Lj3/a;

    .line 243
    .line 244
    iget-object v4, v1, Lj3/a;->a:Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_e

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_e
    iget-object v4, v1, Lj3/a;->a:Ljava/lang/String;

    .line 254
    .line 255
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-nez v5, :cond_d

    .line 260
    .line 261
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 266
    .line 267
    iget-object v1, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v1, Ll4/l;

    .line 270
    .line 271
    const-string v2, "hid_payload_order"

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v1}, Lv1/e;->h(Ljava/lang/String;)Ljava/util/Set;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    :cond_10
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_11

    .line 302
    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 308
    .line 309
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    check-cast v2, Lj3/a;

    .line 314
    .line 315
    if-eqz v2, :cond_10

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    .line 329
    .line 330
    new-instance v2, Le0/b;

    .line 331
    .line 332
    const/4 v3, 0x6

    .line 333
    invoke-direct {v2, v3}, Le0/b;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    .line 341
    .line 342
    return-object v1
.end method

.method public final g(Le0/h;)V
    .locals 4

    .line 1
    iget v0, p1, Le0/h;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lf/q0;

    .line 8
    .line 9
    iget-object v1, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Le0/a;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iget-object p1, p1, Le0/h;->a:Landroid/graphics/Typeface;

    .line 17
    .line 18
    invoke-direct {v2, p0, v0, p1, v3}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lf/q0;

    .line 28
    .line 29
    iget-object v1, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v2, Lb/d;

    .line 34
    .line 35
    invoke-direct {v2, p0, p1, v0}, Lb/d;-><init>(Lv1/e;Lf/q0;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final declared-synchronized i()Lw5/i;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lw5/i;

    move-object v2, v0

    check-cast v2, Lw5/i;

    if-eqz v2, :cond_0

    check-cast v0, Lw5/i;

    iget-object v0, v0, Lw5/i;->c:Lw5/i;

    iput-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/e;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lw5/i;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/e;->a:Ljava/lang/Object;

    check-cast v0, Lw5/i;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lv1/e;->i()Lw5/i;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lv1/e;->o(Z)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v3, "[^a-z0-9_-]"

    .line 17
    .line 18
    const-string v4, "_"

    .line 19
    .line 20
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    const-string v4, ".ducky"

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 43
    .line 44
    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :catchall_0
    move-exception p2

    .line 61
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    :catch_0
    return v2
.end method

.method public final o(Z)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lv1/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "hid/payloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Landroidx/core/view/c1;->j(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p1, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/core/view/o2;->m()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object p2, p0, Lv1/e;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/core/view/q2;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/core/view/q2;->d()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/core/view/q2;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/core/view/q2;->a()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    iget-object v0, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lv1/e;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, p1}, Landroidx/core/view/c1;->b(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroidx/core/view/q2;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/core/view/q2;->d()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/core/view/q2;->c()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/core/view/q2;->a()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 117
    .line 118
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 119
    .line 120
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 121
    .line 122
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1, v2, p2}, Landroidx/core/view/q2;->f(IIII)Landroidx/core/view/q2;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method
