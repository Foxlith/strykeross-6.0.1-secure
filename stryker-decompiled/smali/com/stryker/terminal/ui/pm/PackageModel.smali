.class public final Lcom/stryker/terminal/ui/pm/PackageModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;


# instance fields
.field private final packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/component/pm/NeoPackageInfo;)V
    .locals 1

    const-string v0, "packageInfo"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    return-void
.end method


# virtual methods
.method public final getPackageDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/R$string;->package_details:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDependenciesString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getInstalledSizeInBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/stryker/terminal/utils/UtilsKt;->formatSizeInKB(J)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getHomePage()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(\n     \u2026ackageInfo.homePage\n    )"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getPackageInfo()Lcom/stryker/terminal/component/pm/NeoPackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    return-object v0
.end method

.method public isContentTheSameAs(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageModel;->isSameModelAs(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSameModelAs(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/stryker/terminal/ui/pm/PackageModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stryker/terminal/ui/pm/PackageModel;

    iget-object p1, p1, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageModel;->packageInfo:Lcom/stryker/terminal/component/pm/NeoPackageInfo;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/pm/NeoPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
