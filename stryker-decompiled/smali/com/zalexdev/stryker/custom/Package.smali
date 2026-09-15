.class public Lcom/zalexdev/stryker/custom/Package;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public installed:Z

.field private isPythonPackage:Z

.field public name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Package;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Package;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Package;->installed:Z

    return v0
.end method

.method public isPythonPackage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Package;->isPythonPackage:Z

    return v0
.end method

.method public setInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Package;->installed:Z

    return-void
.end method

.method public setIsPythonPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Package;->isPythonPackage:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Package;->name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Package;->version:Ljava/lang/String;

    return-void
.end method
