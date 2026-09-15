.class Lcom/stryker/terminal/MainActivity$1onClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onClickListener"
.end annotation


# instance fields
.field public p:Lcom/stryker/terminal/MainActivity;

.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;

.field final synthetic val$loadedLibraries:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;Lcom/stryker/terminal/MainActivity;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stryker/terminal/MainActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->this$0:Lcom/stryker/terminal/MainActivity;

    iput-object p3, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->p:Lcom/stryker/terminal/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->setUpStatusLabel()V

    const-string p1, "SDL"

    const-string v0, "libSDL: User clicked change phone config button"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget-object p1, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->setScreenOrientation()V

    iget-object p1, p0, Lcom/stryker/terminal/MainActivity$1onClickListener;->p:Lcom/stryker/terminal/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/stryker/terminal/SettingsMenu;->showConfig(Lcom/stryker/terminal/MainActivity;Z)V

    return-void
.end method
