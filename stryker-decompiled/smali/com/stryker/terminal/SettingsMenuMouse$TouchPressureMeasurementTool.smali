.class Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPressureMeasurementTool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget v0, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->measurepressure_touchplease:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;

    invoke-direct {v1, p1}, Lcom/stryker/terminal/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->measurepressure:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
