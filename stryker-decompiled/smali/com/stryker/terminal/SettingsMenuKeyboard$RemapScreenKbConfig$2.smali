.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;->val$p:Lcom/stryker/terminal/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->showRemapScreenKbConfig2(Lcom/stryker/terminal/MainActivity;I)V

    return-void
.end method
