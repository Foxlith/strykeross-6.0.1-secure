.class public Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;
    }
.end annotation


# static fields
.field private static final ARG_ADDRESS:Ljava/lang/String; = "address"

.field private static final ARG_NAME:Ljava/lang/String; = "name"

.field private static final ARG_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

.field private live:Z

.field private final onLogUpdate:Landroid/content/BroadcastReceiver;

.field private progressView:Landroid/widget/TextView;

.field private recording:Z

.field private targetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$1;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->onLogUpdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->refreshProgress()V

    return-void
.end method

.method public static create(Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;)Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;
    .locals 4

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    invoke-direct {v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "status"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p1, v0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    return-object v0
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$6(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$5(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onTest()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onMagic()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onWriteAccountKey()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onFloodKeys()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onConnectHfp()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->live:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->live:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onStartLive()V

    const p2, 0x7f130742

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onStopLive()V

    const p2, 0x7f13073e

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->recording:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->recording:Z

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onStartRecord()V

    const p2, 0x7f130742

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onStopRecord()V

    const p2, 0x7f130741

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$7(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$Listener;->onOpenTerminal()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$8(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic m(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method private refreshProgress()V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->progressView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->targetAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairLog;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->targetAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->progressView:Landroid/widget/TextView;

    const v1, 0x7f13074a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->progressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_6
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->onLogUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zalexdev.stryker.WPAIR_LOG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->onLogUpdate:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lc3/a;->s(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->onLogUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->targetAddress:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string v0, "Device"

    goto :goto_1

    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "UNKNOWN"

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "status"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const p2, 0x7f0a0738

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a073c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->targetAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a073b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0739

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->progressView:Landroid/widget/TextView;

    const p2, 0x7f0a0736

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a073a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0a073e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0737

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a073f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v5}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0734

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v5, 0x3

    invoke-direct {v2, p0, v5}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0735

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v5, 0x4

    invoke-direct {v2, p0, v5}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/zalexdev/stryker/wpair/j;

    invoke-direct {v1, p0, p2, v3}, Lcom/zalexdev/stryker/wpair/j;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/zalexdev/stryker/wpair/j;

    invoke-direct {p2, p0, v0, v4}, Lcom/zalexdev/stryker/wpair/j;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;Lcom/google/android/material/button/MaterialButton;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a073d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/zalexdev/stryker/wpair/i;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0733

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/zalexdev/stryker/wpair/i;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/zalexdev/stryker/wpair/i;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->refreshProgress()V

    return-void
.end method
