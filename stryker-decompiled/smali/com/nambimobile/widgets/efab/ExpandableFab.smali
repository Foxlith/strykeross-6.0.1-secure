.class public final Lcom/nambimobile/widgets/efab/ExpandableFab;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SourceFile"


# instance fields
.field private animationTimer:Ljava/util/Timer;

.field private closingAnimationDurationMs:J

.field private closingAnticipateTension:F

.field private defaultOnClickBehavior:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field

.field private efabColor:I

.field private efabEnabled:Z

.field private efabIcon:Landroid/graphics/drawable/Drawable;

.field private efabSize:Lcom/nambimobile/widgets/efab/FabSize;

.field private fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

.field private fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

.field private firstFabOptionMarginPx:F

.field private iconAnimationRotationDeg:F

.field private final label:Lcom/nambimobile/widgets/efab/Label;

.field private onAnimationStart:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field

.field private openingAnimationDurationMs:J

.field private orientation:Lcom/nambimobile/widgets/efab/Orientation;

.field private successiveFabOptionMarginPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "attributeSet"

    invoke-static {v1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object v3, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nambimobile/widgets/efab/ResourcesKt;->getThemeColorAccent(Landroid/content/Context;)I

    move-result v4

    iput v4, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/nambimobile/widgets/efab/R$drawable;->ic_plus_white_24dp:I

    invoke-static {v4, v5}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabIcon:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/nambimobile/widgets/efab/FabSize;->NORMAL:Lcom/nambimobile/widgets/efab/FabSize;

    iput-object v4, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabSize:Lcom/nambimobile/widgets/efab/FabSize;

    const/4 v5, 0x1

    iput-boolean v5, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabEnabled:Z

    const/high16 v6, -0x3cf90000    # -135.0f

    iput v6, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    sget-object v6, Lcom/nambimobile/widgets/efab/FabSize;->MINI:Lcom/nambimobile/widgets/efab/FabSize;

    iput-object v6, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    sget-object v7, Lcom/nambimobile/widgets/efab/FabOptionPosition;->ABOVE:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    iput-object v7, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    const/high16 v8, 0x42a00000    # 80.0f

    iput v8, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->firstFabOptionMarginPx:F

    const/high16 v8, 0x42960000    # 75.0f

    iput v8, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->successiveFabOptionMarginPx:F

    const-wide/16 v8, 0xfa

    iput-wide v8, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    const-wide/16 v10, 0x1f4

    iput-wide v10, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    const/high16 v10, 0x40000000    # 2.0f

    iput v10, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    new-instance v10, Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/nambimobile/widgets/efab/Label;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lx/g;->a:Ljava/lang/Object;

    const v12, 0x106000b

    .line 1
    invoke-static {v11, v12}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v11

    .line 2
    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 3
    invoke-static {v11, v12}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v11

    .line 4
    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    sget-object v11, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v10, v11}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    const/high16 v12, 0x42480000    # 50.0f

    invoke-virtual {v10, v12}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v10, v12}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V

    const-wide/16 v12, 0x7d

    invoke-virtual {v10, v12, v13}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    invoke-virtual {v10, v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    const/high16 v8, 0x40600000    # 3.5f

    invoke-virtual {v10, v8}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    iput-object v10, v14, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    sget-object v8, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result v8

    .line 6
    invoke-virtual {v14, v8}, Landroid/view/View;->setId(I)V

    .line 7
    :cond_0
    invoke-static {v14, v2}, Lk0/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab:[I

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    :try_start_0
    sget v9, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_position:I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    sget v11, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_visibleToHiddenAnimationDurationMs:I

    invoke-virtual {v8, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    move-object v11, v2

    goto :goto_0

    :cond_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_0
    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nambimobile/widgets/efab/Label;->getVisibleToHiddenAnimationDurationMs()J

    move-result-wide v11

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_1
    sget v13, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_hiddenToVisibleAnimationDurationMs:I

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_3

    move-object v13, v2

    goto :goto_2

    :cond_3
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :goto_2
    if-nez v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nambimobile/widgets/efab/Label;->getHiddenToVisibleAnimationDurationMs()J

    move-result-wide v15

    :goto_3
    move-object/from16 v17, v6

    move-wide v5, v15

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v15

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_text:I

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_textColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nambimobile/widgets/efab/Label;->getLabelTextColor()I

    move-result v13

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_textSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nambimobile/widgets/efab/Label;->getLabelTextSize()F

    move-result v13

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_font:I

    invoke-virtual {v8, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nambimobile/widgets/efab/Label;->getLabelFont()Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_5

    :cond_5
    invoke-static {v0, v2}, Ly/r;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_5
    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_backgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nambimobile/widgets/efab/Label;->getLabelBackgroundColor()I

    move-result v13

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_elevation:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nambimobile/widgets/efab/Label;->getLabelElevation()I

    move-result v13

    invoke-virtual {v8, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    invoke-static {}, Lcom/nambimobile/widgets/efab/LabelPosition;->values()[Lcom/nambimobile/widgets/efab/LabelPosition;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_marginPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nambimobile/widgets/efab/Label;->getMarginPx()F

    move-result v9

    invoke-virtual {v8, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    invoke-virtual {v15, v11, v12}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    invoke-virtual {v15, v5, v6}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_overshootTension:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nambimobile/widgets/efab/Label;->getOvershootTension()F

    move-result v5

    invoke-virtual {v8, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_label_translationXPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nambimobile/widgets/efab/Label;->getTranslationXPx()F

    move-result v5

    invoke-virtual {v8, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v15, v2}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v5, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab:[I

    invoke-virtual {v2, v1, v5, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v15

    :try_start_1
    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_orientation:I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_fabOptionPosition:I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_size:I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v4, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_fabOptionSize:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget v5, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_openingAnimationDurationMs:I

    invoke-virtual {v15, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_6
    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getOpeningAnimationDurationMs()J

    move-result-wide v5

    :goto_7
    move-wide v12, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v19, v15

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v19, v15

    goto/16 :goto_d

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_7

    :goto_8
    sget v5, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_closingAnimationDurationMs:I

    invoke-virtual {v15, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    goto :goto_9

    :cond_8
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    :goto_9
    if-nez v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getClosingAnimationDurationMs()J

    move-result-wide v5

    :goto_a
    move-wide/from16 v17, v5

    goto :goto_b

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_a

    :goto_b
    sget v5, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_icon:I

    invoke-virtual {v15, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-nez v5, :cond_a

    const/16 v16, 0x0

    goto :goto_c

    :cond_a
    invoke-static {v0, v5}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_c
    invoke-static {}, Lcom/nambimobile/widgets/efab/Orientation;->values()[Lcom/nambimobile/widgets/efab/Orientation;

    move-result-object v0

    aget-object v0, v0, v1

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_color:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getEfabColor()I

    move-result v5

    invoke-virtual {v15, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    if-nez v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getEfabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v16, v1

    :cond_b
    invoke-static {}, Lcom/nambimobile/widgets/efab/FabSize;->values()[Lcom/nambimobile/widgets/efab/FabSize;

    move-result-object v1

    aget-object v6, v1, v3

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v15, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_iconAnimationRotationDeg:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getIconAnimationRotationDeg()F

    move-result v3

    invoke-virtual {v15, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-static {}, Lcom/nambimobile/widgets/efab/FabSize;->values()[Lcom/nambimobile/widgets/efab/FabSize;

    move-result-object v1

    aget-object v9, v1, v4

    invoke-static {}, Lcom/nambimobile/widgets/efab/FabOptionPosition;->values()[Lcom/nambimobile/widgets/efab/FabOptionPosition;

    move-result-object v1

    aget-object v10, v1, v2

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_firstFabOptionMarginPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getFirstFabOptionMarginPx()F

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_successiveFabOptionMarginPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getSuccessiveFabOptionMarginPx()F

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->ExpandableFab_efab_closingAnticipateTension:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getClosingAnticipateTension()F

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v5

    move-object/from16 v4, v16

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move/from16 v11, v19

    move-object/from16 v19, v15

    move-wide/from16 v14, v17

    move/from16 v16, v20

    :try_start_2
    invoke-direct/range {v1 .. v16}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;Lcom/nambimobile/widgets/efab/FabSize;ZFLcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFJJF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_2
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    :goto_d
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/u;

    .line 9
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_e
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :goto_f
    :try_start_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nambimobile/widgets/efab/R$string;->efab_label_illegal_optional_properties:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.efab_label_illegal_optional_properties)"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/u;

    .line 11
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 12
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_10
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nambimobile/widgets/efab/ResourcesKt;->getThemeColorAccent(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nambimobile/widgets/efab/R$drawable;->ic_plus_white_24dp:I

    invoke-static {v2, v3}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabIcon:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/nambimobile/widgets/efab/FabSize;->NORMAL:Lcom/nambimobile/widgets/efab/FabSize;

    iput-object v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabSize:Lcom/nambimobile/widgets/efab/FabSize;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabEnabled:Z

    const/high16 v2, -0x3cf90000    # -135.0f

    iput v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    sget-object v2, Lcom/nambimobile/widgets/efab/FabSize;->MINI:Lcom/nambimobile/widgets/efab/FabSize;

    iput-object v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    sget-object v2, Lcom/nambimobile/widgets/efab/FabOptionPosition;->ABOVE:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    iput-object v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    const/high16 v2, 0x42a00000    # 80.0f

    iput v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->firstFabOptionMarginPx:F

    const/high16 v2, 0x42960000    # 75.0f

    iput v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->successiveFabOptionMarginPx:F

    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    const-wide/16 v4, 0x1f4

    iput-wide v4, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    const/high16 v4, 0x40000000    # 2.0f

    iput v4, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    new-instance v4, Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/nambimobile/widgets/efab/Label;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    const v6, 0x106000b

    .line 13
    invoke-static {v5, v6}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 14
    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 15
    invoke-static {v5, v6}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 16
    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    sget-object v5, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V

    const-wide/16 v5, 0x7d

    invoke-virtual {v4, v5, v6}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    invoke-virtual {v4, v2, v3}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    const/high16 v2, 0x40600000    # 3.5f

    invoke-virtual {v4, v2}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    iput-object v4, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 19
    :cond_0
    invoke-static {v1, v0}, Lk0/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    if-nez p2, :cond_1

    iget-object v0, v1, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    move-object/from16 v18, v0

    goto :goto_0

    :cond_1
    move-object/from16 v18, p2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ffe

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    .line 20
    invoke-static/range {v0 .. v17}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOptionalProperties$default(Lcom/nambimobile/widgets/efab/ExpandableFab;Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;Lcom/nambimobile/widgets/efab/FabSize;ZFLcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFJJFILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;ILkotlin/jvm/internal/f;)V
    .locals 0

    .line 21
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;-><init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V

    return-void
.end method

.method public static synthetic a(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setLabelOnClickListener$lambda-5(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V

    return-void
.end method

.method public static final synthetic access$manualIconAnimation(Lcom/nambimobile/widgets/efab/ExpandableFab;JFFLj5/a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->manualIconAnimation(JFFLj5/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOnClickListener$lambda-4(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private static final closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/nambimobile/widgets/efab/ExpandableFab;",
            "Lj5/a;",
            "JF)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    new-instance p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    move v7, p5

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;-><init>(Lcom/nambimobile/widgets/efab/ExpandableFab;JFLj5/a;)V

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private final manualIconAnimation(JFFLj5/a;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JFF",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    sub-float v3, p4, v2

    .line 6
    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v4

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    long-to-float v0, v0

    .line 19
    div-float/2addr v3, v0

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_0
    const-wide/16 v9, 0xa

    .line 25
    .line 26
    long-to-float v0, v9

    .line 27
    mul-float/2addr v3, v0

    .line 28
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    new-instance v1, Lkotlin/jvm/internal/m;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput v2, v1, Lkotlin/jvm/internal/m;->a:F

    .line 39
    .line 40
    new-instance v7, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getOnAnimationStart$expandable_fab_release()Lj5/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {v0}, Lj5/a;->invoke()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    const-wide/16 v11, 0x0

    .line 56
    .line 57
    new-instance v13, Ljava/util/Timer;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {v13, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v14, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;

    .line 64
    .line 65
    move-object v0, v14

    .line 66
    move/from16 v2, p4

    .line 67
    .line 68
    move-object v4, p0

    .line 69
    move-object/from16 v8, p5

    .line 70
    .line 71
    invoke-direct/range {v0 .. v8}, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$$inlined$timer$default$1;-><init>(Lkotlin/jvm/internal/m;FFLcom/nambimobile/widgets/efab/ExpandableFab;DLandroid/graphics/Matrix;Lj5/a;)V

    .line 72
    .line 73
    .line 74
    move-object v4, v13

    .line 75
    move-object v5, v14

    .line 76
    move-wide v6, v11

    .line 77
    move-wide v8, v9

    .line 78
    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 79
    .line 80
    .line 81
    move-object v0, p0

    .line 82
    iput-object v13, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->animationTimer:Ljava/util/Timer;

    .line 83
    .line 84
    return-void
.end method

.method private final setLabelOnClickListener()V
    .locals 3

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/nambimobile/widgets/efab/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private static final setLabelOnClickListener$lambda-5(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private static final setOnClickListener$lambda-4(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj5/a;->invoke()Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;Lcom/nambimobile/widgets/efab/FabSize;ZFLcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFJJF)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setEfabColor(I)V

    invoke-virtual {p0, p3}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setEfabIcon(Landroid/graphics/drawable/Drawable;)V

    iput p6, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    invoke-virtual {p0, p4}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setEfabSize(Lcom/nambimobile/widgets/efab/FabSize;)V

    invoke-virtual {p0, p5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setEfabEnabled(Z)V

    iput-object p7, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    iput-object p8, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    invoke-virtual {p0, p9}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setFirstFabOptionMarginPx(F)V

    invoke-virtual {p0, p10}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setSuccessiveFabOptionMarginPx(F)V

    invoke-virtual {p0, p11, p12}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOpeningAnimationDurationMs(J)V

    invoke-virtual {p0, p13, p14}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setClosingAnimationDurationMs(J)V

    invoke-virtual {p0, p15}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setClosingAnticipateTension(F)V

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setLabelOnClickListener()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public static synthetic setOptionalProperties$default(Lcom/nambimobile/widgets/efab/ExpandableFab;Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;Lcom/nambimobile/widgets/efab/FabSize;ZFLcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFJJFILjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabSize:Lcom/nambimobile/widgets/efab/FabSize;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabEnabled:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->firstFabOptionMarginPx:F

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->successiveFabOptionMarginPx:F

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-wide v12, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p11

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-wide v14, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p13

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    goto :goto_c

    :cond_c
    move/from16 v1, p15

    :goto_c
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-wide/from16 p11, v12

    move-wide/from16 p13, v14

    move/from16 p15, v1

    invoke-direct/range {p0 .. p15}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;Lcom/nambimobile/widgets/efab/FabSize;ZFLcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFJJF)V

    return-void
.end method


# virtual methods
.method public final synthetic closingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;Lj5/a;)Landroid/animation/Animator;
    .locals 14

    .line 1
    move-object v8, p0

    const-string v0, "onAnimationFinished"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    mul-float/2addr v0, v1

    iget v1, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    sub-float/2addr v1, v0

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_0
    add-float/2addr v1, v0

    goto :goto_0

    :goto_1
    const-wide/16 v3, 0x5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_2
    div-long/2addr v5, v3

    move-wide v10, v5

    goto :goto_3

    :cond_1
    iget-wide v5, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    goto :goto_2

    :goto_3
    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    :goto_5
    if-eqz v6, :cond_3

    iget v12, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    new-instance v13, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;

    move-object v0, v13

    move-object v1, p1

    move-object v2, p0

    move-wide v3, v10

    move v5, v9

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;-><init>(Ljava/lang/Long;Lcom/nambimobile/widgets/efab/ExpandableFab;JFZLj5/a;)V

    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v9

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->manualIconAnimation(JFFLj5/a;)V

    goto :goto_8

    :cond_3
    if-nez p1, :cond_4

    iget-wide v0, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    :goto_6
    move-wide v3, v0

    goto :goto_7

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6

    :goto_7
    iget v5, v8, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    move v0, v6

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V

    :goto_8
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method public final getClosingAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    return-wide v0
.end method

.method public final getClosingAnticipateTension()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    return v0
.end method

.method public final synthetic getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->defaultOnClickBehavior:Lj5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_must_be_child_of_expandablefab_layout:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "resources.getString(R.string.efab_layout_must_be_child_of_expandablefab_layout)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, v1, v2}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/u;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final getEfabColor()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    return v0
.end method

.method public final getEfabEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabEnabled:Z

    return v0
.end method

.method public final getEfabIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getEfabSize()Lcom/nambimobile/widgets/efab/FabSize;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabSize:Lcom/nambimobile/widgets/efab/FabSize;

    return-object v0
.end method

.method public final getFabOptionPosition()Lcom/nambimobile/widgets/efab/FabOptionPosition;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    return-object v0
.end method

.method public final getFabOptionSize()Lcom/nambimobile/widgets/efab/FabSize;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    return-object v0
.end method

.method public final getFirstFabOptionMarginPx()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->firstFabOptionMarginPx:F

    return v0
.end method

.method public final getIconAnimationRotationDeg()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    return v0
.end method

.method public final getLabel()Lcom/nambimobile/widgets/efab/Label;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    return-object v0
.end method

.method public final synthetic getOnAnimationStart$expandable_fab_release()Lj5/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->onAnimationStart:Lj5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/nambimobile/widgets/efab/R$string;->efab_layout_must_be_child_of_expandablefab_layout:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "resources.getString(R.string.efab_layout_must_be_child_of_expandablefab_layout)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, v1, v2}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalState$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/u;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final getOpeningAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    return-wide v0
.end method

.method public final getOrientation()Lcom/nambimobile/widgets/efab/Orientation;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    return-object v0
.end method

.method public final getSuccessiveFabOptionMarginPx()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->successiveFabOptionMarginPx:F

    return v0
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/Label;->hideLabel$expandable_fab_release()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->animationTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    return-void
.end method

.method public final synthetic openingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;Lj5/a;)Landroid/animation/Animator;
    .locals 8

    .line 1
    const-string v0, "onAnimationFinished"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    new-instance v7, Lcom/nambimobile/widgets/efab/ExpandableFab$openingAnimations$1;

    invoke-direct {v7, p3}, Lcom/nambimobile/widgets/efab/ExpandableFab$openingAnimations$1;-><init>(Lj5/a;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/nambimobile/widgets/efab/ExpandableFab;->manualIconAnimation(JFFLj5/a;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1
.end method

.method public final setClosingAnimationDurationMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimationDurationMs:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p2, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/fragment/app/u;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final setClosingAnticipateTension(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnticipateTension:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/u;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final synthetic setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->defaultOnClickBehavior:Lj5/a;

    return-void
.end method

.method public final setEfabColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    return-void
.end method

.method public final setEfabEnabled(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabColor:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setEfabColor(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/nambimobile/widgets/efab/R$color;->efab_disabled:I

    .line 14
    .line 15
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelEnabled$expandable_fab_release(Z)V

    .line 34
    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabEnabled:Z

    .line 37
    .line 38
    return-void
.end method

.method public final setEfabIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setEfabSize(Lcom/nambimobile/widgets/efab/FabSize;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nambimobile/widgets/efab/FabSize;->CUSTOM:Lcom/nambimobile/widgets/efab/FabSize;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/nambimobile/widgets/efab/FabSize;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setSize(I)V

    :cond_0
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->efabSize:Lcom/nambimobile/widgets/efab/FabSize;

    return-void
.end method

.method public final setFabOptionPosition(Lcom/nambimobile/widgets/efab/FabOptionPosition;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionPosition:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    return-void
.end method

.method public final setFabOptionSize(Lcom/nambimobile/widgets/efab/FabSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->fabOptionSize:Lcom/nambimobile/widgets/efab/FabSize;

    return-void
.end method

.method public final setFirstFabOptionMarginPx(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->firstFabOptionMarginPx:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/u;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final setIconAnimationRotationDeg(F)V
    .locals 0

    iput p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->iconAnimationRotationDeg:F

    return-void
.end method

.method public final synthetic setOnAnimationStart$expandable_fab_release(Lj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->onAnimationStart:Lj5/a;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/google/android/material/snackbar/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab;->setLabelOnClickListener()V

    return-void
.end method

.method public final setOpeningAnimationDurationMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->openingAnimationDurationMs:J

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    .line 21
    .line 22
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0, p2, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroidx/fragment/app/u;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setSize(I)V
    .locals 1

    sget-object v0, Lcom/nambimobile/widgets/efab/FabSize;->CUSTOM:Lcom/nambimobile/widgets/efab/FabSize;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/FabSize;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    :cond_0
    return-void
.end method

.method public final setSuccessiveFabOptionMarginPx(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->successiveFabOptionMarginPx:F

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_efab_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_efab_illegal_optional_properties)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/u;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab;->label:Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/Label;->showLabel$expandable_fab_release()V

    return-void
.end method
