.class public Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;
.super Lorg/bouncycastle/tsp/ers/ERSDataGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;->buildGroup(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private static buildGroup(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSFileData;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lorg/bouncycastle/tsp/ers/ERSFileData;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file reference does not refer to directory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSFileData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/tsp/ers/ERSFileData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSFileData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSubdirectories()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/tsp/ers/ERSDirectoryDataGroup;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
