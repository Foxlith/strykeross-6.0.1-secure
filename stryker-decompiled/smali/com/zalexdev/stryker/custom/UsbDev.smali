.class public Lcom/zalexdev/stryker/custom/UsbDev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public commandDis:Ljava/lang/String;

.field public commandMon:Ljava/lang/String;

.field public ifc:Ljava/lang/String;

.field public pid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/UsbDev;->ifc:Ljava/lang/String;

    iput-object p2, p0, Lcom/zalexdev/stryker/custom/UsbDev;->pid:Ljava/lang/String;

    iput-object p3, p0, Lcom/zalexdev/stryker/custom/UsbDev;->commandMon:Ljava/lang/String;

    iput-object p4, p0, Lcom/zalexdev/stryker/custom/UsbDev;->commandDis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandDis()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/UsbDev;->commandDis:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zalexdev/stryker/custom/UsbDev;->ifc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$ifc"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandMon()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/UsbDev;->commandMon:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zalexdev/stryker/custom/UsbDev;->ifc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$ifc"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIfc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/UsbDev;->ifc:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/UsbDev;->pid:Ljava/lang/String;

    return-object v0
.end method
