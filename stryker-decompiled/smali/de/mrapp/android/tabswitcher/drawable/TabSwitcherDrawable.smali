.class public Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lde/mrapp/android/tabswitcher/TabSwitcherListener;


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private label:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final size:I

.field private final textSizeNormal:I

.field private final textSizeSmall:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "The context may not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_size:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    .line 20
    .line 21
    sget v1, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_normal:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    .line 28
    .line 29
    sget v2, Lde/mrapp/android/tabswitcher/R$dimen;->tab_switcher_drawable_font_size_small:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    .line 36
    .line 37
    sget v0, Lde/mrapp/android/tabswitcher/R$drawable;->tab_switcher_drawable_background:I

    .line 38
    .line 39
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    .line 58
    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 66
    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    .line 87
    .line 88
    const v0, 0x1010036

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v0}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    iget-object v6, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v4, v3

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    iget-object v3, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->size:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final onAllTabsRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;[Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onSelectionChanged(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherHidden(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onSwitcherShown(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 0

    return-void
.end method

.method public final onTabAdded(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final onTabRemoved(Lde/mrapp/android/tabswitcher/TabSwitcher;ILde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->setCount(I)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setCount(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "The count must be at least 0"

    invoke-static {p1, v0, v1}, Lde/mrapp/android/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->label:Ljava/lang/String;

    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeSmall:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lde/mrapp/android/tabswitcher/drawable/TabSwitcherDrawable;->textSizeNormal:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
