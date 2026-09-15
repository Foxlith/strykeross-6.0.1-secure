.class public Lcom/stryker/terminal/component/pm/PackageComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# instance fields
.field private isRefreshing:Z

.field private final lock:Ljava/lang/Object;

.field private neoPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/pm/NeoPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private queryEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->isRefreshing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->queryEnabled:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/stryker/terminal/component/pm/PackageComponent;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->queryEnabled:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/stryker/terminal/component/pm/PackageComponent;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/stryker/terminal/component/pm/PackageComponent;Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/pm/PackageComponent;->resolveDepends(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    return-void
.end method

.method private getPackageInfo(Ljava/lang/String;)Lcom/stryker/terminal/component/pm/NeoPackageInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->queryEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private resolveDepends(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDependenciesString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->setDependencies([Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V

    const/4 p1, 0x0

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_1

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stryker/terminal/component/pm/PackageComponent;->getPackageInfo(Ljava/lang/String;)Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tryParsePackages(Ljava/io/File;Z)V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/pm/NeoPackageParser;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/pm/NeoPackageParser;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/stryker/terminal/component/pm/PackageComponent$1;

    invoke-direct {p1, p0, p2}, Lcom/stryker/terminal/component/pm/PackageComponent$1;-><init>(Lcom/stryker/terminal/component/pm/PackageComponent;Z)V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/pm/NeoPackageParser;->setStateListener(Lcom/stryker/terminal/component/pm/NeoPackageParser$ParseStateListener;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/NeoPackageParser;->parse()V

    return-void
.end method


# virtual methods
.method public clearPackages()V
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->isRefreshing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getPackageCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->queryEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/pm/NeoPackageInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->queryEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getSourceManager()Lcom/stryker/terminal/component/pm/SourceManager;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/pm/SourceManager;

    invoke-direct {v0}, Lcom/stryker/terminal/component/pm/SourceManager;-><init>()V

    return-object v0
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->neoPackages:Ljava/util/HashMap;

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    return-void
.end method

.method public reloadPackages(Ljava/io/File;Z)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->isRefreshing:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->isRefreshing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/component/pm/PackageComponent;->tryParsePackages(Ljava/io/File;Z)V

    iget-object p1, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_1
    iput-boolean p2, p0, Lcom/stryker/terminal/component/pm/PackageComponent;->isRefreshing:Z

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
