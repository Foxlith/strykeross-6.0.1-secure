.class public Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;
.source "SourceFile"


# instance fields
.field private initState:Z

.field private toggleButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->initState:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private final setStatus(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->getSELECTED_TEXT_COLOR()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->getNORMAL_TEXT_COLOR()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getInitState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->initState:Z

    return v0
.end method

.method public final getToggleButton()Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method public makeButton(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/widget/Button;
    .locals 1

    new-instance p2, Landroid/widget/ToggleButton;

    const/4 p3, 0x0

    const v0, 0x101032f

    invoke-direct {p2, p1, p3, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean p3, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->initState:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object p1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->getSELECTED_TEXT_COLOR()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->setStatus(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final readState()Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->getNORMAL_TEXT_COLOR()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return v2
.end method

.method public final setInitState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->initState:Z

    return-void
.end method

.method public final setToggleButton(Landroid/widget/ToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->toggleButton:Landroid/widget/ToggleButton;

    return-void
.end method
