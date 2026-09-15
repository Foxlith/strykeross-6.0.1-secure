.class public final Landroidx/appcompat/widget/l;
.super Landroidx/appcompat/widget/h0;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/p;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/o;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/o;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/o;

    const/4 v0, 0x0

    const v1, 0x7f040021

    invoke-direct {p0, p2, v0, v1}, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, La/c;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p2, Landroidx/appcompat/widget/k;

    invoke-direct {p2, p0, p0, p1, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/o;

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->d()Z

    return v1
.end method

.method public final setFrame(IIII)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    add-int/2addr p2, v1

    .line 50
    div-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    add-int/2addr p4, v2

    .line 53
    div-int/lit8 p4, p4, 0x2

    .line 54
    .line 55
    sub-int v1, p2, v0

    .line 56
    .line 57
    sub-int v2, p4, v0

    .line 58
    .line 59
    add-int/2addr p2, v0

    .line 60
    add-int/2addr p4, v0

    .line 61
    invoke-static {p3, v1, v2, p2, p4}, La0/b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return p1
.end method
