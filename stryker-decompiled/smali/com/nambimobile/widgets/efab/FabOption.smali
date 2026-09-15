.class public final Lcom/nambimobile/widgets/efab/FabOption;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nambimobile/widgets/efab/FabOption$WhenMappings;
    }
.end annotation


# instance fields
.field private closingAnimationDurationMs:J

.field private defaultOnClickBehavior:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field

.field private fabOptionColor:I

.field private fabOptionEnabled:Z

.field private fabOptionIcon:Landroid/graphics/drawable/Drawable;

.field private final hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

.field private final label:Lcom/nambimobile/widgets/efab/Label;

.field private openingAnimationDurationMs:J

.field private openingOvershootTension:F

.field private orientation:Lcom/nambimobile/widgets/efab/Orientation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "attributeSet"

    invoke-static {v1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object v3, v11, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nambimobile/widgets/efab/ResourcesKt;->getThemeColorAccent(Landroid/content/Context;)I

    move-result v4

    iput v4, v11, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionEnabled:Z

    const-wide/16 v5, 0x7d

    iput-wide v5, v11, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimationDurationMs:J

    const-wide/16 v5, 0x4b

    iput-wide v5, v11, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimationDurationMs:J

    const/high16 v7, 0x40600000    # 3.5f

    iput v7, v11, Lcom/nambimobile/widgets/efab/FabOption;->openingOvershootTension:F

    new-instance v8, Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/nambimobile/widgets/efab/Label;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lx/g;->a:Ljava/lang/Object;

    const v10, 0x106000b

    .line 1
    invoke-static {v9, v10}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v9

    .line 2
    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 3
    invoke-static {v9, v10}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v9

    .line 4
    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    sget-object v9, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    const/high16 v10, 0x42480000    # 50.0f

    invoke-virtual {v8, v10}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual {v8, v10}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V

    invoke-virtual {v8, v5, v6}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v8, v5, v6}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    invoke-virtual {v8, v7}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    iput-object v8, v11, Lcom/nambimobile/widgets/efab/FabOption;->label:Lcom/nambimobile/widgets/efab/Label;

    new-instance v5, Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

    invoke-direct {v5, v11}, Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/FabOption;)V

    iput-object v5, v11, Lcom/nambimobile/widgets/efab/FabOption;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result v5

    .line 6
    invoke-virtual {v11, v5}, Landroid/view/View;->setId(I)V

    .line 7
    :cond_0
    invoke-static {v11, v2}, Lk0/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    const/16 v5, 0x8

    .line 8
    invoke-virtual {v11, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption:[I

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    :try_start_0
    sget v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_position:I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget v8, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_visibleToHiddenAnimationDurationMs:I

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-object v8, v2

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nambimobile/widgets/efab/Label;->getVisibleToHiddenAnimationDurationMs()J

    move-result-wide v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    sget v10, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_hiddenToVisibleAnimationDurationMs:I

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v2

    goto :goto_2

    :cond_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    if-nez v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nambimobile/widgets/efab/Label;->getHiddenToVisibleAnimationDurationMs()J

    move-result-wide v12

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v10

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_text:I

    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_textColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nambimobile/widgets/efab/Label;->getLabelTextColor()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_textSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nambimobile/widgets/efab/Label;->getLabelTextSize()F

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_font:I

    invoke-virtual {v5, v14, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nambimobile/widgets/efab/Label;->getLabelFont()Landroid/graphics/Typeface;

    move-result-object v14

    goto :goto_4

    :cond_5
    invoke-static {v0, v14}, Ly/r;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v14

    :goto_4
    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_backgroundColor:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nambimobile/widgets/efab/Label;->getLabelBackgroundColor()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    sget v14, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_elevation:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nambimobile/widgets/efab/Label;->getLabelElevation()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    invoke-static {}, Lcom/nambimobile/widgets/efab/LabelPosition;->values()[Lcom/nambimobile/widgets/efab/LabelPosition;

    move-result-object v14

    aget-object v6, v14, v6

    invoke-virtual {v10, v6}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    sget v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_marginPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nambimobile/widgets/efab/Label;->getMarginPx()F

    move-result v14

    invoke-virtual {v5, v6, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    invoke-virtual {v10, v8, v9}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    invoke-virtual {v10, v12, v13}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    sget v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_overshootTension:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nambimobile/widgets/efab/Label;->getOvershootTension()F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    sget v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_label_translationXPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nambimobile/widgets/efab/Label;->getTranslationXPx()F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {v10, v6}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption:[I

    invoke-virtual {v5, v1, v6, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    :try_start_1
    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_orientation:I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v12, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_openingAnimationDurationMs:I

    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v2

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningAnimationDurationMs()J

    move-result-wide v5

    :goto_6
    move-wide v8, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_6

    :goto_7
    sget v3, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_closingAnimationDurationMs:I

    invoke-virtual {v12, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v3, v2

    goto :goto_8

    :cond_8
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_8
    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getClosingAnimationDurationMs()J

    move-result-wide v5

    :goto_9
    move-wide v13, v5

    goto :goto_a

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_9

    :goto_a
    sget v3, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_icon:I

    invoke-virtual {v12, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_a

    move-object v0, v2

    goto :goto_b

    :cond_a
    invoke-static {v0, v3}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_b
    invoke-static {}, Lcom/nambimobile/widgets/efab/Orientation;->values()[Lcom/nambimobile/widgets/efab/Orientation;

    move-result-object v2

    aget-object v2, v2, v1

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_color:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getFabOptionColor()I

    move-result v3

    invoke-virtual {v12, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_enabled:I

    invoke-virtual {v12, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v1, Lcom/nambimobile/widgets/efab/R$styleable;->FabOption_fab_openingOvershootTension:I

    invoke-virtual/range {p0 .. p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningOvershootTension()F

    move-result v4

    invoke-virtual {v12, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    move-object/from16 v1, p0

    move-object v4, v0

    move-wide v6, v8

    move-wide v8, v13

    invoke-direct/range {v1 .. v10}, Lcom/nambimobile/widgets/efab/FabOption;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;ZJJF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_c
    :try_start_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nambimobile/widgets/efab/R$string;->efab_faboption_illegal_optional_properties:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.efab_faboption_illegal_optional_properties)"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/nambimobile/widgets/efab/ErrorsKt;->illegalArg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/u;

    .line 9
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 10
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_d
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :goto_e
    :try_start_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_f
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nambimobile/widgets/efab/ResourcesKt;->getThemeColorAccent(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionEnabled:Z

    const-wide/16 v1, 0x7d

    iput-wide v1, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimationDurationMs:J

    const-wide/16 v1, 0x4b

    iput-wide v1, p0, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimationDurationMs:J

    const/high16 p1, 0x40600000    # 3.5f

    iput p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingOvershootTension:F

    new-instance v3, Lcom/nambimobile/widgets/efab/Label;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/nambimobile/widgets/efab/Label;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/nambimobile/widgets/efab/Label;->setLabelText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lx/g;->a:Ljava/lang/Object;

    const v5, 0x106000b

    .line 13
    invoke-static {v4, v5}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 14
    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextColor(I)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setLabelTextSize(F)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setLabelFont(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/nambimobile/widgets/efab/R$color;->efab_label_background:I

    .line 15
    invoke-static {v4, v5}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 16
    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setLabelBackgroundColor(I)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nambimobile/widgets/efab/R$dimen;->efab_label_elevation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setLabelElevation(I)V

    sget-object v4, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setPosition(Lcom/nambimobile/widgets/efab/LabelPosition;)V

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setMarginPx(F)V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4}, Lcom/nambimobile/widgets/efab/Label;->setTranslationXPx(F)V

    invoke-virtual {v3, v1, v2}, Lcom/nambimobile/widgets/efab/Label;->setVisibleToHiddenAnimationDurationMs(J)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v3, v1, v2}, Lcom/nambimobile/widgets/efab/Label;->setHiddenToVisibleAnimationDurationMs(J)V

    invoke-virtual {v3, p1}, Lcom/nambimobile/widgets/efab/Label;->setOvershootTension(F)V

    iput-object v3, p0, Lcom/nambimobile/widgets/efab/FabOption;->label:Lcom/nambimobile/widgets/efab/Label;

    new-instance p1, Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

    invoke-direct {p1, p0}, Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;-><init>(Lcom/nambimobile/widgets/efab/FabOption;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    sget-object p1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {}, Landroidx/core/view/l0;->a()I

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    .line 19
    :cond_0
    invoke-static {p0, v0}, Lk0/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    const/16 p1, 0x8

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    :cond_1
    move-object v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const/4 v11, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v11}, Lcom/nambimobile/widgets/efab/FabOption;->setOptionalProperties$default(Lcom/nambimobile/widgets/efab/FabOption;Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;ZJJFILjava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;ILkotlin/jvm/internal/f;)V
    .locals 0

    .line 21
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/nambimobile/widgets/efab/Orientation;->PORTRAIT:Lcom/nambimobile/widgets/efab/Orientation;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nambimobile/widgets/efab/FabOption;-><init>(Landroid/content/Context;Lcom/nambimobile/widgets/efab/Orientation;)V

    return-void
.end method

.method public static synthetic a(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/nambimobile/widgets/efab/FabOption;->setLabelOnClickListener$lambda-6(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/nambimobile/widgets/efab/FabOption;->setOnClickListener$lambda-4(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method private final setLabelOnClickListener()V
    .locals 3

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->label:Lcom/nambimobile/widgets/efab/Label;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/nambimobile/widgets/efab/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private static final setLabelOnClickListener$lambda-6(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method private static final setOnClickListener$lambda-4(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj5/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;ZJJF)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/FabOption;->setFabOptionColor(I)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/nambimobile/widgets/efab/FabOption;->setFabOptionIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/nambimobile/widgets/efab/FabOption;->setFabOptionEnabled(Z)V

    invoke-virtual {p0, p5, p6}, Lcom/nambimobile/widgets/efab/FabOption;->setOpeningAnimationDurationMs(J)V

    invoke-virtual {p0, p7, p8}, Lcom/nambimobile/widgets/efab/FabOption;->setClosingAnimationDurationMs(J)V

    invoke-virtual {p0, p9}, Lcom/nambimobile/widgets/efab/FabOption;->setOpeningOvershootTension(F)V

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/FabOption;->setLabelOnClickListener()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/FabOption;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public static synthetic setOptionalProperties$default(Lcom/nambimobile/widgets/efab/FabOption;Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;ZJJFILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, p10, 0x8

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionEnabled:Z

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v5, p10, 0x10

    if-eqz v5, :cond_4

    iget-wide v5, v0, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimationDurationMs:J

    goto :goto_4

    :cond_4
    move-wide v5, p5

    :goto_4
    and-int/lit8 v7, p10, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimationDurationMs:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    and-int/lit8 v9, p10, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/nambimobile/widgets/efab/FabOption;->openingOvershootTension:F

    goto :goto_6

    :cond_6
    move/from16 v9, p9

    :goto_6
    move-object p1, v1

    move p2, v2

    move-object p3, v3

    move p4, v4

    move-wide p5, v5

    move-wide/from16 p7, v7

    move/from16 p9, v9

    invoke-direct/range {p0 .. p9}, Lcom/nambimobile/widgets/efab/FabOption;->setOptionalProperties(Lcom/nambimobile/widgets/efab/Orientation;ILandroid/graphics/drawable/Drawable;ZJJF)V

    return-void
.end method


# virtual methods
.method public final synthetic closingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const-string v6, "scaleX"

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getClosingAnimationDurationMs()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_0
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v4

    new-array v3, v2, [F

    aput v5, v3, v4

    const-string v6, "scaleY"

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getClosingAnimationDurationMs()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    new-array v3, v2, [F

    aput v5, v3, v4

    const-string v5, "alpha"

    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getClosingAnimationDurationMs()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_2
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p1, 0x2

    aput-object v3, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/nambimobile/widgets/efab/FabOption;->hideOnAnimationEnd:Lcom/nambimobile/widgets/efab/FabOption$hideOnAnimationEnd$1;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v0, p1, v4

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nambimobile/widgets/efab/Label;->visibleToHiddenAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method public final getClosingAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimationDurationMs:J

    return-wide v0
.end method

.method public final synthetic getDefaultOnClickBehavior$expandable_fab_release()Lj5/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->defaultOnClickBehavior:Lj5/a;

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

.method public final getFabOptionColor()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    return v0
.end method

.method public final getFabOptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionEnabled:Z

    return v0
.end method

.method public final getFabOptionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getLabel()Lcom/nambimobile/widgets/efab/Label;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->label:Lcom/nambimobile/widgets/efab/Label;

    return-object v0
.end method

.method public final getOpeningAnimationDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimationDurationMs:J

    return-wide v0
.end method

.method public final getOpeningOvershootTension()F
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingOvershootTension:F

    return v0
.end method

.method public final getOrientation()Lcom/nambimobile/widgets/efab/Orientation;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->orientation:Lcom/nambimobile/widgets/efab/Orientation;

    return-object v0
.end method

.method public final openingAnimations$expandable_fab_release(ILcom/nambimobile/widgets/efab/FabSize;Lcom/nambimobile/widgets/efab/FabOptionPosition;FFLjava/lang/Long;Ljava/lang/Long;)Landroid/animation/Animator;
    .locals 6

    const-string v0, "size"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/FabSize;->getValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/nambimobile/widgets/efab/FabOption;->setSize(I)V

    sget-object p2, Lcom/nambimobile/widgets/efab/FabOption$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 v1, 0x2

    if-eq p2, p3, :cond_1

    if-ne p2, v1, :cond_0

    new-instance p2, Lw4/c;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/fragment/app/u;

    .line 1
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    throw p1

    :cond_1
    new-instance p2, Lw4/c;

    neg-float p4, p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    neg-float p5, p5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p4, p2, Lw4/c;->a:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    iget-object p2, p2, Lw4/c;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    new-instance p5, Landroid/animation/AnimatorSet;

    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningAnimationDurationMs()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningOvershootTension()F

    move-result v5

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v3, v2, v0

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p6, :cond_3

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningAnimationDurationMs()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningOvershootTension()F

    move-result v5

    invoke-direct {v4, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v3, v2, p3

    new-array v3, v1, [F

    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {p0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    if-nez p6, :cond_4

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getOpeningAnimationDurationMs()J

    move-result-wide v4

    goto :goto_3

    :cond_4
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v1

    const-wide/16 v3, 0x1

    const-string p6, "translationY"

    if-nez p1, :cond_5

    new-array p1, p3, [F

    aput p4, p1, v0

    invoke-static {p0, p6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_4
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_5

    :cond_5
    new-array p1, p3, [F

    aput p2, p1, v0

    invoke-static {p0, p6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_4

    :goto_5
    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object p5, p2, v0

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object p4

    invoke-virtual {p4, p7}, Lcom/nambimobile/widgets/efab/Label;->hiddenToVisibleAnimations$expandable_fab_release(Ljava/lang/Long;)Landroid/animation/Animator;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
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
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->closingAnimationDurationMs:J

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
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_faboption_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_faboption_illegal_optional_properties)"

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

.method public final synthetic setDefaultOnClickBehavior$expandable_fab_release(Lj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->defaultOnClickBehavior:Lj5/a;

    return-void
.end method

.method public final setFabOptionColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iput p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    return-void
.end method

.method public final setFabOptionEnabled(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionColor:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/nambimobile/widgets/efab/FabOption;->setFabOptionColor(I)V

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
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/FabOption;->label:Lcom/nambimobile/widgets/efab/Label;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/nambimobile/widgets/efab/Label;->setLabelEnabled$expandable_fab_release(Z)V

    .line 34
    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionEnabled:Z

    .line 37
    .line 38
    return-void
.end method

.method public final setFabOptionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->fabOptionIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/google/android/material/snackbar/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/nambimobile/widgets/efab/FabOption;->setLabelOnClickListener()V

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
    iput-wide p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingAnimationDurationMs:J

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
    sget p2, Lcom/nambimobile/widgets/efab/R$string;->efab_faboption_illegal_optional_properties:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "resources.getString(R.string.efab_faboption_illegal_optional_properties)"

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

.method public final setOpeningOvershootTension(F)V
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
    iput p1, p0, Lcom/nambimobile/widgets/efab/FabOption;->openingOvershootTension:F

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
    sget v0, Lcom/nambimobile/widgets/efab/R$string;->efab_faboption_illegal_optional_properties:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "resources.getString(R.string.efab_faboption_illegal_optional_properties)"

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
