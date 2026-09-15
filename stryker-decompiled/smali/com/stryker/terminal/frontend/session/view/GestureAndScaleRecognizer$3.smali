.class public final Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$3;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const-string v0, "detector"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$3;->this$0:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
