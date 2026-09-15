.class Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrateTouchscreenMenu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;
    }
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

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->calibrate_touchscreen_touch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/Globals;->TouchscreenCalibration:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->calibrate_touchscreen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
