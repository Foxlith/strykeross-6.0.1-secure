.class Lcom/stryker/terminal/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->initSDL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/MainActivity;->isCurrentOrientationHorizontal()Z

    move-result v0

    sput-boolean v0, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/MainActivity;->isCurrentOrientationHorizontal()Z

    move-result v0

    sget-boolean v1, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    new-instance v1, Lcom/stryker/terminal/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/MainActivity$1$1;-><init>(Lcom/stryker/terminal/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/stryker/terminal/Globals;->XLIB_DIR:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-boolean v0, v0, Lcom/stryker/terminal/MainActivity;->_isPaused:Z

    if-eqz v0, :cond_3

    const-string v0, "SDL"

    const-string v1, "libSDL: Application paused, cancelling SDL initialization until it will be brought to foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/stryker/terminal/DimSystemStatusBar;->get()Lcom/stryker/terminal/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$1;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/DimSystemStatusBar;->dim(Landroid/view/View;)V

    goto :goto_0
.end method
