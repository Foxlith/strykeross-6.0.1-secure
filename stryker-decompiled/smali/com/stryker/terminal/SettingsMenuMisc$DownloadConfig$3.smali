.class Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;->showCustomDownloadDirConfig(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$3;->val$edit:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$3;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$3;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
