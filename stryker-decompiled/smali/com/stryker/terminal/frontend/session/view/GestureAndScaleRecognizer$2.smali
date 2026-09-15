.class public final Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-static {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->access$getMGestureDetector$p(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onUp(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
