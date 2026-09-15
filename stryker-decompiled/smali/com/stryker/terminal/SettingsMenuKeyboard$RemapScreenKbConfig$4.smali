.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->showRemapScreenKbConfig2(Lcom/stryker/terminal/MainActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$currentButton:I

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(ILcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;->val$currentButton:I

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-object v0, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    iget v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;->val$currentButton:I

    sget-object v2, Lcom/stryker/terminal/SDL_Keys;->namesSortedIdx:[Ljava/lang/Integer;

    aget-object p2, v2, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;->val$p:Lcom/stryker/terminal/MainActivity;

    iget p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;->val$currentButton:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->showRemapScreenKbConfig2(Lcom/stryker/terminal/MainActivity;I)V

    return-void
.end method
