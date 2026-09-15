.class public Lcom/zalexdev/stryker/wpair/WpairScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;
    }
.end annotation


# static fields
.field public static final FAST_PAIR_SERVICE_UUID:Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "WpairScanner"


# instance fields
.field private final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final appContext:Landroid/content/Context;

.field private final callback:Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;

.field private lastError:Ljava/lang/String;

.field private scanAll:Z

.field private final scanCallback:Landroid/bluetooth/le/ScanCallback;

.field private scanning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000fe2c-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairScanner;->FAST_PAIR_SERVICE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanAll:Z

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairScanner$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairScanner;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->callback:Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;

    return-void
.end method

.method public static synthetic access$000(Lcom/zalexdev/stryker/wpair/WpairScanner;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairScanner;->process(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zalexdev/stryker/wpair/WpairScanner;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/zalexdev/stryker/wpair/WpairScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    return p1
.end method

.method private parseFastPair(Ljava/lang/String;Ljava/lang/String;[BIZ)Lcom/zalexdev/stryker/wpair/FastPairDevice;
    .locals 12

    move-object v0, p3

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_4

    aget-byte v1, v0, v3

    array-length v4, v0

    const-string v5, "%02X"

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v4, v6, :cond_1

    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v6, v0, v4

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    move v8, v3

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v1, 0x60

    if-eqz v4, :cond_2

    move-object v9, v2

    move v8, v7

    move v7, v3

    goto :goto_2

    :cond_2
    array-length v4, v0

    if-le v4, v6, :cond_4

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_3

    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v9, v2

    move v7, v3

    move v8, v7

    :goto_2
    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/zalexdev/stryker/wpair/FastPairDevice;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)V

    return-object v0
.end method

.method private process(Landroid/bluetooth/le/ScanResult;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/zalexdev/stryker/wpair/WpairScanner;->FAST_PAIR_SERVICE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zalexdev/stryker/wpair/WpairScanner;->parseFastPair(Ljava/lang/String;Ljava/lang/String;[BIZ)Lcom/zalexdev/stryker/wpair/FastPairDevice;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanAll:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/zalexdev/stryker/wpair/FastPairDevice;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)V

    move-object p1, v0

    :goto_2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->callback:Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;->onFound(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private resolveScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "No Bluetooth adapter on this device"

    :goto_0
    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bluetooth is OFF"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "BluetoothLeScanner unavailable"

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    return v0
.end method

.method public lastError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public setScanAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanAll:Z

    return-void
.end method

.method public start(Z)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->resolveScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "scan abort: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/zalexdev/stryker/wpair/WpairLog;->info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v3, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanAll:Z

    if-ne v3, p1, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->stop()V

    :cond_2
    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanAll:Z

    new-instance v3, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    const-string v5, "scan error: "

    const-string v6, "WpairScanner"

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2, v3, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    const-string v0, "scan start (all BLE)"

    :goto_1
    invoke-static {p1, v2, v0}, Lcom/zalexdev/stryker/wpair/WpairLog;->info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_3
    new-instance p1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v7, Lcom/zalexdev/stryker/wpair/WpairScanner;->FAST_PAIR_SERVICE_UUID:Landroid/os/ParcelUuid;

    new-array v8, v1, [B

    invoke-virtual {p1, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v7, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, p1, v3, v7}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    const-string v0, "scan start (Fast Pair only)"

    goto :goto_1

    :goto_2
    iput-boolean v4, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;

    const-string v0, "Failed to start scan"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_5
    const-string v0, "Missing BLUETOOTH_SCAN permission"

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError:Ljava/lang/String;

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->resolveScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->scanning:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner;->appContext:Landroid/content/Context;

    const-string v1, "scan stop"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairLog;->info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WpairScanner"

    const-string v2, "Failed to stop scan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
