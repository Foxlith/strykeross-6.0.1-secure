.class Lcom/stryker/terminal/SettingsMenu$MainMenu;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainMenu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/stryker/terminal/SettingsMenu$Menu;

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

    invoke-direct {v1, v2}, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$KeyboardConfigMainMenu;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$KeyboardConfigMainMenu;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMouse$MouseConfigMainMenu;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMouse$MouseConfigMainMenu;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$AudioConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMisc$AudioConfig;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenGesturesConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenGesturesConfig;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuMisc$ResetToDefaultsConfig;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenu$OkButton;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenu$OkButton;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/stryker/terminal/SettingsMenu$Menu;->showMenuOptionsList(Lcom/stryker/terminal/MainActivity;[Lcom/stryker/terminal/SettingsMenu$Menu;)V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->device_config:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
