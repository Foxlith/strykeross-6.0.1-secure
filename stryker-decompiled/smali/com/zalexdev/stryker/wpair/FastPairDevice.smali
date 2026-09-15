.class public Lcom/zalexdev/stryker/wpair/FastPairDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;,
        Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;,
        Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
    }
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private final hasAccountKeyFilter:Z

.field private final isFastPair:Z

.field private lastSeen:J

.field private final modelId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final pairingMode:Z

.field private final rssi:I

.field private status:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->NOT_TESTED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->status:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->address:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->pairingMode:Z

    iput-boolean p4, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->hasAccountKeyFilter:Z

    iput-object p5, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->modelId:Ljava/lang/String;

    iput p6, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->rssi:I

    iput-boolean p7, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->lastSeen:J

    return-void
.end method


# virtual methods
.method public displayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->modelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->deviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair:Z

    if-eqz v0, :cond_2

    const-string v0, "Unknown Fast Pair Device"

    goto :goto_0

    :cond_2
    const-string v0, "BLE Device"

    :goto_0
    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSeen()J
    .locals 2

    iget-wide v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->lastSeen:J

    return-wide v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->modelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->rssi:I

    return v0
.end method

.method public getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->status:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    return-object v0
.end method

.method public hasAccountKeyFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->hasAccountKeyFilter:Z

    return v0
.end method

.method public isFastPair()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair:Z

    return v0
.end method

.method public isKnownVulnerable()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->modelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->isKnownVulnerable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPairingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->pairingMode:Z

    return v0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->modelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->manufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLastSeen(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->lastSeen:J

    return-void
.end method

.method public setStatus(Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->status:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    return-void
.end method

.method public signalStrength()Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
    .locals 2

    iget v0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice;->rssi:I

    const/16 v1, -0x32

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->EXCELLENT:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0

    :cond_0
    const/16 v1, -0x3c

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->GOOD:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0

    :cond_1
    const/16 v1, -0x46

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->FAIR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0

    :cond_2
    const/16 v1, -0x50

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0

    :cond_3
    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->VERY_WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0
.end method
