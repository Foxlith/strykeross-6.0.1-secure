.class Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sput p2, Lcom/stryker/terminal/Globals;->MoveMouseWithJoystickSpeed:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenuMouse$JoystickMouseConfig;->showJoystickMouseAccelConfig(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
