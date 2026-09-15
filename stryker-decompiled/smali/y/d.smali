.class public final Ly/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:Landroid/content/res/ColorStateList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/d;->a:Landroid/graphics/Shader;

    iput-object p2, p0, Ly/d;->b:Landroid/content/res/ColorStateList;

    iput p3, p0, Ly/d;->c:I

    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Ly/d;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_21

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "gradient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    const-string v5, "selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v2, v3, v1}, Ly/c;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1
    new-instance v1, Ly/d;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-direct {v1, v9, v0, v2}, Ly/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v1

    .line 2
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": unsupported complex color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    sget-object v4, Lu/a;->d:[I

    invoke-static {v0, v1, v3, v4}, Lv1/f;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v7, "startX"

    .line 4
    invoke-static {v2, v7}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    move v11, v8

    goto :goto_1

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v11, v7

    :goto_1
    const-string v7, "startY"

    invoke-static {v2, v7}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    move v12, v8

    goto :goto_2

    :cond_4
    const/16 v7, 0x9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v12, v7

    :goto_2
    const-string v7, "endX"

    invoke-static {v2, v7}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    move v13, v8

    goto :goto_3

    :cond_5
    const/16 v7, 0xa

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v13, v7

    :goto_3
    const-string v7, "endY"

    invoke-static {v2, v7}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    move v14, v8

    goto :goto_4

    :cond_6
    const/16 v7, 0xb

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    move v14, v7

    :goto_4
    const-string v7, "centerX"

    invoke-static {v2, v7}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    const/4 v10, 0x3

    if-nez v7, :cond_7

    move v7, v8

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v10, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_5
    const-string v15, "centerY"

    invoke-static {v2, v15}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    move v15, v8

    goto :goto_6

    :cond_8
    const/4 v15, 0x4

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    :goto_6
    const-string v9, "type"

    .line 5
    invoke-static {v2, v9}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_9

    move v9, v10

    goto :goto_7

    :cond_9
    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    :goto_7
    const-string v5, "startColor"

    .line 6
    invoke-static {v2, v5}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v10

    goto :goto_8

    :cond_a
    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    :goto_8
    const-string v8, "centerColor"

    .line 7
    invoke-static {v2, v8}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v19

    .line 8
    invoke-static {v2, v8}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    move v8, v10

    goto :goto_9

    :cond_b
    const/4 v8, 0x7

    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    :goto_9
    const-string v6, "endColor"

    invoke-static {v2, v6}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    move v6, v10

    goto :goto_a

    :cond_c
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v6, v21

    :goto_a
    const-string v10, "tileMode"

    .line 9
    invoke-static {v2, v10}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    move/from16 v22, v7

    const/4 v7, 0x0

    goto :goto_b

    :cond_d
    const/4 v10, 0x6

    move/from16 v22, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    move v7, v10

    :goto_b
    const-string v10, "gradientRadius"

    .line 10
    invoke-static {v2, v10}, Lv1/f;->C(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    move/from16 v23, v15

    const/4 v10, 0x0

    goto :goto_c

    :cond_e
    const/4 v10, 0x5

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 11
    :goto_c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v15, 0x1

    add-int/2addr v4, v15

    new-instance v15, Ljava/util/ArrayList;

    move/from16 v24, v10

    const/16 v10, 0x14

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v25, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move/from16 v26, v13

    const/4 v13, 0x1

    if-eq v10, v13, :cond_14

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move/from16 v27, v12

    if-ge v13, v4, :cond_f

    const/4 v12, 0x3

    if-eq v10, v12, :cond_15

    :cond_f
    const/4 v12, 0x2

    if-eq v10, v12, :cond_11

    :cond_10
    :goto_e
    move/from16 v13, v26

    move/from16 v12, v27

    goto :goto_d

    :cond_11
    if-gt v13, v4, :cond_10

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "item"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto :goto_e

    :cond_12
    sget-object v10, Lu/a;->e:[I

    invoke-static {v0, v1, v3, v10}, Lv1/f;->K(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v13, :cond_13

    if-eqz v20, :cond_13

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move/from16 v27, v12

    :cond_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v0, Lv1/c;

    invoke-direct {v0, v14, v15}, Lv1/c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_17

    goto :goto_10

    .line 13
    :cond_17
    new-instance v0, Lv1/c;

    if-eqz v19, :cond_18

    invoke-direct {v0, v5, v8, v6}, Lv1/c;-><init>(III)V

    goto :goto_10

    :cond_18
    invoke-direct {v0, v5, v6}, Lv1/c;-><init>(II)V

    .line 14
    :goto_10
    iget-object v1, v0, Lv1/c;->b:Ljava/lang/Object;

    iget-object v0, v0, Lv1/c;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v9, v2, :cond_1c

    const/4 v3, 0x2

    if-eq v9, v3, :cond_1b

    new-instance v4, Landroid/graphics/LinearGradient;

    move-object v15, v0

    check-cast v15, [I

    move-object/from16 v16, v1

    check-cast v16, [F

    if-eq v7, v2, :cond_1a

    if-eq v7, v3, :cond_19

    .line 15
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_11
    move-object/from16 v17, v0

    const/4 v2, 0x0

    goto :goto_12

    :cond_19
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_11

    :cond_1a
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_11

    :goto_12
    move-object v10, v4

    move/from16 v12, v27

    move/from16 v13, v26

    move/from16 v14, v25

    .line 16
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_15

    :cond_1b
    const/4 v2, 0x0

    new-instance v4, Landroid/graphics/SweepGradient;

    check-cast v0, [I

    check-cast v1, [F

    move/from16 v8, v22

    move/from16 v15, v23

    invoke-direct {v4, v8, v15, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    goto :goto_15

    :cond_1c
    move/from16 v8, v22

    move/from16 v15, v23

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v3, v24, v3

    if-lez v3, :cond_1f

    new-instance v4, Landroid/graphics/RadialGradient;

    move-object/from16 v19, v0

    check-cast v19, [I

    move-object v0, v1

    check-cast v0, [F

    const/4 v1, 0x1

    if-eq v7, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v7, v1, :cond_1d

    .line 17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :goto_13
    move-object/from16 v21, v1

    move v1, v15

    goto :goto_14

    :cond_1d
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    :cond_1e
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_13

    :goto_14
    move-object v15, v4

    move/from16 v16, v8

    move/from16 v17, v1

    move/from16 v18, v24

    move-object/from16 v20, v0

    .line 18
    invoke-direct/range {v15 .. v21}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 19
    :goto_15
    new-instance v0, Ly/d;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1, v2}, Ly/d;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    return-object v0

    .line 20
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid gradient color tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly/d;->a:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Ly/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
