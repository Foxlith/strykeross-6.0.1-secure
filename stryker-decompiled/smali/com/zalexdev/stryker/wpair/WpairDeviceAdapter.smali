.class public Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;,
        Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;,
        Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# static fields
.field private static final PAYLOAD_RSSI:Ljava/lang/Object;

.field private static final REBUILD_DEBOUNCE_MS:J = 0xfaL


# instance fields
.field private activeFilter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

.field private final all:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/wpair/FastPairDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

.field private final pairedAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final progressByAddress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rebuildRunnable:Ljava/lang/Runnable;

.field private rebuildScheduled:Z

.field private final visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zalexdev/stryker/wpair/FastPairDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->PAYLOAD_RSSI:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->progressByAddress:Ljava/util/HashMap;

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->FAST_PAIR:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->activeFilter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    new-instance v0, Lcom/zalexdev/stryker/wpair/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/zalexdev/stryker/wpair/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->lambda$bindButtons$3(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildVisible()V

    return-void
.end method

.method private bindButtons(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 7

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair()Z

    move-result v0

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v1

    sget-object v2, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->TESTING:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v0

    sget-object v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->PATCHED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    if-eq v0, v1, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    iget-object v1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->test:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->test:Lcom/google/android/material/button/MaterialButton;

    const v5, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->magic:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->magic:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->test:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/h;

    invoke-direct {v1, p0, p2, v3}, Lcom/zalexdev/stryker/wpair/h;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->magic:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/h;

    invoke-direct {v1, p0, p2, v4}, Lcom/zalexdev/stryker/wpair/h;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->more:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, v2}, Lcom/zalexdev/stryker/wpair/h;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zalexdev/stryker/wpair/h;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lcom/zalexdev/stryker/wpair/h;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindProgress(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->progressByAddress:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->progress:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->progress:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->progress:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindStatus(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 3

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$2;->$SwitchMap$com$zalexdev$stryker$wpair$FastPairDevice$Status:[I

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const v2, -0xd182ce

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130766

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130765

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, -0x8a8a8b

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130764

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, -0x109400

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130768

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, -0x657db

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130767

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->context:Landroid/content/Context;

    const v0, 0x7f130769

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, -0x39d7d8

    :goto_1
    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic c(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->lambda$bindButtons$0(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->lambda$bindButtons$1(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->lambda$bindButtons$2(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V

    return-void
.end method

.method private indexInAll(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private indexInVisible(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private synthetic lambda$bindButtons$0(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;->onTest(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private synthetic lambda$bindButtons$1(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;->onMagic(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private synthetic lambda$bindButtons$2(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;->onOpenActions(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private synthetic lambda$bindButtons$3(Lcom/zalexdev/stryker/wpair/FastPairDevice;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->listener:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;

    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Listener;->onOpenActions(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method private rebuildVisible()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildScheduled:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->activeFilter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v2

    sget-object v3, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->VULNERABLE:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    new-instance v1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$1;

    invoke-direct {v1, p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    return-void
.end method

.method private scheduleRebuild()V
    .locals 4

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildScheduled:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->progressByAddress:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    :cond_0
    return-void
.end method

.method public currentDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zalexdev/stryker/wpair/FastPairDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public markPaired(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->scheduleRebuild()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->address:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->rssi:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->manufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getModelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ID "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getModelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isFastPair()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Fast Pair"

    goto :goto_1

    :cond_3
    const-string v0, "BLE"

    :goto_1
    iget-object v1, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->model:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->pairingBadge:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->isPairingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->bindStatus(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->bindProgress(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->bindButtons(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->PAYLOAD_RSSI:Ljava/lang/Object;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object p3, p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;->rssi:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->bindProgress(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;Lcom/zalexdev/stryker/wpair/FastPairDevice;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/k0;->onBindViewHolder(Landroidx/recyclerview/widget/p1;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d007e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;

    invoke-direct {p2, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public pairedCount()I
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setFilter(Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;)V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->activeFilter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->activeFilter:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->rebuildVisible()V

    return-void
.end method

.method public setPairedAddresses(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->pairedAddresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->progressByAddress:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->progressByAddress:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->indexInVisible(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    sget-object p2, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->PAYLOAD_RSSI:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public totalCount()I
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateStatus(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->indexInAll(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v0, p2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->setStatus(Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->indexInVisible(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public upsert(Lcom/zalexdev/stryker/wpair/FastPairDevice;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->indexInAll(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->setStatus(Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->indexInVisible(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->PAYLOAD_RSSI:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->scheduleRebuild()V

    :cond_3
    :goto_0
    return-void
.end method

.method public vulnerableCount()I
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;->all:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice;->getStatus()Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v2

    sget-object v3, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->VULNERABLE:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
