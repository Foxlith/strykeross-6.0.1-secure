.class Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizeScreenKbLayoutTool"
.end annotation


# instance fields
.field bmps:[Landroid/graphics/Bitmap;

.field boundary:Landroid/widget/ImageView;

.field boundaryBmp:Landroid/graphics/Bitmap;

.field buttons:[I

.field currentButton:I

.field imgs:[Landroid/widget/ImageView;

.field layout:Landroid/widget/FrameLayout;

.field oldX:I

.field oldY:I

.field p:Lcom/stryker/terminal/MainActivity;

.field resizing:Z


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v3, v2

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    const/16 v3, 0xa

    new-array v4, v3, [I

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->dpad:I

    aput v5, v4, v2

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->keyboard:I

    const/4 v7, 0x1

    aput v6, v4, v7

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b1:I

    const/4 v8, 0x2

    aput v6, v4, v8

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b2:I

    const/4 v9, 0x3

    aput v6, v4, v9

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b3:I

    const/4 v10, 0x4

    aput v6, v4, v10

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b4:I

    const/4 v11, 0x5

    aput v6, v4, v11

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b5:I

    const/4 v12, 0x6

    aput v6, v4, v12

    sget v6, Lcom/stryker/terminal/xorg/R$drawable;->b6:I

    const/4 v13, 0x7

    aput v6, v4, v13

    const/16 v6, 0x8

    aput v5, v4, v6

    const/16 v14, 0x9

    aput v5, v4, v14

    iput-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->buttons:[I

    iput v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    iput v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    iput-boolean v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v4}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v5, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v4}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->rectangle:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput v15, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    sget v4, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTheme:I

    if-ne v4, v8, :cond_0

    new-array v3, v3, [I

    sget v4, Lcom/stryker/terminal/xorg/R$drawable;->sun_dpad:I

    aput v4, v3, v2

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_keyboard:I

    aput v5, v3, v7

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b1:I

    aput v5, v3, v8

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b2:I

    aput v5, v3, v9

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b3:I

    aput v5, v3, v10

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b4:I

    aput v5, v3, v11

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b5:I

    aput v5, v3, v12

    sget v5, Lcom/stryker/terminal/xorg/R$drawable;->sun_b6:I

    aput v5, v3, v13

    aput v4, v3, v6

    aput v4, v3, v14

    iput-object v3, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->buttons:[I

    :cond_0
    const/16 v3, 0x320

    :try_start_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v4, 0x1e0

    :goto_0
    move v5, v2

    :goto_1
    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_b

    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v6, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    if-ne v6, v15, :cond_2

    iput v5, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    :cond_2
    sget-object v6, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v5

    aget v11, v6, v2

    aget v12, v6, v8

    div-int/lit8 v13, v4, 0xc

    sub-int v14, v12, v13

    if-le v11, v14, :cond_3

    sub-int v11, v12, v13

    aput v11, v6, v2

    :cond_3
    aget v11, v6, v7

    aget v14, v6, v9

    sub-int v1, v14, v13

    if-le v11, v1, :cond_4

    sub-int v1, v14, v13

    aput v1, v6, v7

    :cond_4
    aget v1, v6, v2

    mul-int/lit8 v11, v4, 0x2

    div-int/2addr v11, v9

    sub-int v13, v12, v11

    if-ge v1, v13, :cond_5

    sub-int v1, v12, v11

    aput v1, v6, v2

    :cond_5
    aget v1, v6, v7

    sub-int v13, v14, v11

    if-ge v1, v13, :cond_6

    sub-int v1, v14, v11

    aput v1, v6, v7

    :cond_6
    aget v1, v6, v2

    if-gez v1, :cond_7

    neg-int v1, v1

    add-int/2addr v12, v1

    aput v12, v6, v8

    aput v2, v6, v2

    :cond_7
    aget v1, v6, v8

    if-le v1, v3, :cond_8

    aget v11, v6, v2

    sub-int/2addr v1, v3

    sub-int/2addr v11, v1

    aput v11, v6, v2

    aput v3, v6, v8

    :cond_8
    aget v1, v6, v7

    if-gez v1, :cond_9

    neg-int v1, v1

    add-int/2addr v14, v1

    aput v14, v6, v9

    aput v2, v6, v7

    :cond_9
    aget v1, v6, v9

    if-le v1, v4, :cond_a

    aget v11, v6, v7

    sub-int/2addr v1, v4

    sub-int/2addr v11, v1

    aput v11, v6, v7

    aput v4, v6, v9

    :cond_a
    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {v6, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v6, v1, v5

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v6}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v11, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->buttons:[I

    aget v11, v11, v5

    invoke-static {v6, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    iget-object v6, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    iget-object v11, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-direct {v6, v13, v13, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/RectF;

    sget-object v12, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v12, v12, v5

    aget v13, v12, v2

    int-to-float v13, v13

    aget v14, v12, v7

    int-to-float v14, v14

    aget v2, v12, v8

    int-to-float v2, v2

    aget v12, v12, v9

    int-to-float v12, v12

    invoke-direct {v11, v13, v14, v2, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v11, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v2, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    iget-object v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget v1, v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    if-ne v1, v15, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v10, v2}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v1}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->setupButton(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    iput-boolean v3, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    move p1, v1

    :goto_0
    sget-object v4, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    array-length v4, v4

    if-ge p1, v4, :cond_2

    sget-object v4, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, p1

    aget v5, v4, v1

    iget v6, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    if-gt v5, v6, :cond_1

    aget v5, v4, v2

    if-lt v5, v6, :cond_1

    aget v5, v4, v3

    iget v6, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    if-gt v5, v6, :cond_1

    aget v4, v4, v0

    if-lt v4, v6, :cond_1

    iput p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->setupButton(I)V

    iput-boolean v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v4, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    sub-int/2addr p1, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v4, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    sub-int/2addr p2, v4

    iget-boolean v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    if-eqz v5, :cond_5

    div-int/lit8 p1, p1, 0x6

    div-int/lit8 p2, p2, 0x6

    sget-object v5, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    iget v6, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    aget v6, v5, v1

    aget v7, v5, v2

    mul-int/lit8 v8, p1, 0x2

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_3

    sub-int/2addr v6, p1

    aput v6, v5, v1

    add-int/2addr v7, p1

    aput v7, v5, v2

    :cond_3
    aget v6, v5, v3

    aget v7, v5, v0

    mul-int/lit8 v8, p2, 0x2

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_4

    add-int/2addr v6, p2

    aput v6, v5, v3

    sub-int/2addr v7, p2

    aput v7, v5, v0

    :cond_4
    mul-int/lit8 p1, p1, 0x6

    mul-int/lit8 p2, p2, 0x6

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    iget v6, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    aget v6, v5, v1

    add-int/2addr v6, p1

    aput v6, v5, v1

    aget v6, v5, v2

    add-int/2addr v6, p1

    aput v6, v5, v2

    aget v6, v5, v3

    add-int/2addr v6, p2

    aput v6, v5, v3

    aget v6, v5, v0

    add-int/2addr v6, p2

    aput v6, v5, v0

    :goto_3
    iget v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {p2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    sget-object v5, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    iget v7, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v7

    aget v1, v5, v1

    int-to-float v1, v1

    aget v7, v5, v3

    int-to-float v7, v7

    aget v2, v5, v2

    int-to-float v2, v2

    aget v0, v5, v0

    int-to-float v0, v0

    invoke-direct {v4, v1, v7, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p2, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p2, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_6
    return v3
.end method

.method public setupButton(I)V
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    sget-object v3, Lcom/stryker/terminal/Globals;->ScreenKbControlsLayout:[[I

    aget-object v3, v3, p1

    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v7, v3, v6

    int-to-float v7, v7

    const/4 v8, 0x2

    aget v9, v3, v8

    int-to-float v9, v9

    const/4 v10, 0x3

    aget v3, v3, v10

    int-to-float v3, v3

    invoke-direct {v2, v5, v7, v9, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v4, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-lt p1, v8, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-lt p1, v8, :cond_1

    add-int/lit8 v1, p1, -0x2

    sget-object v2, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "Joystick"

    :cond_2
    if-ne p1, v6, :cond_3

    const-string v0, "Text input"

    :cond_3
    const/16 v1, 0x8

    if-ne p1, v1, :cond_4

    const-string v0, "Joystick 2"

    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    const-string v0, "Joystick 3"

    :cond_5
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v2}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/xorg/R$string;->screenkb_custom_layout_help:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    return-void
.end method
