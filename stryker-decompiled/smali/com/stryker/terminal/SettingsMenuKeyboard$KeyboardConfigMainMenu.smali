.class Lcom/stryker/terminal/SettingsMenuKeyboard$KeyboardConfigMainMenu;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyboardConfigMainMenu"
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

    sget-boolean v0, Lcom/stryker/terminal/Globals;->UseTouchscreenKeyboard:Z

    return v0
.end method

.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/stryker/terminal/SettingsMenu$Menu;

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardDrawSizeConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardDrawSizeConfig;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/stryker/terminal/SettingsMenu$OkButton;

    invoke-direct {v1}, Lcom/stryker/terminal/SettingsMenu$OkButton;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/stryker/terminal/SettingsMenu$Menu;->showMenuOptionsList(Lcom/stryker/terminal/MainActivity;[Lcom/stryker/terminal/SettingsMenu$Menu;)V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
