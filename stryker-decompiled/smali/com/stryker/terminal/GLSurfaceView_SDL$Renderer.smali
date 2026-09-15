.class public abstract Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Renderer"
.end annotation


# instance fields
.field private mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;->mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;

    return-void
.end method


# virtual methods
.method public ResetVideoSurface()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;->mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;->ResetVideoSurface()V

    :cond_0
    return-void
.end method

.method public SwapBuffers()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;->mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;->SwapBuffers()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public onWindowResize(II)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;->mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;->onWindowResize(II)V

    :cond_0
    return-void
.end method

.method public setSwapBuffersCallback(Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$Renderer;->mSwapBuffersCallback:Lcom/stryker/terminal/GLSurfaceView_SDL$SwapBuffersCallback;

    return-void
.end method
