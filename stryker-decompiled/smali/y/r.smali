.class public abstract Ly/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ly/r;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Ly/r;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly/r;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Ly/r;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILy/o;ZZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;ILandroid/util/TypedValue;ILy/o;ZZ)Landroid/graphics/Typeface;
    .locals 16

    move/from16 v10, p1

    move-object/from16 v0, p2

    move/from16 v7, p3

    move-object/from16 v11, p4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v1, 0x1

    invoke-virtual {v8, v10, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const-string v12, "ResourcesCompat"

    .line 1
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v1, "res/"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v14, 0x0

    const/4 v15, -0x3

    if-nez v1, :cond_0

    if-eqz v11, :cond_8

    invoke-virtual {v11, v15, v14}, Ly/o;->callbackFailAsync(ILandroid/os/Handler;)V

    goto/16 :goto_5

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 2
    sget-object v9, Lz/j;->b:Ln/f;

    invoke-static {v8, v10, v13, v1, v7}, Lz/j;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ln/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    if-eqz v11, :cond_1

    .line 3
    invoke-virtual {v11, v1, v14}, Ly/o;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    move-object v14, v1

    goto/16 :goto_5

    :cond_2
    if-eqz p6, :cond_3

    goto/16 :goto_5

    :cond_3
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1, v8}, Lv1/f;->N(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Ly/f;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "Failed to find font-family tag"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_8

    invoke-virtual {v11, v15, v14}, Ly/o;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    iget v6, v0, Landroid/util/TypedValue;->assetCookie:I

    move-object/from16 v1, p0

    move-object v3, v8

    move/from16 v4, p1

    move-object v5, v13

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lz/j;->a(Landroid/content/Context;Ly/f;Landroid/content/res/Resources;ILjava/lang/String;IILy/o;Z)Landroid/graphics/Typeface;

    move-result-object v14

    goto :goto_5

    :cond_5
    iget v0, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 4
    sget-object v1, Lz/j;->a:Lf/q0;

    move-object/from16 v2, p0

    move-object v3, v8

    move/from16 v4, p1

    move-object v5, v13

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lf/q0;->A(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v8, v10, v13, v0, v7}, Lz/j;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Ln/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v11, :cond_1

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {v11, v1, v14}, Ly/o;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v11, v15, v14}, Ly/o;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string v1, "Failed to read xml resource "

    :goto_2
    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_3
    const-string v1, "Failed to parse xml resource "

    goto :goto_2

    :goto_4
    if-eqz v11, :cond_8

    invoke-virtual {v11, v15, v14}, Ly/o;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_8
    :goto_5
    if-nez v14, :cond_a

    if-nez v11, :cond_a

    if-eqz p6, :cond_9

    goto :goto_6

    .line 6
    :cond_9
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Font resource ID #0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be retrieved."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    return-object v14

    .line 7
    :cond_b
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
