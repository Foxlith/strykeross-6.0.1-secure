.class public final Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;
    }
.end annotation


# instance fields
.field private isAfterLongPress:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mListener:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$1;-><init>(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$2;-><init>(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)V

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$3;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$3;-><init>(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    return-void
.end method

.method public static final synthetic access$getMGestureDetector$p(Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method


# virtual methods
.method public final getMListener()Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mListener:Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;

    return-object v0
.end method

.method public final isAfterLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    return v0
.end method

.method public final isInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final setAfterLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    return-void
.end method
