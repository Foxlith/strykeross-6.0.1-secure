.class Lcom/stryker/terminal/MainActivity$1Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field p:Lcom/stryker/terminal/MainActivity;

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

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    iput-object p3, p0, Lcom/stryker/terminal/MainActivity$1Callback;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/MainActivity$1Callback;->p:Lcom/stryker/terminal/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/stryker/terminal/MainActivity;->access$000()Lcom/stryker/terminal/AudioThread;

    move-result-object v0

    const-string v1, "SDL"

    if-nez v0, :cond_0

    const-string v0, "libSDL: Loading libraries"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/MainActivity;->LoadLibraries()V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback;->p:Lcom/stryker/terminal/MainActivity;

    new-instance v2, Lcom/stryker/terminal/AudioThread;

    invoke-direct {v2, v0}, Lcom/stryker/terminal/AudioThread;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-static {v2}, Lcom/stryker/terminal/MainActivity;->access$002(Lcom/stryker/terminal/AudioThread;)Lcom/stryker/terminal/AudioThread;

    const-string v0, "libSDL: Loading settings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;

    invoke-direct {v2, p0, v0}, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;-><init>(Lcom/stryker/terminal/MainActivity$1Callback;Ljava/util/concurrent/Semaphore;)V

    iget-object v3, p0, Lcom/stryker/terminal/MainActivity$1Callback;->p:Lcom/stryker/terminal/MainActivity;

    iput-object v3, v2, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->Parent:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    sget-boolean v0, Lcom/stryker/terminal/Globals;->CompatibilityHacksStaticInit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->LoadApplicationLibrary(Landroid/content/Context;)V

    :cond_0
    sget-boolean v0, Lcom/stryker/terminal/Settings;->settingsChanged:Z

    if-nez v0, :cond_1

    sget v0, Lcom/stryker/terminal/Globals;->StartupMenuButtonTimeout:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "libSDL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/stryker/terminal/Globals;->StartupMenuButtonTimeout:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-msec timeout in startup screen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget v0, Lcom/stryker/terminal/Globals;->StartupMenuButtonTimeout:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
