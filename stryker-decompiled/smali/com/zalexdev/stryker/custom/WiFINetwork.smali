.class public Lcom/zalexdev/stryker/custom/WiFINetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/custom/WiFINetwork$WiFIComporator;
    }
.end annotation


# instance fields
.field public canceled:Z

.field public channel:I

.field public date:Ljava/lang/String;

.field public info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is5hhz:Ljava/lang/Boolean;

.field public isBlocked:Ljava/lang/Boolean;

.field public isOK:Ljava/lang/Boolean;

.field public isVulnVerified:Ljava/lang/Boolean;

.field public isVulnerable:Ljava/lang/Boolean;

.field public lon:Ljava/lang/String;

.field public lun:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public power:I

.field public psk:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public three:Z

.field public vendor:Ljava/lang/String;

.field public wps:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XX:XX:XX:XX:XX:XX"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->mac:Ljava/lang/String;

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->wps:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->is5hhz:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isOK:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isBlocked:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnerable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnVerified:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->model:Ljava/lang/String;

    const/16 v1, 0x28

    iput v1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->power:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->channel:I

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lon:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lun:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->date:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->psk:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->pin:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->canceled:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->three:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->info:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBlocked()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isBlocked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->channel:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->info:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIs5hhz()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->channel:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lon:Ljava/lang/String;

    return-object v0
.end method

.method public getLun()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lun:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->model:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOK()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isOK:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()I
    .locals 1

    iget v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->power:I

    return v0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->psk:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getWps()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->wps:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->canceled:Z

    return v0
.end method

.method public isThree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->three:Z

    return v0
.end method

.method public isVulnVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnVerified:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVulnerable()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnerable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setBlocked(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isBlocked:Ljava/lang/Boolean;

    return-void
.end method

.method public setCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->canceled:Z

    return-void
.end method

.method public setChannel(I)V
    .locals 0

    iput p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->channel:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->date:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->info:Ljava/util/ArrayList;

    return-void
.end method

.method public setIs5hhz(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->is5hhz:Ljava/lang/Boolean;

    return-void
.end method

.method public setLon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lon:Ljava/lang/String;

    return-void
.end method

.method public setLun(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->lun:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->mac:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->model:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->name:Ljava/lang/String;

    return-void
.end method

.method public setOK(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isOK:Ljava/lang/Boolean;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->pin:Ljava/lang/String;

    return-void
.end method

.method public setPower(I)V
    .locals 0

    iput p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->power:I

    return-void
.end method

.method public setPsk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->psk:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    return-void
.end method

.method public setThree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->three:Z

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->vendor:Ljava/lang/String;

    return-void
.end method

.method public setVulnVerified(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnVerified:Ljava/lang/Boolean;

    return-void
.end method

.method public setVulnerable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->isVulnerable:Ljava/lang/Boolean;

    return-void
.end method

.method public setWps(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/WiFINetwork;->wps:Ljava/lang/Boolean;

    return-void
.end method
