.class public Lcom/stryker/terminal/NeoGLView;
.super Lcom/stryker/terminal/DemoGLSurfaceView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/DemoGLSurfaceView;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    return-void
.end method


# virtual methods
.method public callNativeScreenKeyboardShown(I)V
    .locals 0

    invoke-static {p1}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeScreenKeyboardShown(I)V

    return-void
.end method

.method public callNativeScreenVisibleRect(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/stryker/terminal/DemoGLSurfaceView;->nativeScreenVisibleRect(IIII)V

    return-void
.end method

.method public bridge synthetic exitApp()V
    .locals 0

    invoke-super {p0}, Lcom/stryker/terminal/DemoGLSurfaceView;->exitApp()V

    return-void
.end method

.method public bridge synthetic isPaused()Z
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/DemoGLSurfaceView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic limitEventRate(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/stryker/terminal/DemoGLSurfaceView;->limitEventRate(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/stryker/terminal/DemoGLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/stryker/terminal/DemoGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/stryker/terminal/DemoGLSurfaceView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/stryker/terminal/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onPause()V
    .locals 0

    invoke-super {p0}, Lcom/stryker/terminal/DemoGLSurfaceView;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/stryker/terminal/DemoGLSurfaceView;->onResume()V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/stryker/terminal/DemoGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
