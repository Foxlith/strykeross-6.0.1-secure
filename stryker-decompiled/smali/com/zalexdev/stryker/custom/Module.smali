.class public Lcom/zalexdev/stryker/custom/Module;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public author:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public installed:Z

.field public name:Ljava/lang/String;

.field public only64bit:Z

.field public pksg:Ljava/lang/String;

.field public proper:Z

.field public srcinstall:Ljava/lang/String;

.field public version:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->only64bit:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->proper:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->installed:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPksg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->pksg:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcinstall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->srcinstall:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Module;->version:Ljava/lang/Double;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->installed:Z

    return v0
.end method

.method public isOnly64bit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->only64bit:Z

    return v0
.end method

.method public isProper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Module;->proper:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->author:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->desc:Ljava/lang/String;

    return-void
.end method

.method public setInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Module;->installed:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnly64bit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Module;->only64bit:Z

    return-void
.end method

.method public setPksg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->pksg:Ljava/lang/String;

    return-void
.end method

.method public setProper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Module;->proper:Z

    return-void
.end method

.method public setSrcinstall(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->srcinstall:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Module;->version:Ljava/lang/Double;

    return-void
.end method
