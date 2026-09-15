.class public final Lv1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv1/h;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv1/h;->c:Ljava/lang/Object;

    new-instance p1, Ln/k;

    invoke-direct {p1}, Ln/k;-><init>()V

    iput-object p1, p0, Lv1/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lq0/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/h;->d:Ljava/lang/Object;

    iput-object p2, p0, Lv1/h;->a:Ljava/lang/Object;

    new-instance p1, Landroidx/emoji2/text/u;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/u;-><init>(I)V

    iput-object p1, p0, Lv1/h;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2
    invoke-virtual {p2, p1}, Lq0/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v2, p2, Lq0/c;->a:I

    add-int/2addr v0, v2

    iget-object v2, p2, Lq0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p2, Lq0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 4
    new-array v0, v0, [C

    iput-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, p1}, Lq0/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget v0, p2, Lq0/c;->a:I

    add-int/2addr p1, v0

    iget-object v0, p2, Lq0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p2, Lq0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 7
    new-instance v0, Landroidx/emoji2/text/p;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/p;-><init>(Lv1/h;I)V

    .line 8
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->c()Lq0/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 9
    invoke-virtual {v2, v3}, Lq0/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lq0/c;->b:Ljava/nio/ByteBuffer;

    iget v2, v2, Lq0/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    iget-object v3, p0, Lv1/h;->b:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    .line 10
    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 11
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, Lv1/f;->e(Ljava/lang/String;Z)V

    iget-object v2, p0, Lv1/h;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/u;

    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v1, v4}, Landroidx/emoji2/text/u;->a(Landroidx/emoji2/text/p;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly0/w;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/h;->a:Ljava/lang/Object;

    new-instance v0, Lv1/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lv1/b;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    new-instance v0, Ln/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ln/a;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/h;->c:Ljava/lang/Object;

    new-instance v0, Ln/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ln/a;-><init>(Ljava/lang/Object;Ly0/w;I)V

    iput-object v0, p0, Lv1/h;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Li/c;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lv1/h;->k(Li/c;)Li/h;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/w;

    iget-object v2, p0, Lv1/h;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    check-cast p2, Lb0/b;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/w;-><init>(Landroid/content/Context;Lb0/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b(Li/c;Landroidx/appcompat/view/menu/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lv1/h;->k(Li/c;)Li/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lv1/h;->l(Landroidx/appcompat/view/menu/o;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(Li/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lv1/h;->k(Li/c;)Li/h;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final d(Li/c;Landroidx/appcompat/view/menu/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv1/h;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lv1/h;->k(Li/c;)Li/h;

    move-result-object p1

    invoke-virtual {p0, p2}, Lv1/h;->l(Landroidx/appcompat/view/menu/o;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized e(Ljava/io/FileDescriptor;)I
    .locals 5

    .line 1
    const-string v0, "addFd failed: "

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "execute"

    const-string v4, "add-fd"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lv1/h;->r(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Lv1/h;->p()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "return"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "return"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "fdset-id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "QmpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    iput-object v0, p0, Lv1/h;->c:Ljava/lang/Object;

    iput-object v0, p0, Lv1/h;->d:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Z
    .locals 5

    .line 1
    const-string v0, "connect failed: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v2, Landroid/net/LocalSocketAddress;

    .line 12
    .line 13
    iget-object v3, p0, Lv1/h;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroid/net/LocalSocket;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lv1/h;->c:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v1, Ljava/io/BufferedReader;

    .line 36
    .line 37
    new-instance v2, Ljava/io/InputStreamReader;

    .line 38
    .line 39
    iget-object v3, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Landroid/net/LocalSocket;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lv1/h;->d:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "execute"

    .line 66
    .line 67
    const-string v3, "qmp_capabilities"

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v1, v2}, Lv1/h;->r(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lv1/h;->p()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit p0

    .line 84
    const/4 v0, 0x1

    .line 85
    return v0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    :try_start_1
    const-string v2, "QmpClient"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lv1/h;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    monitor-exit p0

    .line 114
    const/4 v0, 0x0

    .line 115
    return v0

    .line 116
    :goto_0
    monitor-exit p0

    .line 117
    throw v0
.end method

.method public final declared-synchronized h(Lorg/json/JSONObject;)Z
    .locals 5

    .line 1
    const-string v0, "deviceAdd failed: "

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "execute"

    const-string v4, "device_add"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "arguments"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lv1/h;->r(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Lv1/h;->p()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "QmpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "device_del"

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    new-instance v2, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :try_start_2
    invoke-virtual {p0, v2, v0}, Lv1/h;->j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "execute"

    .line 8
    .line 9
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v2, "arguments"

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v0}, Lv1/h;->r(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lv1/h;->p()Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p1

    .line 34
    :goto_1
    const-string v1, " failed: "

    .line 35
    .line 36
    invoke-static {p2, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "QmpClient"

    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final k(Li/c;)Li/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lv1/h;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/h;

    if-eqz v2, :cond_0

    iget-object v3, v2, Li/h;->b:Li/c;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Li/h;

    iget-object v1, p0, Lv1/h;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Li/h;-><init>(Landroid/content/Context;Li/c;)V

    iget-object p1, p0, Lv1/h;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final l(Landroidx/appcompat/view/menu/o;)Landroid/view/Menu;
    .locals 2

    .line 1
    iget-object v0, p0, Lv1/h;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ln/k;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/Menu;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroidx/appcompat/view/menu/f0;

    .line 15
    .line 16
    iget-object v1, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/f0;-><init>(Landroid/content/Context;Lb0/a;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lv1/h;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ln/k;

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public final m(Lv1/i;)Lv1/g;
    .locals 6

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v1, v0}, Ly0/y;->t(ILjava/lang/String;)Ly0/y;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p1, Lv1/i;->a:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ly0/y;->h(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v3, v2}, Ly0/y;->d(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget p1, p1, Lv1/i;->b:I

    .line 26
    .line 27
    int-to-long v2, p1

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Ly0/y;->m(IJ)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lv1/h;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Ly0/w;

    .line 34
    .line 35
    invoke-virtual {p1}, Ly0/w;->b()V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :try_start_0
    const-string v2, "work_spec_id"

    .line 44
    .line 45
    invoke-static {p1, v2}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v3, "generation"

    .line 50
    .line 51
    invoke-static {p1, v3}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const-string v4, "system_id"

    .line 56
    .line 57
    invoke-static {p1, v4}, Landroidx/lifecycle/k;->g(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    new-instance v4, Lv1/g;

    .line 87
    .line 88
    invoke-direct {v4, v1, v2, v3}, Lv1/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    move-object v1, v4

    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ly0/y;->u()V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public final n(Lv1/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv1/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ly0/w;

    .line 5
    .line 6
    invoke-virtual {v1}, Ly0/w;->b()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ly0/w;->c()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ly0/d;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ly0/d;->u(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Ly0/w;

    .line 20
    .line 21
    invoke-virtual {v0}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v1}, Ly0/w;->k()V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final declared-synchronized o()Z
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final p()Lorg/json/JSONObject;
    .locals 6

    .line 1
    const-string v0, "QmpClient"

    const-string v1, "error"

    :catch_0
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lv1/h;->d:Ljava/lang/Object;

    check-cast v3, Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "return"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QMP error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readReturn: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method public final declared-synchronized q(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "remove-fd"

    .line 3
    .line 4
    const-string v1, "fdset-id"

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :try_start_2
    invoke-virtual {p0, v2, v0}, Lv1/h;->j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public final r(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/net/LocalSocket;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/io/FileDescriptor;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p2, v1, v2

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lv1/h;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/io/OutputStream;

    .line 19
    .line 20
    const-string v1, "\n"

    .line 21
    .line 22
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lv1/h;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Ljava/io/OutputStream;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lv1/h;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroid/net/LocalSocket;

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
