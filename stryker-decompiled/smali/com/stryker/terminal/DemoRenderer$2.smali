.class Lcom/stryker/terminal/DemoRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/DemoRenderer;->onWindowResize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/DemoRenderer;

.field final synthetic val$h:I

.field final synthetic val$resizeThreadIndex:I

.field final synthetic val$w:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/DemoRenderer;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iput p2, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$resizeThreadIndex:I

    iput p3, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$w:I

    iput p4, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget v0, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$resizeThreadIndex:I

    iget-object v1, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v2, v1, Lcom/stryker/terminal/DemoRenderer;->mLastPendingResize:I

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$w:I

    rem-int/lit8 v2, v0, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/stryker/terminal/DemoRenderer$2;->val$h:I

    rem-int/lit8 v3, v2, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1}, Lcom/stryker/terminal/DemoRenderer;->access$000(Lcom/stryker/terminal/DemoRenderer;)Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v3, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v1}, Lcom/stryker/terminal/DemoRenderer;->access$000(Lcom/stryker/terminal/DemoRenderer;)Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v4, v3, Lcom/stryker/terminal/DemoRenderer;->mWidth:I

    const-string v5, "x"

    const-string v6, "SDL"

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    iget v3, v3, Lcom/stryker/terminal/DemoRenderer;->mHeight:I

    if-eqz v3, :cond_5

    if-ne v4, v0, :cond_2

    if-eq v3, v2, :cond_5

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "libSDL: DemoRenderer.onWindowResize(): screen size changed from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v4, v4, Lcom/stryker/terminal/DemoRenderer;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v4, v4, Lcom/stryker/terminal/DemoRenderer;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    if-gt v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    if-le v3, v4, :cond_4

    :cond_3
    const-string v3, "Multiwindow detected - enabling screen orientation autodetection"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v3}, Lcom/stryker/terminal/DemoRenderer;->access$000(Lcom/stryker/terminal/DemoRenderer;)Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->initScreenOrientation()V

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v3}, Lcom/stryker/terminal/DemoRenderer;->access$101(Lcom/stryker/terminal/DemoRenderer;)V

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v3, v0, v2}, Lcom/stryker/terminal/DemoRenderer;->access$201(Lcom/stryker/terminal/DemoRenderer;II)V

    goto :goto_0

    :cond_4
    const-string v3, "System button bar hidden - re-init video to avoid black bar at the top"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v3}, Lcom/stryker/terminal/DemoRenderer;->access$301(Lcom/stryker/terminal/DemoRenderer;)V

    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-static {v3, v0, v2}, Lcom/stryker/terminal/DemoRenderer;->access$401(Lcom/stryker/terminal/DemoRenderer;II)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v4, v3, Lcom/stryker/terminal/DemoRenderer;->mWidth:I

    const/4 v8, 0x0

    if-nez v4, :cond_8

    iget v3, v3, Lcom/stryker/terminal/DemoRenderer;->mHeight:I

    if-nez v3, :cond_8

    if-le v0, v2, :cond_6

    move v3, v7

    goto :goto_1

    :cond_6
    move v3, v8

    :goto_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    if-le v4, v9, :cond_7

    move v4, v7

    goto :goto_2

    :cond_7
    move v4, v8

    :goto_2
    if-eq v3, v4, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Multiwindow detected - app window size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but display dimensions are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    :cond_8
    sget-boolean v1, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    if-eqz v1, :cond_c

    if-le v0, v2, :cond_9

    move v1, v7

    goto :goto_3

    :cond_9
    move v1, v8

    :goto_3
    iget-object v3, p0, Lcom/stryker/terminal/DemoRenderer$2;->this$0:Lcom/stryker/terminal/DemoRenderer;

    iget v4, v3, Lcom/stryker/terminal/DemoRenderer;->mWidth:I

    iget v3, v3, Lcom/stryker/terminal/DemoRenderer;->mHeight:I

    if-le v4, v3, :cond_a

    move v3, v7

    goto :goto_4

    :cond_a
    move v3, v8

    :goto_4
    if-eq v1, v3, :cond_c

    if-le v0, v2, :cond_b

    goto :goto_5

    :cond_b
    move v7, v8

    :goto_5
    sput-boolean v7, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    :cond_c
    return-void
.end method
