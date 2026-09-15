.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
