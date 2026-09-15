.class public interface abstract Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/session/view/GestureAndScaleRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDoubleTapEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onDown(FF)Z
.end method

.method public abstract onFling(Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onUp(Landroid/view/MotionEvent;)Z
.end method
