.class public Lcom/zalexdev/stryker/wpair/WpairFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;


# static fields
.field private static final CORE_KEY_FILTER:Ljava/lang/String; = "wpair_filter_id"

.field private static final CORE_KEY_SHOW_ALL_BLE:Ljava/lang/String; = "wpair_show_all_ble"

.field private static final KEY_DISCLAIMER_ACK:Ljava/lang/String; = "disclaimer_ack"

.field private static final KEY_PAIRED:Ljava/lang/String; = "paired_addresses"

.field private static final PREFS_NAME:Ljava/lang/String; = "wpair_prefs"


# instance fields
.field private adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

.field private final alive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

.field private btEnableLauncher:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c;"
        }
    .end annotation
.end field

.field private core:Ll4/l;

.field private emptyState:Landroid/view/View;

.field private exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

.field private fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field private filterGroup:Lcom/google/android/material/chip/ChipGroup;

.field private final liveProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pairedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionLauncher:Landroidx/activity/result/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c;"
        }
    .end annotation
.end field

.field private recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

.field private scanning:Z

.field private showAllBle:Z

.field private statPaired:Landroid/widget/TextView;

.field private statTotal:Landroid/widget/TextView;

.field private statVulnerable:Landroid/widget/TextView;

.field private tester:Lcom/zalexdev/stryker/wpair/VulnerabilityTester;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    iput-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->liveProgress:Ljava/util/Map;

    return-void
.end method

.method public static synthetic A(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$writeAccountKey$17(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method public static synthetic B(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$connectHfp$20(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic C(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startRecord$26(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic E(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$2(Z)V

    return-void
.end method

.method public static synthetic F(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onMagic$14(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method public static synthetic G(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$3(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/zalexdev/stryker/wpair/WpairFragment;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onCreate$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->writeAccountKey(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->floodKeys(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->connectHfp(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->startLive(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/zalexdev/stryker/wpair/WpairFragment;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->startRecord(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/zalexdev/stryker/wpair/WpairFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->openTerminal(Ljava/lang/String;)V

    return-void
.end method

.method private canTouchUi()Z
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private connectHfp(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connecting HFP..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->connectAudioProfile(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$connectHfp$21(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    return-void
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onTest$11(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    return-void
.end method

.method public static synthetic f(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onDeviceFound$9(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private floodKeys(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Flooding: 0/10..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p1, 0xa

    invoke-virtual {v0, v1, p1, v2}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->floodAccountKeys(Ljava/lang/String;ILcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;)V

    return-void
.end method

.method public static synthetic g(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startLive$22(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static synthetic h(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startRecord$24(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private handleExploitResult(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 3

    instance-of v0, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Success;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Success;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PAIRED! BR/EDR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Success;->brEdrAddress:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->markPaired(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    instance-of v0, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PARTIAL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;->brEdrAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$PartialSuccess;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Failed;

    const-string v1, "FAILED: "

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Failed;

    iget-object p2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$Failed;->reason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v0, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;->success:Z

    if-eqz v2, :cond_3

    const-string v1, "KEY: "

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;->message:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private hasPermissions()Z
    .locals 6

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->requiredPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lx/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic i(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method private isBluetoothEnabled()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static synthetic j(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$promptOpenSettings$29(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onViewCreated$8(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$connectHfp$20(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HFP connected - ready for audio"

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;->message:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "HFP_TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "HFP_PERMISSION_DENIED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "HFP_MANUAL_REQUIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "Connection timed out"

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->promptManualHfp()V

    const-string p1, "Manual connection required"

    :goto_1
    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7347a735 -> :sswitch_2
        -0x3bc3fbe2 -> :sswitch_1
        0x6ad46514 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$connectHfp$21(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/zalexdev/stryker/wpair/l;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$floodKeys$18(Lcom/zalexdev/stryker/wpair/FastPairDevice;ZII)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "FLOOD: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " done"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flooding: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "..."

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$floodKeys$19(Lcom/zalexdev/stryker/wpair/FastPairDevice;IIZ)V
    .locals 8

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v7, Lcom/zalexdev/stryker/wpair/q;

    move-object v1, v7

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zalexdev/stryker/wpair/q;-><init>(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->promptOpenSettings()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->isBluetoothEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->startScan()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->promptEnableBluetooth()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroidx/activity/result/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->isBluetoothEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->startScan()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDeviceFound$9(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 1

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->upsert(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshStats()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshEmptyState()V

    return-void
.end method

.method private synthetic lambda$onMagic$12(Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onMagic$13(Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/zalexdev/stryker/wpair/p;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onMagic$14(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 1

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->handleExploitResult(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method private synthetic lambda$onMagic$15(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/zalexdev/stryker/wpair/k;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onTest$10(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->updateStatus(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshStats()V

    return-void
.end method

.method private synthetic lambda$onTest$11(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lv3/g;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, p1, p2, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onViewCreated$2(Z)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0x7f0a0743

    const-string v1, "wpair_show_all_ble"

    if-ne p2, v0, :cond_1

    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    invoke-virtual {v0, v1, p1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->FAST_PAIR:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->setFilter(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;)V

    iget-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    if-eqz p1, :cond_4

    :goto_0
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->restartScan()V

    goto :goto_2

    :cond_1
    const p1, 0x7f0a0742

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    invoke-virtual {v0, v1, p1}, Ll4/l;->b0(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->ALL:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->setFilter(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;)V

    iget-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0745

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->VULNERABLE:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->setFilter(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;)V

    goto :goto_2

    :cond_3
    const p1, 0x7f0a0744

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->PAIRED:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    const-string v0, "wpair_filter_id"

    invoke-virtual {p1, p2, v0}, Ll4/l;->c0(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshEmptyState()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->openTerminal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->openRecordings()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->clearAll()V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->liveProgress:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshStats()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshEmptyState()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$7(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->stopScan()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->maybeStartScan()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onViewCreated$8(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "disclaimer_ack"

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private lambda$promptEnableBluetooth$28(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->btEnableLauncher:Landroidx/activity/result/c;

    .line 2
    .line 3
    new-instance p2, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v0, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic lambda$promptManualHfp$30(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$promptOpenSettings$29(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "package"

    invoke-static {v1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startLive$22(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Listening;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LIVE \u2014 listening to mic"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of p1, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Stopped listening"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$startLive$23(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/zalexdev/stryker/wpair/l;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRecord$24(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Recording;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Recording microphone..."

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startRecord$25(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/zalexdev/stryker/wpair/l;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRecord$26(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 4

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;->durationMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startRecord$27(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lv3/g;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, p2, p1, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$writeAccountKey$16(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;->success:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KEY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/FastPairExploit$Result$AccountKeyResult;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FAILED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$writeAccountKey$17(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 2

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/k;

    invoke-direct {v1, p0, p2, p1}, Lcom/zalexdev/stryker/wpair/k;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic m(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$writeAccountKey$16(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private markPaired(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->markPaired(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wpair_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "paired_addresses"

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshStats()V

    return-void
.end method

.method private maybeStartScan()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->hasPermissions()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->permissionLauncher:Landroidx/activity/result/c;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->requiredPermissions()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->isBluetoothEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->promptEnableBluetooth()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->startScan()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic n(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$promptEnableBluetooth$28(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onMagic$15(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method

.method private onDeviceFound(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 3

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->canTouchUi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zalexdev/stryker/wpair/e;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lcom/zalexdev/stryker/wpair/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openRecordings()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const v3, 0x7f0a0205

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "wpair_recordings"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->h(Z)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private openTerminal(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->newInstance()Lcom/zalexdev/stryker/wpair/WpairTerminal;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->forHost(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/WpairTerminal;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroidx/fragment/app/a;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const v2, 0x7f0a0205

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, v0, v2}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string p1, "wpair_terminal"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v1, p1}, Landroidx/fragment/app/a;->h(Z)I

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic p(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p3, p2, p0, p1, p4}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$floodKeys$19(Lcom/zalexdev/stryker/wpair/FastPairDevice;IIZ)V

    return-void
.end method

.method private promptEnableBluetooth()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130739

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f130738

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/zalexdev/stryker/wpair/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zalexdev/stryker/wpair/m;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f13073a

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private promptManualHfp()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130757

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f130756

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/zalexdev/stryker/wpair/m;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/zalexdev/stryker/wpair/m;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f130758

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private promptOpenSettings()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13075b

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f130759

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/zalexdev/stryker/wpair/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/zalexdev/stryker/wpair/m;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f13075a

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public static synthetic q(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onMagic$12(Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->onDeviceFound(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public static recordingsDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "wpair-recordings"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method private refreshEmptyState()V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->emptyState:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private refreshStats()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->totalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statVulnerable:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->vulnerableCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statPaired:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private requiredPermissions()[Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "android.permission.RECORD_AUDIO"

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restartScan()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->stop()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    iget-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairScanner;->start(Z)Z

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onMagic$13(Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V

    return-void
.end method

.method private setProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->liveProgress:Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startLive(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting live audio..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    new-instance v1, Lcom/zalexdev/stryker/wpair/n;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startListening(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method private startRecord(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->recordingsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recording..."

    invoke-direct {p0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lcom/zalexdev/stryker/wpair/n;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startRecording(Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;)V

    return-void
.end method

.method private startScan()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/wpair/WpairScanner;->start(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->lastError()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v3, "unknown"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v3, v0

    .line 31
    :goto_0
    const-string v4, "Scan start failed: "

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "off"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->promptEnableBluetooth()V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "permission"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->permissionLauncher:Landroidx/activity/result/c;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->requiredPermissions()[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    return-void

    .line 86
    :cond_4
    iput-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 89
    .line 90
    const v1, 0x7f130751

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 103
    .line 104
    const v2, 0x7f0801b8

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v2, "user start scan (allBle="

    .line 121
    .line 122
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-boolean v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, ")"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-static {v0, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairLog;->info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private stopScan()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    const v1, 0x7f130750

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 26
    .line 27
    const v2, 0x7f0801a7

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic t(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$promptManualHfp$30(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startRecord$27(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;)V

    return-void
.end method

.method public static synthetic v(Lcom/zalexdev/stryker/wpair/WpairFragment;Landroidx/activity/result/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onCreate$1(Landroidx/activity/result/a;)V

    return-void
.end method

.method public static synthetic w(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startRecord$25(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    return-void
.end method

.method private writeAccountKey(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Writing account key..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->writeAccountKeyDirect(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;)V

    return-void
.end method

.method public static synthetic x(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V
    .locals 0

    .line 1
    invoke-direct {p2, p1, p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$startLive$23(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    return-void
.end method

.method public static synthetic y(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$onTest$10(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    return-void
.end method

.method public static synthetic z(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p3, p2, p4, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->lambda$floodKeys$18(Lcom/zalexdev/stryker/wpair/FastPairDevice;ZII)V

    return-void
.end method


# virtual methods
.method public getDefaultViewModelCreationExtras()Lu0/b;
    .locals 1

    .line 1
    sget-object v0, Lu0/a;->b:Lu0/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ld/e;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/material/sidesheet/b;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/sidesheet/b;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->permissionLauncher:Landroidx/activity/result/c;

    .line 20
    .line 21
    new-instance p1, Ld/f;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/google/android/material/sidesheet/b;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/sidesheet/b;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->btEnableLauncher:Landroidx/activity/result/c;

    .line 37
    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->release()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->stop()V

    :cond_0
    iput-boolean v1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanning:Z

    return-void
.end method

.method public onMagic(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing exploit..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lcom/zalexdev/stryker/wpair/n;

    const/4 v4, 0x5

    invoke-direct {v3, p0, p1, v4}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->exploit(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/FastPairExploit$ProgressCallback;Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;)V

    return-void
.end method

.method public onOpenActions(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/zalexdev/stryker/wpair/WpairFragment$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->create(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;)Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    const-string v1, "wpair_actions"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    return-void
.end method

.method public onTest(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->tester:Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->TESTING:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->updateStatus(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Testing for CVE-2025-36911..."

    invoke-direct {p0, v0, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->setProgress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->tester:Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zalexdev/stryker/wpair/n;

    const/16 v3, 0x8

    invoke-direct {v2, p0, p1, v3}, Lcom/zalexdev/stryker/wpair/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;->testDevice(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/VulnerabilityTester$ResultCallback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->alive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ll4/l;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    .line 17
    .line 18
    const-string v0, "bluetooth"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    new-instance v2, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    .line 35
    .line 36
    invoke-direct {v2, p2}, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->tester:Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    .line 40
    .line 41
    new-instance v2, Lcom/zalexdev/stryker/wpair/FastPairExploit;

    .line 42
    .line 43
    invoke-direct {v2, p2}, Lcom/zalexdev/stryker/wpair/FastPairExploit;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->exploit:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    .line 47
    .line 48
    new-instance v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    .line 49
    .line 50
    invoke-direct {v2, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->audio:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    .line 54
    .line 55
    new-instance v3, Lv1/n;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-direct {v3, v4}, Lv1/n;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->initialize(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/zalexdev/stryker/wpair/WpairScanner;

    .line 65
    .line 66
    new-instance v3, Lcom/google/android/material/sidesheet/b;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-direct {v3, p0, v5}, Lcom/google/android/material/sidesheet/b;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, p2, v0, v3}, Lcom/zalexdev/stryker/wpair/WpairScanner;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/zalexdev/stryker/wpair/WpairScanner$OnDeviceFound;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->scanner:Lcom/zalexdev/stryker/wpair/WpairScanner;

    .line 76
    .line 77
    const-string v0, "wpair_prefs"

    .line 78
    .line 79
    invoke-virtual {p2, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    .line 89
    .line 90
    new-instance v3, Ljava/util/HashSet;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v6, "paired_addresses"

    .line 96
    .line 97
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    .line 105
    .line 106
    const-string v3, "wpair_show_all_ble"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iput-boolean v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->showAllBle:Z

    .line 113
    .line 114
    const v2, 0x7f0a0732

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 122
    .line 123
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    const v2, 0x7f0a0740

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->emptyState:Landroid/view/View;

    .line 133
    .line 134
    const v2, 0x7f0a0753

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statTotal:Landroid/widget/TextView;

    .line 144
    .line 145
    const v2, 0x7f0a0754

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statVulnerable:Landroid/widget/TextView;

    .line 155
    .line 156
    const v2, 0x7f0a0752

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Landroid/widget/TextView;

    .line 164
    .line 165
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->statPaired:Landroid/widget/TextView;

    .line 166
    .line 167
    const v2, 0x7f0a0746

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    .line 175
    .line 176
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->filterGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 177
    .line 178
    const v2, 0x7f0a0741

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 186
    .line 187
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 188
    .line 189
    new-instance v2, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    .line 190
    .line 191
    invoke-direct {v2, p2, p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;-><init>(Landroid/content/Context;Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;)V

    .line 192
    .line 193
    .line 194
    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->pairedAddresses:Ljava/util/Set;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->setPairedAddresses(Ljava/util/Set;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 202
    .line 203
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    invoke-direct {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    .line 216
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->filterGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 222
    .line 223
    new-instance v3, Lcom/google/android/material/sidesheet/b;

    .line 224
    .line 225
    invoke-direct {v3, p0, v1}, Lcom/google/android/material/sidesheet/b;-><init>(Ljava/lang/Object;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->core:Ll4/l;

    .line 232
    .line 233
    iget-object v2, v2, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 234
    .line 235
    const-string v3, "wpair_filter_id"

    .line 236
    .line 237
    const v6, 0x7f0a0743

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->filterGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 245
    .line 246
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    if-eqz v3, :cond_1

    .line 251
    .line 252
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->filterGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 253
    .line 254
    invoke-virtual {v3, v2}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 255
    .line 256
    .line 257
    :cond_1
    const v2, 0x7f0a0756

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 265
    .line 266
    new-instance v3, Lcom/zalexdev/stryker/wpair/o;

    .line 267
    .line 268
    invoke-direct {v3, p0, v5}, Lcom/zalexdev/stryker/wpair/o;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    const v2, 0x7f0a074f

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 282
    .line 283
    new-instance v3, Lcom/zalexdev/stryker/wpair/o;

    .line 284
    .line 285
    invoke-direct {v3, p0, v1}, Lcom/zalexdev/stryker/wpair/o;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    const v1, 0x7f0a072a

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 299
    .line 300
    new-instance v1, Lcom/zalexdev/stryker/wpair/o;

    .line 301
    .line 302
    const/4 v2, 0x2

    .line 303
    invoke-direct {v1, p0, v2}, Lcom/zalexdev/stryker/wpair/o;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairFragment;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 310
    .line 311
    new-instance v1, Lcom/zalexdev/stryker/wpair/o;

    .line 312
    .line 313
    invoke-direct {v1, p0, v4}, Lcom/zalexdev/stryker/wpair/o;-><init>(Lcom/zalexdev/stryker/wpair/WpairFragment;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshStats()V

    .line 320
    .line 321
    .line 322
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->refreshEmptyState()V

    .line 323
    .line 324
    .line 325
    const-string p1, "disclaimer_ack"

    .line 326
    .line 327
    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-nez p1, :cond_2

    .line 332
    .line 333
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 334
    .line 335
    invoke-direct {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    const p2, 0x7f130749

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    const p2, 0x7f130748

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    new-instance p2, Lcom/zalexdev/stryker/wpair/m;

    .line 357
    .line 358
    invoke-direct {p2, v0, v4}, Lcom/zalexdev/stryker/wpair/m;-><init>(Ljava/lang/Object;I)V

    .line 359
    .line 360
    .line 361
    const v0, 0x7f130747

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 369
    .line 370
    .line 371
    :cond_2
    return-void
.end method
