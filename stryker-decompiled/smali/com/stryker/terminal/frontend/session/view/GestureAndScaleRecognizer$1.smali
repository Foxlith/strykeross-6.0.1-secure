.class public final Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onDown(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string v0, "e1"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onFling(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->setAfterLongPress(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string v0, "e1"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e2"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onScroll(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
