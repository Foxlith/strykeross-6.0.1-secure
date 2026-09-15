.class public final Ll1/b;
.super Ll1/k;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public b:Ll1/n;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 5

    .line 1
    iget-object p3, p0, Ll1/b;->b:Ll1/n;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    neg-float p2, p2

    .line 7
    const/4 p3, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Ll1/b;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p3, v1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/w0;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-int/2addr v0, p1

    .line 27
    int-to-float v0, v0

    .line 28
    add-float/2addr v0, p2

    .line 29
    iget-object v2, p0, Ll1/b;->b:Ll1/n;

    .line 30
    .line 31
    check-cast v2, Landroidx/fragment/app/x0;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    cmpl-float v4, v2, v3

    .line 43
    .line 44
    if-ltz v4, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    sub-float/2addr v3, v2

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 56
    .line 57
    .line 58
    neg-float v0, v0

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    mul-float/2addr v0, v2

    .line 65
    const v2, 0x3df5c28f    # 0.12f

    .line 66
    .line 67
    .line 68
    mul-float/2addr v0, v2

    .line 69
    goto :goto_1

    .line 70
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    filled-new-array {p3, v0}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    const-string v0, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    .line 94
    .line 95
    invoke-static {p2, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    .line 1
    return-void
.end method
