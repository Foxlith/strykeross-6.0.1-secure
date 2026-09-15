.class public final Lokio/internal/ResourceFileSystem;
.super Lokio/FileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/internal/ResourceFileSystem$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lokio/internal/ResourceFileSystem$Companion;

.field private static final ROOT:Lokio/Path;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final roots$delegate:Lw4/b;

.field private final systemFileSystem:Lokio/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokio/internal/ResourceFileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/internal/ResourceFileSystem$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "/"

    invoke-static {v0, v4, v2, v3, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemFileSystem"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    iput-object p1, p0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    new-instance p1, Lokio/internal/ResourceFileSystem$roots$2;

    invoke-direct {p1, p0}, Lokio/internal/ResourceFileSystem$roots$2;-><init>(Lokio/internal/ResourceFileSystem;)V

    .line 1
    new-instance p3, Lw4/f;

    invoke-direct {p3, p1}, Lw4/f;-><init>(Lj5/a;)V

    iput-object p3, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lw4/b;

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;ILkotlin/jvm/internal/f;)V
    .locals 0

    .line 3
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;)V

    return-void
.end method

.method public static final synthetic access$getClassLoader$p(Lokio/internal/ResourceFileSystem;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static final synthetic access$getCompanion$p()Lokio/internal/ResourceFileSystem$Companion;
    .locals 1

    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    return-object v0
.end method

.method public static final synthetic access$getROOT$cp()Lokio/Path;
    .locals 1

    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    return-object v0
.end method

.method public static final synthetic access$toClasspathRoots(Lokio/internal/ResourceFileSystem;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toClasspathRoots(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final canonicalizeInternal(Lokio/Path;)Lokio/Path;
    .locals 2

    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method private final getRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw4/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->roots$delegate:Lw4/b;

    check-cast v0, Lw4/f;

    invoke-virtual {v0}, Lw4/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final toClasspathRoots(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lw4/c;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "getResources(...)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "list(this)"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    invoke-static {v4}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lokio/internal/ResourceFileSystem;->toFileRoot(Ljava/net/URL;)Lw4/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lokio/internal/ResourceFileSystem;->toJarRoot(Ljava/net/URL;)Lw4/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0, v3}, Lx4/m;->B0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private final toFileRoot(Ljava/net/URL;)Lw4/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lw4/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "file"

    .line 6
    .line 7
    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    .line 16
    .line 17
    sget-object v2, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 18
    .line 19
    new-instance v3, Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-static {v2, v3, p1, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v1, Lw4/c;

    .line 35
    .line 36
    invoke-direct {v1, v0, p1}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method private final toJarRoot(Ljava/net/URL;)Lw4/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lw4/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "toString(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "jar:file:"

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v0, v1}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    const-string v0, "!"

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    invoke-static {p1, v0, v3}, Lq5/h;->y1(Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v3, -0x1

    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    sget-object v3, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 33
    .line 34
    new-instance v4, Ljava/io/File;

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 42
    .line 43
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    invoke-static {v3, v4, v1, p1, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/io/File;ZILjava/lang/Object;)Lokio/Path;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->systemFileSystem:Lokio/FileSystem;

    .line 59
    .line 60
    sget-object v1, Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;->INSTANCE:Lokio/internal/ResourceFileSystem$toJarRoot$zip$1;

    .line 61
    .line 62
    invoke-static {p1, v0, v1}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lj5/l;)Lokio/ZipFileSystem;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 67
    .line 68
    new-instance v1, Lw4/c;

    .line 69
    .line 70
    invoke-direct {v1, p1, v0}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method private final toRelativePath(Lokio/Path;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object p1

    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    invoke-virtual {p1, v0}, Lokio/Path;->relativeTo(Lokio/Path;)Lokio/Path;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    const-string p2, "file"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->canonicalizeInternal(Lokio/Path;)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 1

    const-string p2, "dir"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lokio/Path;Z)V
    .locals 1

    const-string p2, "path"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 10
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

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lw4/c;

    .line 35
    .line 36
    iget-object v5, v4, Lw4/c;->a:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Lokio/FileSystem;

    .line 39
    .line 40
    iget-object v4, v4, Lw4/c;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Lokio/Path;

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v4, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    move-object v8, v7

    .line 72
    check-cast v8, Lokio/Path;

    .line 73
    .line 74
    sget-object v9, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 75
    .line 76
    invoke-static {v9, v8}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-static {v6}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Lokio/Path;

    .line 110
    .line 111
    sget-object v8, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 112
    .line 113
    invoke-virtual {v8, v7, v4}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    invoke-static {v5, v1}, Lx4/l;->v0(Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    const/4 v3, 0x1

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-static {v1}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 134
    .line 135
    const-string v1, "file not found: "

    .line 136
    .line 137
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 9
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

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lw4/c;

    .line 36
    .line 37
    iget-object v5, v3, Lw4/c;->a:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v5, Lokio/FileSystem;

    .line 40
    .line 41
    iget-object v3, v3, Lw4/c;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lokio/Path;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v7, v6

    .line 75
    check-cast v7, Lokio/Path;

    .line 76
    .line 77
    sget-object v8, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 78
    .line 79
    invoke-static {v8, v7}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-static {v4}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lokio/Path;

    .line 113
    .line 114
    sget-object v7, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 115
    .line 116
    invoke-virtual {v7, v6, v3}, Lokio/internal/ResourceFileSystem$Companion;->removeBase(Lokio/Path;Lokio/Path;)Lokio/Path;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move-object v4, v5

    .line 125
    :cond_4
    if-eqz v4, :cond_0

    .line 126
    .line 127
    invoke-static {v4, v0}, Lx4/l;->v0(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_5
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-static {v0}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    :cond_6
    return-object v4
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 4

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lw4/c;

    .line 39
    .line 40
    iget-object v3, v2, Lw4/c;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lokio/FileSystem;

    .line 43
    .line 44
    iget-object v2, v2, Lw4/c;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lokio/Path;

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-object v2

    .line 60
    :cond_2
    return-object v1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 5

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "file not found: "

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lokio/internal/ResourceFileSystem;->toRelativePath(Lokio/Path;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0}, Lokio/internal/ResourceFileSystem;->getRoots()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lw4/c;

    .line 39
    .line 40
    iget-object v4, v3, Lw4/c;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Lokio/FileSystem;

    .line 43
    .line 44
    iget-object v3, v3, Lw4/c;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lokio/Path;

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v3, v0}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v4, v3}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object p1

    .line 57
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 58
    .line 59
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 68
    .line 69
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 0

    const-string p2, "file"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "resources are not writable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    const-string p2, "file"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 5

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/internal/ResourceFileSystem;->Companion:Lokio/internal/ResourceFileSystem$Companion;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lokio/internal/ResourceFileSystem$Companion;->access$keepPath(Lokio/internal/ResourceFileSystem$Companion;Lokio/Path;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "file not found: "

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v0, p1, v4, v2, v3}, Lokio/Path;->resolve$default(Lokio/Path;Lokio/Path;ZILjava/lang/Object;)Lokio/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Lokio/Path;->relativeTo(Lokio/Path;)Lokio/Path;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lokio/internal/ResourceFileSystem;->classLoader:Ljava/lang/ClassLoader;

    .line 30
    .line 31
    invoke-virtual {v0}, Lokio/Path;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 49
    .line 50
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 59
    .line 60
    invoke-static {v1, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method
