.class Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoystickMouseConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method public static showJoystickMouseAccelConfig(Lcom/stryker/terminal/MainActivity;)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lf/m;

    invoke-direct {v1, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/stryker/terminal/xorg/R$string;->mouse_joystickmouseaccel:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickAccel:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$3;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$3;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$4;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$4;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    sget-boolean v0, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    return v0
.end method

.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lf/m;

    invoke-direct {v1, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/stryker/terminal/xorg/R$string;->mouse_joystickmousespeed:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;

    invoke-direct {v3, p0, p1}, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$2;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->mouse_joystickmousespeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
