.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

.field final synthetic val$KeyIndexFinal:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iput p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x6

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->ShowAllKeys(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    iget v0, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    aget p2, v1, p2

    aput p2, p1, v0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :goto_0
    return-void
.end method
