.class public final Landroidx/core/view/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/d2;

.field public final synthetic b:Landroidx/core/view/q2;

.field public final synthetic c:Landroidx/core/view/q2;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/core/view/d2;Landroidx/core/view/q2;Landroidx/core/view/q2;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/v1;->a:Landroidx/core/view/d2;

    iput-object p2, p0, Landroidx/core/view/v1;->b:Landroidx/core/view/q2;

    iput-object p3, p0, Landroidx/core/view/v1;->c:Landroidx/core/view/q2;

    iput p4, p0, Landroidx/core/view/v1;->d:I

    iput-object p5, p0, Landroidx/core/view/v1;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/core/view/v1;->a:Landroidx/core/view/d2;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/core/view/c2;->d(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, v0, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/core/view/c2;->b()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v2, 0x1e

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/core/view/v1;->b:Landroidx/core/view/q2;

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroidx/core/view/h2;

    .line 27
    .line 28
    invoke-direct {v1, v3}, Landroidx/core/view/h2;-><init>(Landroidx/core/view/q2;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v2, 0x1d

    .line 33
    .line 34
    if-lt v1, v2, :cond_1

    .line 35
    .line 36
    new-instance v1, Landroidx/core/view/g2;

    .line 37
    .line 38
    invoke-direct {v1, v3}, Landroidx/core/view/g2;-><init>(Landroidx/core/view/q2;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Landroidx/core/view/f2;

    .line 43
    .line 44
    invoke-direct {v1, v3}, Landroidx/core/view/f2;-><init>(Landroidx/core/view/q2;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const/4 v2, 0x1

    .line 48
    :goto_1
    const/16 v4, 0x100

    .line 49
    .line 50
    if-gt v2, v4, :cond_3

    .line 51
    .line 52
    iget v4, p0, Landroidx/core/view/v1;->d:I

    .line 53
    .line 54
    and-int/2addr v4, v2

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    iget-object v4, v3, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    :goto_2
    invoke-virtual {v1, v2, v4}, Landroidx/core/view/i2;->c(ILz/f;)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    iget-object v4, v3, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iget-object v5, p0, Landroidx/core/view/v1;->c:Landroidx/core/view/q2;

    .line 74
    .line 75
    iget-object v5, v5, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget v6, v4, Lz/f;->a:I

    .line 82
    .line 83
    iget v7, v5, Lz/f;->a:I

    .line 84
    .line 85
    sub-int/2addr v6, v7

    .line 86
    int-to-float v6, v6

    .line 87
    const/high16 v7, 0x3f800000    # 1.0f

    .line 88
    .line 89
    sub-float/2addr v7, p1

    .line 90
    mul-float/2addr v6, v7

    .line 91
    float-to-double v8, v6

    .line 92
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 93
    .line 94
    add-double/2addr v8, v10

    .line 95
    double-to-int v6, v8

    .line 96
    iget v8, v4, Lz/f;->b:I

    .line 97
    .line 98
    iget v9, v5, Lz/f;->b:I

    .line 99
    .line 100
    sub-int/2addr v8, v9

    .line 101
    int-to-float v8, v8

    .line 102
    mul-float/2addr v8, v7

    .line 103
    float-to-double v8, v8

    .line 104
    add-double/2addr v8, v10

    .line 105
    double-to-int v8, v8

    .line 106
    iget v9, v4, Lz/f;->c:I

    .line 107
    .line 108
    iget v12, v5, Lz/f;->c:I

    .line 109
    .line 110
    sub-int/2addr v9, v12

    .line 111
    int-to-float v9, v9

    .line 112
    mul-float/2addr v9, v7

    .line 113
    float-to-double v12, v9

    .line 114
    add-double/2addr v12, v10

    .line 115
    double-to-int v9, v12

    .line 116
    iget v12, v4, Lz/f;->d:I

    .line 117
    .line 118
    iget v5, v5, Lz/f;->d:I

    .line 119
    .line 120
    sub-int/2addr v12, v5

    .line 121
    int-to-float v5, v12

    .line 122
    mul-float/2addr v5, v7

    .line 123
    float-to-double v12, v5

    .line 124
    add-double/2addr v12, v10

    .line 125
    double-to-int v5, v12

    .line 126
    invoke-static {v4, v6, v8, v9, v5}, Landroidx/core/view/q2;->e(Lz/f;IIII)Lz/f;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_2

    .line 131
    :goto_3
    shl-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {v1}, Landroidx/core/view/i2;->b()Landroidx/core/view/q2;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Landroidx/core/view/v1;->e:Landroid/view/View;

    .line 143
    .line 144
    invoke-static {v1, p1, v0}, Landroidx/core/view/y1;->g(Landroid/view/View;Landroidx/core/view/q2;Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
