.class Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sput p2, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget p1, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;

    invoke-direct {p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;-><init>()V

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;->run(Lcom/stryker/terminal/MainActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :goto_0
    return-void
.end method
