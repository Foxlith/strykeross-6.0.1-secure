.class Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity$1Callback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback2"
.end annotation


# instance fields
.field public Parent:Lcom/stryker/terminal/MainActivity;

.field final synthetic this$1:Lcom/stryker/terminal/MainActivity$1Callback;

.field final synthetic val$loaded:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity$1Callback;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iput-object p2, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->val$loaded:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->Parent:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/Settings;->Load(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/MainActivity;->setScreenOrientation()V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->val$loaded:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$100(Lcom/stryker/terminal/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$100(Lcom/stryker/terminal/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$100(Lcom/stryker/terminal/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$100(Lcom/stryker/terminal/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$1Callback$1Callback2;->this$1:Lcom/stryker/terminal/MainActivity$1Callback;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$1Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$100(Lcom/stryker/terminal/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
