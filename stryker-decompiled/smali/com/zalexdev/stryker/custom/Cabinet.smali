.class public Lcom/zalexdev/stryker/custom/Cabinet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public context:Landroid/content/Context;

.field public core:Ll4/l;

.field public keyView:Ljava/lang/String;

.field public keyWrite:Ljava/lang/String;

.field public ok:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->ok:Z

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Cabinet;->context:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->core:Ll4/l;

    return-void
.end method


# virtual methods
.method public getKeyView()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyView:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWrite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyWrite:Ljava/lang/String;

    return-object v0
.end method

.method public getOk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->ok:Z

    return v0
.end method

.method public getStored()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->core:Ll4/l;

    const-string v1, "api_view"

    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyView:Ljava/lang/String;

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->core:Ll4/l;

    const-string v1, "api_write"

    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyWrite:Ljava/lang/String;

    return-void
.end method

.method public setKeyView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->core:Ll4/l;

    const-string v1, "api_view"

    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyView:Ljava/lang/String;

    return-void
.end method

.method public setKeyWrite(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Cabinet;->core:Ll4/l;

    const-string v1, "api_write"

    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Cabinet;->keyWrite:Ljava/lang/String;

    return-void
.end method

.method public setOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Cabinet;->ok:Z

    return-void
.end method
