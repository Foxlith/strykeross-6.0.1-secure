.class public Lcom/zalexdev/stryker/custom/Device;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public image:I

.field public ip:Ljava/lang/String;

.field iscutted:Z

.field public mac:Ljava/lang/String;

.field private nmapoutput:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public os:Ljava/lang/String;

.field public ports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/Port;",
            ">;"
        }
    .end annotation
.end field

.field public portsFromString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shim:Z

.field public subname:Ljava/lang/String;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Network error..."

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->ip:Ljava/lang/String;

    const-string v0, "Scanning..."

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->mac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->vendor:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    const-string v2, "Unknown"

    iput-object v2, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->subname:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->ports:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->nmapoutput:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/custom/Device;->shim:Z

    iput-boolean v1, p0, Lcom/zalexdev/stryker/custom/Device;->iscutted:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->portsFromString:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPort(Lcom/zalexdev/stryker/custom/Port;)V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->ports:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImage()I
    .locals 2

    iget v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    if-nez v0, :cond_0

    const v0, 0x7f0800c6

    iput v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801e3

    iput v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080123

    iput v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f08011b

    iput v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "IOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "MacOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    const-string v1, "Apple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const v0, 0x7f080081

    iput v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    :cond_5
    iget v0, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getNmapoutput()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->nmapoutput:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/Port;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->ports:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->subname:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/custom/Device;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public guessos()V
    .locals 5

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/custom/Port;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "21"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Linux"

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "22"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, v3}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v2, 0x7f080123

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    :cond_2
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "554"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "37777"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "Secure Camera"

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v2, 0x7f080175

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    :cond_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "9100"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Printer"

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v2, 0x7f080194

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    :cond_5
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "2336"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3004"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3031"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "IOS/MACOS"

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v2, 0x7f080081

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    :cond_7
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3389"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "135"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "136"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "137"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "138"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "139"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "5357"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "445"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    const-string v4, "903"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "Windows"

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v2, 0x7f0801e3

    invoke-virtual {p0, v2}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    :cond_9
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const v1, 0x7f0801a3

    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public isIscutted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Device;->iscutted:Z

    return v0
.end method

.method public isShim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/custom/Device;->shim:Z

    return v0
.end method

.method public portsArrayToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/custom/Port;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public portsToString()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getPorts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/custom/Port;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/Port;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public restoreFromJSON(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ip"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setIp(Ljava/lang/String;)V

    const-string p1, "mac"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setMac(Ljava/lang/String;)V

    const-string p1, "vendor"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setVendor(Ljava/lang/String;)V

    const-string p1, "os"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const-string p1, "subname"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setSubname(Ljava/lang/String;)V

    const-string p1, "iscutted"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setIscutted(Z)V

    const-string p1, "shim"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setShim(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->portsFromString:Ljava/util/ArrayList;

    const-string v1, "ports"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setImage(I)V
    .locals 0

    iput p1, p0, Lcom/zalexdev/stryker/custom/Device;->image:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIscutted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Device;->iscutted:Z

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->mac:Ljava/lang/String;

    return-void
.end method

.method public setNmapoutput(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->nmapoutput:Ljava/util/ArrayList;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->os:Ljava/lang/String;

    return-void
.end method

.method public setPorts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/custom/Port;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->ports:Ljava/util/ArrayList;

    return-void
.end method

.method public setShim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/custom/Device;->shim:Z

    return-void
.end method

.method public setSubname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->subname:Ljava/lang/String;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/zalexdev/stryker/custom/Device;->vendor:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "apple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f080081

    if-eqz v0, :cond_0

    const-string p1, "MacOS/IOS"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    goto :goto_1

    :cond_0
    const-string v0, "microsoft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Windows"

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setOs(Ljava/lang/String;)V

    const p1, 0x7f0801e3

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/custom/Device;->setImage(I)V

    goto :goto_1

    :cond_1
    const-string v0, "hikvision"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dahua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "Secure Camera"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ip"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vendor"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getOs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "subname"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->getSubname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "iscutted"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->isIscutted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "shim"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->isShim()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ports"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/custom/Device;->portsArrayToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
