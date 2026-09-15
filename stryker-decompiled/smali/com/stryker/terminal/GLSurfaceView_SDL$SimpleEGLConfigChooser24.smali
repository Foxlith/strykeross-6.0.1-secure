.class Lcom/stryker/terminal/GLSurfaceView_SDL$SimpleEGLConfigChooser24;
.super Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEGLConfigChooser24"
.end annotation


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 9

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    move v5, p1

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const/16 p1, 0x8

    if-eqz p2, :cond_1

    move v6, p1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move-object v0, p0

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;-><init>(IIIIIIZZ)V

    iput p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    iput p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    iput p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    return-void
.end method
