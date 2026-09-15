.class Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;

.field final synthetic val$more_options:I

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;

.field final synthetic val$size_desktop:I

.field final synthetic val$size_large:I

.field final synthetic val$size_small:I

.field final synthetic val$size_small_touchpad:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;IIIIILcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->this$0:Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;

    iput p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    iput p3, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    iput p4, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    iput p5, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    iput p6, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    iput-object p7, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    sput v1, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    :cond_0
    iget p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    if-ne p2, p1, :cond_1

    sput v1, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    :cond_1
    iget p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    if-ne p2, p1, :cond_2

    sput v0, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sput v0, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    :cond_2
    iget p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    if-ne p2, p1, :cond_3

    const/4 p1, 0x7

    sput p1, Lcom/stryker/terminal/Globals;->LeftClickMethod:I

    sput-boolean v0, Lcom/stryker/terminal/Globals;->RelativeMouseMovement:Z

    sput v1, Lcom/stryker/terminal/Globals;->ShowScreenUnderFinger:I

    sput-boolean v1, Lcom/stryker/terminal/Globals;->ForceHardwareMouse:Z

    :cond_3
    iget p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Lcom/stryker/terminal/SettingsMenu$MainMenu;

    invoke-direct {p1}, Lcom/stryker/terminal/SettingsMenu$MainMenu;-><init>()V

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/SettingsMenu$MainMenu;->run(Lcom/stryker/terminal/MainActivity;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
