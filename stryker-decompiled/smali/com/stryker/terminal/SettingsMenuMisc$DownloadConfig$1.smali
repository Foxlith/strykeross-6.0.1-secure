.class Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig;->showCustomDownloadDirConfig(Lcom/stryker/terminal/MainActivity;)V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, Lcom/stryker/terminal/Globals;->DownloadToSdcard:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/stryker/terminal/Settings$SdcardAppPath;->get()Lcom/stryker/terminal/Settings$SdcardAppPath;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/Settings$SdcardAppPath;->bestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sput-object p1, Lcom/stryker/terminal/Globals;->DataDir:Ljava/lang/String;

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$DownloadConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :goto_2
    return-void
.end method
