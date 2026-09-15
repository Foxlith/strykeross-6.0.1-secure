.class public final Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$2(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$8(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$3(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$5(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$6(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;->onViewCreated$lambda$4(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance p1, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;

    invoke-direct {p1}, Lcom/stryker/terminal/ui/settings/GeneralPrefsFragment;-><init>()V

    const-string v0, "general"

    sget v1, Lcom/stryker/terminal/R$string;->term_settings_general_title:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/ui/other/SettingsActivity;->openChild(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance p1, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;

    invoke-direct {p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;-><init>()V

    const-string v0, "ui"

    sget v1, Lcom/stryker/terminal/R$string;->term_settings_ui_title:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/ui/other/SettingsActivity;->openChild(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/stryker/terminal/ui/customize/CustomizeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onViewCreated$lambda$5(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->confirmAndReset()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$6(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/stryker/terminal/R$string;->source_code:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    sget p1, Lcom/stryker/terminal/R$drawable;->ic_github:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    sget p1, Lcom/stryker/terminal/R$string;->sources_licenses:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    const p1, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method private static final onViewCreated$lambda$8(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://github.com/zalexdev/strykerapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
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

    const-string p3, "inflater"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/stryker/terminal/R$layout;->settings_terminal_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026l_home, container, false)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "view"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    instance-of v0, p2, Lcom/stryker/terminal/ui/other/SettingsActivity;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/stryker/terminal/ui/other/SettingsActivity;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget v0, Lcom/stryker/terminal/R$id;->settings_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/stryker/terminal/R$string;->term_settings_subtitle:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, " \u00b7 v"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/stryker/terminal/R$id;->row_general:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Li2/c;

    invoke-direct {v1, p2, v2}, Li2/c;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/stryker/terminal/R$id;->row_ui:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Li2/c;

    const/4 v3, 0x1

    invoke-direct {v1, p2, v3}, Li2/c;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/stryker/terminal/R$id;->row_customization:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Li2/d;

    invoke-direct {v1, p0, v2}, Li2/d;-><init>(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/stryker/terminal/R$id;->row_reset:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Li2/c;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v2}, Li2/c;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/stryker/terminal/R$id;->row_licenses:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Li2/d;

    invoke-direct {v0, p0, v3}, Li2/d;-><init>(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/stryker/terminal/R$id;->row_github:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Li2/d;

    invoke-direct {p2, p0, v2}, Li2/d;-><init>(Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
