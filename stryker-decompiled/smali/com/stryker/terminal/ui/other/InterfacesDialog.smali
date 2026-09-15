.class final Lcom/stryker/terminal/ui/other/InterfacesDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final body:Landroid/widget/LinearLayout;

.field private busy:Z

.field private final dialog:Lf/n;

.field private final empty:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private final progress:Landroid/widget/ProgressBar;

.field private final root:Landroid/view/View;

.field private final subtitle:Landroid/widget/TextView;

.field private final watchdog:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_tools_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(activity).inflate(R\u2026.dialog_tools_list, null)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->root:Landroid/view/View;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->subtitle:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/stryker/terminal/R$string;->term_wifi_dialog_title:I

    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v1, Lcom/stryker/terminal/R$drawable;->ic_wifi_iface:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->term_dialog_refresh:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->term_dialog_close:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object p1

    const-string v0, "MaterialAlertDialogBuild\u2026, null)\n        .create()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/stryker/terminal/ui/other/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stryker/terminal/ui/other/g;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->show$lambda$2(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final alive()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final arm()V
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic b(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->show$lambda$2$lambda$1(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/view/View;)V

    return-void
.end method

.method private final bindRow(Landroid/view/View;Lcom/stryker/terminal/ui/other/SuUtils$Iface;)V
    .locals 5

    .line 1
    sget v0, Lcom/stryker/terminal/R$id;->iface_name:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    sget v1, Lcom/stryker/terminal/R$id;->iface_type:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/TextView;

    .line 16
    .line 17
    sget v2, Lcom/stryker/terminal/R$id;->iface_toggle:I

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 24
    .line 25
    iget-object v2, p2, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->isMonitor()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    sget v3, Lcom/stryker/terminal/R$color;->term_chip_monitor_text:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget v3, Lcom/stryker/terminal/R$color;->term_chip_managed_text:I

    .line 42
    .line 43
    :goto_0
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v2, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget v3, Lcom/stryker/terminal/R$string;->term_iface_type_monitor:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget v3, Lcom/stryker/terminal/R$string;->term_iface_type_managed:I

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/stryker/terminal/ui/other/WirelessDialogsKt;->access$tintLow(I)Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 67
    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    sget v1, Lcom/stryker/terminal/R$string;->term_monitor_disable:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget v1, Lcom/stryker/terminal/R$string;->term_monitor_enable:I

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/stryker/terminal/ui/other/h;

    .line 97
    .line 98
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/stryker/terminal/ui/other/h;-><init>(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private static final bindRow$lambda$6(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;ZLandroid/view/View;)V
    .locals 3

    const-string p4, "this$0"

    invoke-static {p0, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$iface"

    invoke-static {p2, p4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->subtitle:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$string;->term_monitor_working:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/stryker/terminal/R$string;->term_monitor_working:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->arm()V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    iget-object p2, p2, Lcom/stryker/terminal/ui/other/SuUtils$Iface;->name:Ljava/lang/String;

    xor-int/2addr p3, p4

    new-instance v0, Lcom/stryker/terminal/ui/other/g;

    invoke-direct {v0, p0, p4}, Lcom/stryker/terminal/ui/other/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2, p3, v0}, Lcom/stryker/terminal/ui/other/SuUtils;->setMonitorMode(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private static final bindRow$lambda$6$lambda$5(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->refresh()V

    return-void
.end method

.method public static synthetic c(Lcom/stryker/terminal/ui/other/InterfacesDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->refresh$lambda$4(Lcom/stryker/terminal/ui/other/InterfacesDialog;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->bindRow$lambda$6$lambda$5(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V

    return-void
.end method

.method public static synthetic e(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;ZLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->bindRow$lambda$6(Lcom/stryker/terminal/ui/other/InterfacesDialog;Lcom/google/android/material/button/MaterialButton;Lcom/stryker/terminal/ui/other/SuUtils$Iface;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog$lambda$0(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->show$lambda$3(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final onTimeout()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->alive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->term_op_timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final refresh()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->subtitle:Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->term_wifi_scanning:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->arm()V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/stryker/terminal/ui/other/f;

    invoke-direct {v2, p0, v1}, Lcom/stryker/terminal/ui/other/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lcom/stryker/terminal/ui/other/SuUtils;->getMonitorInterfaces(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final refresh$lambda$4(Lcom/stryker/terminal/ui/other/InterfacesDialog;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->render(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final render(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/stryker/terminal/ui/other/SuUtils$Iface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->alive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->subtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    sget v4, Lcom/stryker/terminal/R$string;->term_wifi_count:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$string;->term_wifi_empty:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->empty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/ui/other/SuUtils$Iface;

    sget v3, Lcom/stryker/terminal/R$layout;->dialog_iface_row:I

    iget-object v4, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "row"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "iface"

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->bindRow(Landroid/view/View;Lcom/stryker/terminal/ui/other/SuUtils$Iface;)V

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final show$lambda$2(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    .line 7
    .line 8
    iget-object p1, p1, Lf/n;->a:Lf/l;

    .line 9
    .line 10
    iget-object p1, p1, Lf/l;->w:Landroid/widget/Button;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/stryker/terminal/ui/other/c;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/other/c;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->refresh()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final show$lambda$2$lambda$1(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->busy:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->refresh()V

    :cond_0
    return-void
.end method

.method private static final show$lambda$3(Lcom/stryker/terminal/ui/other/InterfacesDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final watchdog$lambda$0(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->onTimeout()V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    new-instance v1, Lcom/stryker/terminal/ui/other/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    new-instance v1, Lcom/stryker/terminal/ui/other/e;

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/InterfacesDialog;->dialog:Lf/n;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
