.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->ShowAllKeys(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

.field final synthetic val$KeyIndex:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iput p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->val$KeyIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    iget v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->val$KeyIndex:I

    sget-object v2, Lcom/stryker/terminal/SDL_Keys;->namesSortedIdx:[Ljava/lang/Integer;

    aget-object p2, v2, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
