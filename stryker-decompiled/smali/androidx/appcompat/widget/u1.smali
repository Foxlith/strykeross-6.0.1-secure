.class public final Landroidx/appcompat/widget/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Landroid/graphics/RectF;

.field public static final m:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:[I

.field public g:Z

.field public h:Landroid/text/TextPaint;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/content/Context;

.field public final k:Landroidx/appcompat/widget/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u1;->l:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/u1;->m:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/u1;->a:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/u1;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/appcompat/widget/u1;->c:F

    iput v1, p0, Landroidx/appcompat/widget/u1;->d:F

    iput v1, p0, Landroidx/appcompat/widget/u1;->e:F

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/u1;->f:[I

    iput-boolean v0, p0, Landroidx/appcompat/widget/u1;->g:Z

    iput-object p1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    new-instance p1, Landroidx/appcompat/widget/s1;

    invoke-direct {p1}, Landroidx/appcompat/widget/s1;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/u1;->k:Landroidx/appcompat/widget/q1;

    goto :goto_1

    :cond_0
    new-instance p1, Landroidx/appcompat/widget/q1;

    invoke-direct {p1}, Landroidx/appcompat/widget/q1;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static b([I)[I
    .locals 6

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget v4, p0, v3

    if-lez v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [I

    :goto_1
    if-ge v2, p0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/u1;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retrieve TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p2}, Landroidx/appcompat/widget/u1;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to invoke TextView#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() method"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/u1;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/u1;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->k:Landroidx/appcompat/widget/q1;

    iget-object v1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/t1;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_5

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v2, Landroidx/appcompat/widget/u1;->l:Landroid/graphics/RectF;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/u1;->c(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/u1;->g(FI)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v2

    goto :goto_4

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/u1;->b:Z

    return-void
.end method

.method public final c(Landroid/graphics/RectF;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/widget/u1;->f:[I

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-eqz v2, :cond_6

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sub-int/2addr v2, v3

    .line 12
    const/4 v4, 0x0

    .line 13
    move v5, v4

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-gt v4, v2, :cond_5

    .line 16
    .line 17
    add-int v5, v4, v2

    .line 18
    .line 19
    div-int/lit8 v5, v5, 0x2

    .line 20
    .line 21
    iget-object v6, v0, Landroidx/appcompat/widget/u1;->f:[I

    .line 22
    .line 23
    aget v6, v6, v5

    .line 24
    .line 25
    iget-object v7, v0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    invoke-interface {v9, v8, v7}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    if-eqz v9, :cond_0

    .line 42
    .line 43
    move-object v8, v9

    .line 44
    :cond_0
    invoke-static {v7}, Landroidx/appcompat/widget/n1;->b(Landroid/widget/TextView;)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    iget-object v10, v0, Landroidx/appcompat/widget/u1;->h:Landroid/text/TextPaint;

    .line 49
    .line 50
    if-nez v10, :cond_1

    .line 51
    .line 52
    new-instance v10, Landroid/text/TextPaint;

    .line 53
    .line 54
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v10, v0, Landroidx/appcompat/widget/u1;->h:Landroid/text/TextPaint;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object v10, v0, Landroidx/appcompat/widget/u1;->h:Landroid/text/TextPaint;

    .line 64
    .line 65
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 70
    .line 71
    .line 72
    iget-object v10, v0, Landroidx/appcompat/widget/u1;->h:Landroid/text/TextPaint;

    .line 73
    .line 74
    int-to-float v6, v6

    .line 75
    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    .line 77
    .line 78
    const-string v6, "getLayoutAlignment"

    .line 79
    .line 80
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 81
    .line 82
    invoke-static {v7, v10, v6}, Landroidx/appcompat/widget/u1;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    move-object v11, v6

    .line 87
    check-cast v11, Landroid/text/Layout$Alignment;

    .line 88
    .line 89
    iget v6, v1, Landroid/graphics/RectF;->right:F

    .line 90
    .line 91
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    iget-object v14, v0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    .line 96
    .line 97
    iget-object v15, v0, Landroidx/appcompat/widget/u1;->h:Landroid/text/TextPaint;

    .line 98
    .line 99
    iget-object v6, v0, Landroidx/appcompat/widget/u1;->k:Landroidx/appcompat/widget/q1;

    .line 100
    .line 101
    move-object v10, v8

    .line 102
    move v13, v9

    .line 103
    move-object/from16 v16, v6

    .line 104
    .line 105
    invoke-static/range {v10 .. v16}, Landroidx/appcompat/widget/p1;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/t1;)Landroid/text/StaticLayout;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v7, -0x1

    .line 110
    if-eq v9, v7, :cond_2

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-gt v7, v9, :cond_3

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    sub-int/2addr v7, v3

    .line 123
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineEnd(I)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eq v7, v8, :cond_2

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    int-to-float v6, v6

    .line 139
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 140
    .line 141
    cmpl-float v6, v6, v7

    .line 142
    .line 143
    if-lez v6, :cond_4

    .line 144
    .line 145
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 146
    .line 147
    move v2, v5

    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    move/from16 v17, v5

    .line 153
    .line 154
    move v5, v4

    .line 155
    move/from16 v4, v17

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_5
    iget-object v1, v0, Landroidx/appcompat/widget/u1;->f:[I

    .line 160
    .line 161
    aget v1, v1, v5

    .line 162
    .line 163
    return v1

    .line 164
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v2, "No available text sizes to choose from."

    .line 167
    .line 168
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v1
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/u1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/u1;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    cmpl-float v0, p1, v0

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroidx/appcompat/widget/o1;->a(Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Landroidx/appcompat/widget/u1;->b:Z

    .line 55
    .line 56
    :try_start_0
    const-string v1, "nullLayouts"

    .line 57
    .line 58
    invoke-static {v1}, Landroidx/appcompat/widget/u1;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "ACTVAutoSizeHelper"

    .line 72
    .line 73
    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    .line 74
    .line 75
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    .line 85
    .line 86
    .line 87
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public final h()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/u1;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/u1;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/u1;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u1;->f:[I

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/u1;->e:F

    iget v3, p0, Landroidx/appcompat/widget/u1;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/u1;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    new-array v3, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    iget v4, p0, Landroidx/appcompat/widget/u1;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/u1;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroidx/appcompat/widget/u1;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/u1;->f:[I

    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/u1;->b:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Landroidx/appcompat/widget/u1;->b:Z

    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/u1;->b:Z

    return v0
.end method

.method public final i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Landroidx/appcompat/widget/u1;->g:Z

    if-eqz v4, :cond_1

    iput v3, p0, Landroidx/appcompat/widget/u1;->a:I

    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/widget/u1;->d:F

    sub-int/2addr v1, v3

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/u1;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/appcompat/widget/u1;->c:F

    :cond_1
    return v4
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u1;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/c0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k(FFF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, "px) is less or equal to (0px)"

    if-lez v1, :cond_2

    cmpg-float v1, p2, p1

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/u1;->a:I

    iput p1, p0, Landroidx/appcompat/widget/u1;->d:F

    iput p2, p0, Landroidx/appcompat/widget/u1;->e:F

    iput p3, p0, Landroidx/appcompat/widget/u1;->c:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/u1;->g:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The auto-size step granularity ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum auto-size text size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Minimum auto-size text size ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
