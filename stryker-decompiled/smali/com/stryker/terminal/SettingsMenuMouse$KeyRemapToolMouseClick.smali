.class public Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyRemapToolMouseClick"
.end annotation


# instance fields
.field leftClick:Z

.field p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->remap_hwkeys_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;->leftClick:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    if-gez p2, :cond_0

    move p2, p1

    :cond_0
    const/16 p3, 0xff

    if-le p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-boolean p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;->leftClick:Z

    if-eqz p2, :cond_2

    sput p1, Lcom/stryker/terminal/Globals;->LeftClickKey:I

    goto :goto_1

    :cond_2
    sput p1, Lcom/stryker/terminal/Globals;->RightClickKey:I

    :goto_1
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    const/4 p1, 0x1

    return p1
.end method
