.class Lcom/stryker/terminal/MainActivity$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stryker/terminal/MainActivity$2;

.field final synthetic val$heightDiff:I

.field final synthetic val$r:Landroid/graphics/Rect;

.field final synthetic val$widthDiff:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity$2;Landroid/graphics/Rect;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$2$2;->this$1:Lcom/stryker/terminal/MainActivity$2;

    iput-object p2, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$r:Landroid/graphics/Rect;

    iput p3, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$widthDiff:I

    iput p4, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$heightDiff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/stryker/terminal/DimSystemStatusBar;->get()Lcom/stryker/terminal/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$2$2;->this$1:Lcom/stryker/terminal/MainActivity$2;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/DimSystemStatusBar;->dim(Landroid/view/View;)V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$2$2;->this$1:Lcom/stryker/terminal/MainActivity$2;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$2;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity;->mGLView:Lcom/stryker/terminal/NeoGLView;

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$r:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$widthDiff:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$heightDiff:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/stryker/terminal/MainActivity$2$2;->val$r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeScreenVisibleRect(IIII)V

    return-void
.end method
