.class Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalMouseConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method public static showGyroscopeMouseMovementConfig(Lcom/stryker/terminal/MainActivity;)V
    .locals 4

    sget-boolean v0, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig;->showRelativeMouseMovementConfig(Lcom/stryker/terminal/MainActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_veryslow:I

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

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_veryfast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lf/m;

    invoke-direct {v1, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/stryker/terminal/xorg/R$string;->mouse_gyroscope_mouse_sensitivity:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscopeSpeed:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$4;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$4;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$5;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$5;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showRelativeMouseMovementConfig(Lcom/stryker/terminal/MainActivity;)V
    .locals 4

    sget-boolean v0, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_veryslow:I

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

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->accel_veryfast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lf/m;

    invoke-direct {v1, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/stryker/terminal/xorg/R$string;->mouse_relative_speed:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->RelativeMouseMovementSpeed:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$6;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$6;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$7;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$7;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showRelativeMouseMovementConfig1(Lcom/stryker/terminal/MainActivity;)V
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

    sget v2, Lcom/stryker/terminal/xorg/R$string;->mouse_relative_accel:I

    invoke-virtual {v1, v2}, Lf/m;->setTitle(I)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->RelativeMouseMovementAccel:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$8;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$8;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$9;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$9;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 10

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/xorg/R$string;->mouse_hover_jitter_filter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/stryker/terminal/xorg/R$string;->mouse_joystickmouse:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/stryker/terminal/xorg/R$string;->click_with_dpadcenter:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/stryker/terminal/xorg/R$string;->mouse_relative:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/stryker/terminal/xorg/R$string;->mouse_gyroscope_mouse:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/stryker/terminal/xorg/R$string;->mouse_finger_hover:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lcom/stryker/terminal/xorg/R$string;->mouse_subframe_touch_events:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-array v0, v0, [Z

    sget-boolean v2, Lcom/stryker/terminal/Globals;->HoverJitterFilter:Z

    aput-boolean v2, v0, v3

    sget-boolean v2, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystick:Z

    aput-boolean v2, v0, v4

    sget-boolean v2, Lcom/stryker/terminal/Globals;->ClickMouseWithDpad:Z

    aput-boolean v2, v0, v5

    sget-boolean v2, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    aput-boolean v2, v0, v6

    sget-boolean v2, Lcom/stryker/terminal/Globals;->MoveMouseWithGyroscope:Z

    aput-boolean v2, v0, v7

    sget-boolean v2, Lcom/stryker/terminal/Globals;->FingerHover:Z

    aput-boolean v2, v0, v8

    sget-boolean v2, Lcom/stryker/terminal/Globals;->GenerateSubframeTouchEvents:Z

    aput-boolean v2, v0, v9

    new-instance v2, Lf/m;

    invoke-direct {v2, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/stryker/terminal/xorg/R$string;->advanced:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    new-instance v3, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$1;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig;)V

    invoke-virtual {v2, v1, v0, v3}, Lf/m;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$2;

    invoke-direct {v1, p0, p1}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$3;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig$3;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$AdditionalMouseConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v2, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v2}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->advanced:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
