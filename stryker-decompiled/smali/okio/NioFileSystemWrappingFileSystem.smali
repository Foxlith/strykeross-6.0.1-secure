.class public final Lokio/NioFileSystemWrappingFileSystem;
.super Lokio/NioSystemFileSystem;
.source "SourceFile"


# instance fields
.field private final nioFileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method public constructor <init>(Ljava/nio/file/FileSystem;)V
    .locals 1

    const-string v0, "nioFileSystem"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/NioSystemFileSystem;-><init>()V

    iput-object p1, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    return-void
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "*"

    const-string v4, "<this>"

    .line 2
    invoke-static {v0, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lf4/b;->j(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lf4/b;->i(Ljava/lang/Object;)Ljava/nio/file/DirectoryStream;

    move-result-object v4

    const-string v5, "it"

    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v2}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    sget-object v3, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lx4/k;->s0(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception v4

    .line 4
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/nio/file/LinkOption;

    .line 5
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    .line 6
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "failed to list "

    .line 8
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-object v2
.end method

.method private final resolve(Lokio/Path;)Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lf4/b;->k(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "getPath(...)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly4/b;

    .line 7
    .line 8
    invoke-direct {v0}, Ly4/b;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {v0}, Lv1/f;->b(Ly4/b;)Ly4/b;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ly4/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    .line 39
    .line 40
    array-length v0, p2

    .line 41
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 46
    .line 47
    array-length v0, p2

    .line 48
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "newOutputStream(this, *options)"

    .line 59
    .line 60
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p1

    const-string p2, "move(this, target, *options)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "atomic move not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 5

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/nio/file/LinkOption;

    .line 14
    .line 15
    invoke-interface {v1, v3}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "toRealPath(...)"

    .line 20
    .line 21
    invoke-static {v1, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v1, v2, v3, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p1

    .line 31
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 32
    .line 33
    const-string v1, "no such file: "

    .line 34
    .line 35
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 3

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lokio/FileMetadata;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v1

    .line 22
    :goto_0
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " already exists."

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_2
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-array v0, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 61
    .line 62
    invoke-static {p2, v0}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string v0, "createDirectory(this, *attributes)"

    .line 67
    .line 68
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception p2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 77
    .line 78
    const-string v1, "failed to create directory: "

    .line 79
    .line 80
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    const-string p2, "createSymbolicLink(this, target, *attributes)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lokio/Path;Z)V
    .locals 2

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const/4 p2, 0x0

    .line 21
    new-array v1, p2, [Ljava/nio/file/LinkOption;

    .line 22
    .line 23
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, [Ljava/nio/file/LinkOption;

    .line 28
    .line 29
    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v0, "failed to delete "

    .line 39
    .line 40
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :catch_1
    if-nez p2, :cond_1

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 52
    .line 53
    const-string v0, "no such file: "

    .line 54
    .line 55
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 64
    .line 65
    const-string p2, "interrupted"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "dir"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    return-object p1
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/NioSystemFileSystem;->metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 4

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    .line 12
    .line 13
    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    new-instance v0, Lokio/NioFileSystemFileHandle;

    .line 23
    .line 24
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v3, p1}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 32
    .line 33
    const-string v1, "no such file: "

    .line 34
    .line 35
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Cannot require mustCreate and mustExist at the same time."

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ly4/b;

    .line 24
    .line 25
    invoke-direct {v0}, Ly4/b;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0, p2}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    if-nez p3, :cond_3

    .line 47
    .line 48
    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_2
    invoke-static {v0}, Lv1/f;->b(Ly4/b;)Ly4/b;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Ly4/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    .line 67
    .line 68
    array-length v0, p2

    .line 69
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 74
    .line 75
    invoke-static {p3, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    new-instance p2, Lokio/NioFileSystemFileHandle;

    .line 80
    .line 81
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 p3, 0x1

    .line 85
    invoke-direct {p2, p3, p1}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :catch_0
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 90
    .line 91
    const-string p3, "no such file: "

    .line 92
    .line 93
    invoke-static {p3, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly4/b;

    .line 7
    .line 8
    invoke-direct {v0}, Ly4/b;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ly4/b;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lv1/f;->b(Ly4/b;)Ly4/b;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/nio/file/StandardOpenOption;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Ly4/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    .line 34
    .line 35
    array-length v1, p2

    .line 36
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 41
    .line 42
    array-length v1, p2

    .line 43
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, [Ljava/nio/file/OpenOption;

    .line 48
    .line 49
    invoke-static {v0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v0, "newOutputStream(this, *options)"

    .line 54
    .line 55
    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :catch_0
    new-instance p2, Ljava/io/FileNotFoundException;

    .line 64
    .line 65
    const-string v0, "no such file: "

    .line 66
    .line 67
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 3

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    .line 12
    .line 13
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, [Ljava/nio/file/OpenOption;

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "newInputStream(this, *options)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p1

    .line 33
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 34
    .line 35
    const-string v1, "no such file: "

    .line 36
    .line 37
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method
