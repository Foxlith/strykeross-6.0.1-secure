.class Lcom/stryker/terminal/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->initSDLInternal()V
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

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v2, v2, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v2, v2, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v3, v3, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    iget-object v3, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v3, v3, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/stryker/terminal/MainActivity$2$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/stryker/terminal/MainActivity$2$1;-><init>(Lcom/stryker/terminal/MainActivity$2;Landroid/graphics/Rect;II)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v3, v3, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/stryker/terminal/MainActivity$2$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/stryker/terminal/MainActivity$2$2;-><init>(Lcom/stryker/terminal/MainActivity$2;Landroid/graphics/Rect;II)V

    const-wide/16 v0, 0x258

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
