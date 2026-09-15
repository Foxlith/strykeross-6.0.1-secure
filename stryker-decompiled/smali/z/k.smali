.class public Lz/k;
.super Lf/q0;
.source "SourceFile"


# static fields
.field public static c:Ljava/lang/Class; = null

.field public static d:Ljava/lang/reflect/Constructor; = null

.field public static e:Ljava/lang/reflect/Method; = null

.field public static f:Ljava/lang/reflect/Method; = null

.field public static g:Z = false


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lf/q0;-><init>(I)V

    return-void
.end method

.method public static K(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 3

    .line 1
    invoke-static {}, Lz/k;->L()V

    :try_start_0
    sget-object v0, Lz/k;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static L()V
    .locals 8

    .line 1
    sget-boolean v0, Lz/k;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lz/k;->g:Z

    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "addFontWeightStyle"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Landroid/graphics/Typeface;

    const-string v7, "createFromFamiliesWithDefault"

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi21Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    :goto_1
    sput-object v3, Lz/k;->d:Ljava/lang/reflect/Constructor;

    sput-object v1, Lz/k;->c:Ljava/lang/Class;

    sput-object v4, Lz/k;->e:Ljava/lang/reflect/Method;

    sput-object v0, Lz/k;->f:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public x(Landroid/content/Context;Ly/g;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 8

    .line 1
    invoke-static {}, Lz/k;->L()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object p4, Lz/k;->d:Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    iget-object p2, p2, Ly/g;->a:[Ly/h;

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    move v2, v0

    .line 17
    :goto_0
    const/4 v3, 0x0

    .line 18
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    aget-object v4, p2, v2

    .line 21
    .line 22
    invoke-static {p1}, Lv1/f;->B(Landroid/content/Context;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    return-object v3

    .line 29
    :cond_0
    :try_start_1
    iget v6, v4, Ly/h;->f:I

    .line 30
    .line 31
    invoke-static {v5, p3, v6}, Lv1/f;->o(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 32
    .line 33
    .line 34
    move-result v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget v7, v4, Ly/h;->b:I

    .line 46
    .line 47
    iget-boolean v4, v4, Ly/h;->c:Z

    .line 48
    .line 49
    invoke-static {p4, v6, v7, v4}, Lz/k;->K(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 54
    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :catch_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_3
    invoke-static {}, Lz/k;->L()V

    .line 72
    .line 73
    .line 74
    :try_start_3
    sget-object p1, Lz/k;->c:Ljava/lang/Class;

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v0, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object p2, Lz/k;->f:Ljava/lang/reflect/Method;

    .line 85
    .line 86
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    .line 95
    .line 96
    return-object p1

    .line 97
    :catch_1
    move-exception p1

    .line 98
    goto :goto_1

    .line 99
    :catch_2
    move-exception p1

    .line 100
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :catch_3
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :catch_4
    move-exception p1

    .line 109
    goto :goto_2

    .line 110
    :catch_5
    move-exception p1

    .line 111
    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw p2
.end method

.method public y(Landroid/content/Context;[Le0/k;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    return-object v2

    .line 7
    :cond_0
    invoke-virtual {p0, p3, p2}, Lf/q0;->C(I[Le0/k;)Le0/k;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :try_start_0
    iget-object p2, p2, Le0/k;->a:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v0, "r"

    .line 18
    .line 19
    invoke-virtual {p3, p2, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .line 29
    .line 30
    :cond_1
    return-object v2

    .line 31
    :cond_2
    :try_start_1
    const-string p3, "/proc/self/fd/"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-static {p3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    .line 58
    .line 59
    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    new-instance v0, Ljava/io/File;

    .line 66
    .line 67
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    :cond_3
    move-object v0, v2

    .line 72
    :goto_0
    if-eqz v0, :cond_5

    .line 73
    .line 74
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    .line 82
    .line 83
    .line 84
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    :goto_1
    :try_start_5
    new-instance p3, Ljava/io/FileInputStream;

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    .line 99
    .line 100
    :try_start_6
    invoke-virtual {p0, p1, p3}, Lf/q0;->z(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    :try_start_7
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_8
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 108
    .line 109
    .line 110
    return-object p1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    :try_start_9
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception p3

    .line 117
    :try_start_a
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 121
    :goto_3
    :try_start_b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catchall_3
    move-exception p2

    .line 126
    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_4
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 130
    :catch_1
    return-object v2
.end method
