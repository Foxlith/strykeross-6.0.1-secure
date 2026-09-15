.class public final Lcom/stryker/terminal/ui/other/SettingsActivity;
.super Lf/q;
.source "SourceFile"


# instance fields
.field private toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method

.method private static final confirmAndReset$lambda$1(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->resetApp()V

    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->resetApp$lambda$3(Lcom/stryker/terminal/ui/other/SettingsActivity;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/other/SettingsActivity;->confirmAndReset$lambda$1(Lcom/stryker/terminal/ui/other/SettingsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->resetApp$lambda$3$lambda$2(Lcom/stryker/terminal/ui/other/SettingsActivity;)V

    return-void
.end method

.method public static synthetic i(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->onCreate$lambda$0(Lcom/stryker/terminal/ui/other/SettingsActivity;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->syncToolbarTitle()V

    return-void
.end method

.method private final resetApp()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stryker/terminal/ui/other/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/j;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final resetApp$lambda$3(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg5/i;->h0(Ljava/io/File;)V

    const-string v0, "bin"

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/bin/"

    invoke-static {p0, v0, v2}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android-su"

    const-string v2, "bash"

    const-string v3, "stryker-ch"

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv1/f;->G([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stryker/terminal/ui/other/j;

    invoke-direct {v0, p0, v3}, Lcom/stryker/terminal/ui/other/j;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final resetApp$lambda$3$lambda$2(Lcom/stryker/terminal/ui/other/SettingsActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/stryker/terminal/R$string;->done:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lf/m;->show()Lf/n;

    :cond_0
    return-void
.end method

.method private final stepBack()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->I()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private final syncToolbarTitle()V
    .locals 2

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->topBackStackTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "general"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/stryker/terminal/R$string;->term_settings_general_title:I

    goto :goto_0

    :cond_0
    const-string v1, "ui"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/stryker/terminal/R$string;->term_settings_ui_title:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/stryker/terminal/R$string;->settings:I

    :goto_0
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lf/b;->p(I)V

    :cond_2
    return-void
.end method

.method private final topBackStackTag()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/fragment/app/a;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final confirmAndReset()V
    .locals 3

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/stryker/terminal/R$string;->reset_app_warning:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/ui/other/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/k;-><init>(Lf/q;I)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u0;->I()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/h;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/stryker/terminal/R$layout;->ui_settings:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lf/q;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/stryker/terminal/R$id;->settings_toolbar:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "findViewById(R.id.settings_toolbar)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/stryker/terminal/ui/other/SettingsActivity;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lf/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lf/b;->m(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/stryker/terminal/ui/other/i;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/stryker/terminal/ui/other/i;-><init>(Lcom/stryker/terminal/ui/other/SettingsActivity;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 56
    .line 57
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/u0;->k:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget v0, Lcom/stryker/terminal/R$id;->settings_nav_host:I

    .line 73
    .line 74
    new-instance v1, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;

    .line 75
    .line 76
    invoke-direct {v1}, Lcom/stryker/terminal/ui/settings/SettingsHomeFragment;-><init>()V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1, v1, v2, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(Z)I

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->syncToolbarTitle()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->stepBack()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->stepBack()V

    const/4 v0, 0x1

    return v0
.end method

.method public final openChild(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tag"

    .line 7
    .line 8
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/SettingsActivity;->topBackStackTag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0x1003

    .line 31
    .line 32
    iput v1, v0, Landroidx/fragment/app/e1;->f:I

    .line 33
    .line 34
    sget v1, Lcom/stryker/terminal/R$id;->settings_nav_host:I

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->h(Z)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lf/b;->p(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
