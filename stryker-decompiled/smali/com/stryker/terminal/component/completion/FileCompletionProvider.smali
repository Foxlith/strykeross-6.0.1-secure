.class public Lcom/stryker/terminal/component/completion/FileCompletionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/completion/ICandidateProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lj5/l;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->listDirectory$lambda$0(Lj5/l;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private final generateCandidateList(Ljava/io/File;Lj5/l;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lj5/l;",
            ")",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->listDirectory(Ljava/io/File;Lj5/l;)[Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Lcom/stryker/terminal/component/completion/CompletionCandidate;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.name"

    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/stryker/terminal/component/completion/CompletionCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->generateDesc(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/stryker/terminal/component/completion/CompletionCandidate;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->generateDisplayName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/stryker/terminal/component/completion/CompletionCandidate;->setDisplayName(Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lx4/o;->a:Lx4/o;

    :goto_1
    return-object p1
.end method

.method private final listDirectory(Ljava/io/File;Lj5/l;)[Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lj5/l;",
            ")[",
            "Ljava/io/File;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    new-instance v0, Lcom/stryker/terminal/component/completion/a;

    invoke-direct {v0, p2}, Lcom/stryker/terminal/component/completion/a;-><init>(Lj5/l;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    const-string p2, "path.listFiles(filter)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-string p2, "path.listFiles()"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private static final listDirectory$lambda$0(Lj5/l;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canComplete(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 7
    .line 8
    invoke-static {p1, v0}, Lq5/h;->L1(Ljava/lang/CharSequence;C)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "\\./"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v0, v1}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public generateDesc(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public generateDisplayName(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file.name"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "NeoTermProvider.FileCompletionProvider"

    return-object v0
.end method

.method public provideCandidates(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "file.parentFile"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;

    invoke-direct {v1, p1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->generateCandidateList(Ljava/io/File;Lj5/l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
