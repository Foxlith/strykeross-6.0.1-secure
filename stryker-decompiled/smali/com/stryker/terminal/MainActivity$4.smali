.class Lcom/stryker/terminal/MainActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V
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

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$400(Lcom/stryker/terminal/MainActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v0, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$400(Lcom/stryker/terminal/MainActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stryker/terminal/MainActivity;->access$402(Lcom/stryker/terminal/MainActivity;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$300(Lcom/stryker/terminal/MainActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->mGLView:Lcom/stryker/terminal/NeoGLView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Lcom/stryker/terminal/DimSystemStatusBar;->get()Lcom/stryker/terminal/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$4;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/DimSystemStatusBar;->dim(Landroid/view/View;)V

    return-void
.end method
