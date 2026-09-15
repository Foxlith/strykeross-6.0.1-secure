.class public final Landroidx/appcompat/widget/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Landroidx/appcompat/widget/f4;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/g0;->c:I

    iput-object p1, p0, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/appcompat/widget/b2;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/g0;->b:Landroidx/appcompat/widget/f4;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/a0;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f4;[I)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v6, p0, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v2, Le/a;->f:[I

    .line 8
    .line 9
    invoke-static {v0, p1, v2, p2}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v4, v7, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 18
    .line 19
    move-object v0, v6

    .line 20
    move-object v3, p1

    .line 21
    move v5, p2

    .line 22
    invoke-static/range {v0 .. v5}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 p2, -0x1

    .line 30
    iget-object v0, v7, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :try_start_1
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eq v1, p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-static {p1}, Landroidx/appcompat/widget/b2;->a(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/4 p1, 0x2

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v7, p1}, Landroidx/appcompat/widget/h4;->a(I)Landroid/content/res/ColorStateList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v6, p1}, Lk0/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 p1, 0x3

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-static {p1, p2}, Landroidx/appcompat/widget/b2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v6, p1}, Lk0/f;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/widget/h4;->f()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :goto_1
    invoke-virtual {v7}, Landroidx/appcompat/widget/h4;->f()V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/g0;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/b2;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/g0;->a()V

    return-void
.end method
