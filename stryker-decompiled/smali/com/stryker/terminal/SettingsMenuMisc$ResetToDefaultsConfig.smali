.class Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetToDefaultsConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 3

    new-instance v0, Lf/m;

    invoke-direct {v0, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->reset_config_ask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->reset_config_ask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/m;->setMessage(Ljava/lang/CharSequence;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$1;

    invoke-direct {v2, p0, p1}, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$2;

    invoke-direct {v2, p0, p1}, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lf/m;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$3;

    invoke-direct {v1, p0, p1}, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig$3;-><init>(Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, v1}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->reset_config:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
