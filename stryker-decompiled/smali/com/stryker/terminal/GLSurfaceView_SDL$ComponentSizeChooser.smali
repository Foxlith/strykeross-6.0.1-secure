.class Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;
.super Lcom/stryker/terminal/GLSurfaceView_SDL$BaseConfigChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentSizeChooser"
.end annotation


# static fields
.field public static final EGL_OPENGL_BIT:I = 0x8

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT:I = 0x10

.field public static final EGL_OPENGL_ES_BIT:I = 0x1

.field public static final EGL_OPENVG_BIT:I = 0x2


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mIsGles2:Z

.field protected mIsGles3:Z

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIIZZ)V
    .locals 1

    const/16 v0, 0x3038

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/GLSurfaceView_SDL$BaseConfigChooser;-><init>([I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    iput p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    iput p2, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    iput p3, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    iput p4, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mAlphaSize:I

    iput p5, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mDepthSize:I

    iput p6, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mStencilSize:I

    iput-boolean p7, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    iput-boolean p8, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    aget p1, p1, v2

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GLSurfaceView_SDL::EGLConfigChooser::findConfigAttrib(): attribute doesn\'t exist: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_19

    aget-object v13, v7, v12

    if-nez v13, :cond_0

    move/from16 v17, v8

    move/from16 v21, v12

    goto/16 :goto_e

    :cond_0
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3021

    const/16 v16, 0x0

    move v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3025

    move v7, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3026

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3040

    move-object/from16 v18, v10

    move v10, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    iget-boolean v0, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    const/16 v16, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    :goto_1
    move/from16 v19, v0

    goto :goto_2

    :cond_1
    iget-boolean v0, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    move/from16 v19, v16

    :goto_2
    const/16 v4, 0x302d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move/from16 v21, v12

    move v12, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v4, 0x3027

    const/16 v20, 0x3038

    move-object/from16 v22, v13

    move v13, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    sub-int v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    sub-int v5, v9, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mAlphaSize:I

    sub-int v3, v2, v7

    sub-int/2addr v2, v7

    if-lez v3, :cond_3

    add-int/2addr v2, v1

    goto :goto_3

    :cond_3
    if-gez v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-lez v8, :cond_5

    move/from16 v3, v16

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget v4, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mDepthSize:I

    if-lez v4, :cond_6

    move/from16 v5, v16

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    const/16 v20, 0x5

    if-eq v3, v5, :cond_8

    if-lez v4, :cond_7

    move/from16 v3, v20

    goto :goto_6

    :cond_7
    move/from16 v3, v16

    :goto_6
    add-int/2addr v3, v2

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    if-lez v10, :cond_9

    move/from16 v4, v16

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    iget v5, v6, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mStencilSize:I

    if-lez v5, :cond_a

    move/from16 v6, v16

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    if-eq v4, v6, :cond_c

    if-lez v5, :cond_b

    move/from16 v16, v20

    :cond_b
    add-int v16, v3, v16

    move/from16 v4, v16

    goto :goto_a

    :cond_c
    move v4, v3

    :goto_a
    and-int v5, v12, v19

    if-nez v5, :cond_d

    add-int/lit8 v5, v4, 0x5

    goto :goto_b

    :cond_d
    move v5, v4

    :goto_b
    const/16 v6, 0x3050

    if-ne v0, v6, :cond_e

    add-int/lit8 v16, v5, 0x4

    goto :goto_c

    :cond_e
    move/from16 v16, v5

    :goto_c
    const/16 v6, 0x3051

    if-ne v0, v6, :cond_f

    add-int/lit8 v16, v16, 0x1

    :cond_f
    move/from16 v23, v16

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v20, v11

    const-string v11, "R"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "G"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "B"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "A"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " stencil "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    .line 1
    invoke-static {v6, v12, v7}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    and-int/lit8 v8, v12, 0x1

    if-eqz v8, :cond_10

    const-string v8, "GLES"

    .line 2
    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_10
    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_11

    const-string v8, " GLES2"

    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_12

    const-string v8, " GLES3"

    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_12
    and-int/lit8 v8, v12, 0x8

    if-eqz v8, :cond_13

    const-string v8, " OPENGL"

    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_13
    and-int/lit8 v8, v12, 0x2

    if-eqz v8, :cond_14

    const-string v8, " OPENVG"

    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_14
    const-string v8, ")"

    invoke-static {v6, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, " caveat "

    .line 3
    invoke-static {v6, v9}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x3038

    if-ne v0, v9, :cond_15

    const-string v0, "none"

    goto :goto_d

    :cond_15
    const/16 v9, 0x3050

    if-ne v0, v9, :cond_16

    const-string v0, "SLOW"

    goto :goto_d

    :cond_16
    const/16 v9, 0x3051

    if-ne v0, v9, :cond_17

    const-string v0, "non-conformant"

    goto :goto_d

    .line 4
    :cond_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nr "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pos "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v2, v20

    if-ge v0, v2, :cond_18

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move v11, v0

    move-object/from16 v10, v22

    goto :goto_e

    :cond_18
    move v11, v2

    move-object/from16 v10, v18

    :goto_e
    add-int/lit8 v12, v21, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_19
    move-object/from16 v18, v10

    return-object v18
.end method

.method public isGles2Required()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    return v0
.end method

.method public isGles3Required()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    return v0
.end method
