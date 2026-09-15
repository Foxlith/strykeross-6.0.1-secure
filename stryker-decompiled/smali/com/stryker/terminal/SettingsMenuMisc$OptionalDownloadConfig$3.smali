.class Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$3;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$3;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-object p1, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance p1, Lcom/stryker/terminal/SettingsMenu$MainMenu;

    invoke-direct {p1}, Lcom/stryker/terminal/SettingsMenu$MainMenu;-><init>()V

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$3;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/SettingsMenu$MainMenu;->run(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method
