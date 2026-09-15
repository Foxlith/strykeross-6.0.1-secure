.class public final Lcom/stryker/terminal/component/pm/NeoPackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private architecture:Lcom/stryker/terminal/component/pm/Architecture;

.field private dependencies:[Lcom/stryker/terminal/component/pm/NeoPackageInfo;

.field private dependenciesString:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private homePage:Ljava/lang/String;

.field private installedSizeInBytes:J

.field private isEssential:Z

.field private maintainer:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private sha256:Ljava/lang/String;

.field private sizeInBytes:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/stryker/terminal/component/pm/Architecture;->ALL:Lcom/stryker/terminal/component/pm/Architecture;

    iput-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->architecture:Lcom/stryker/terminal/component/pm/Architecture;

    return-void
.end method


# virtual methods
.method public final getArchitecture()Lcom/stryker/terminal/component/pm/Architecture;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->architecture:Lcom/stryker/terminal/component/pm/Architecture;

    return-object v0
.end method

.method public final getDependencies()[Lcom/stryker/terminal/component/pm/NeoPackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->dependencies:[Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    return-object v0
.end method

.method public final getDependenciesString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->dependenciesString:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHomePage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstalledSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->installedSizeInBytes:J

    return-wide v0
.end method

.method public final getMaintainer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->maintainer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSha1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public final getSha256()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public final getSizeInBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sizeInBytes:J

    return-wide v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final isEssential()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->isEssential:Z

    return v0
.end method

.method public final setArchitecture(Lcom/stryker/terminal/component/pm/Architecture;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->architecture:Lcom/stryker/terminal/component/pm/Architecture;

    return-void
.end method

.method public final setDependencies([Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->dependencies:[Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    return-void
.end method

.method public final setDependenciesString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->dependenciesString:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setEssential(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->isEssential:Z

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setHomePage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->homePage:Ljava/lang/String;

    return-void
.end method

.method public final setInstalledSizeInBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->installedSizeInBytes:J

    return-void
.end method

.method public final setMaintainer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->maintainer:Ljava/lang/String;

    return-void
.end method

.method public final setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->md5:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setSha1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sha1:Ljava/lang/String;

    return-void
.end method

.method public final setSha256(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sha256:Ljava/lang/String;

    return-void
.end method

.method public final setSizeInBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->sizeInBytes:J

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->version:Ljava/lang/String;

    return-void
.end method
