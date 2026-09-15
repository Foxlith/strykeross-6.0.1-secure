.class Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sput p2, Lcom/stryker/terminal/Globals;->RightClickMethod:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/stryker/terminal/SettingsMenuMouse$KeyRemapToolMouseClick;-><init>(Lcom/stryker/terminal/MainActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig;->showRightClickTimeoutConfig(Lcom/stryker/terminal/MainActivity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$RightClickConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :goto_0
    return-void
.end method
