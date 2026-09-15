.class public final Lg1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lg1/d;

.field public final synthetic b:Lg1/e;


# direct methods
.method public constructor <init>(Lg1/e;Lg1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/c;->b:Lg1/e;

    iput-object p2, p0, Lg1/c;->a:Lg1/d;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg1/c;->b:Lg1/e;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iget-object v2, p0, Lg1/c;->a:Lg1/d;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lg1/e;->a(FLg1/d;Z)V

    .line 9
    .line 10
    .line 11
    iget v4, v2, Lg1/d;->e:F

    .line 12
    .line 13
    iput v4, v2, Lg1/d;->k:F

    .line 14
    .line 15
    iget v4, v2, Lg1/d;->f:F

    .line 16
    .line 17
    iput v4, v2, Lg1/d;->l:F

    .line 18
    .line 19
    iget v4, v2, Lg1/d;->g:F

    .line 20
    .line 21
    iput v4, v2, Lg1/d;->m:F

    .line 22
    .line 23
    iget v4, v2, Lg1/d;->j:I

    .line 24
    .line 25
    add-int/2addr v4, v3

    .line 26
    iget-object v3, v2, Lg1/d;->i:[I

    .line 27
    .line 28
    array-length v3, v3

    .line 29
    rem-int/2addr v4, v3

    .line 30
    invoke-virtual {v2, v4}, Lg1/d;->a(I)V

    .line 31
    .line 32
    .line 33
    iget-boolean v3, v0, Lg1/e;->f:Z

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lg1/e;->f:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 41
    .line 42
    .line 43
    const-wide/16 v3, 0x534

    .line 44
    .line 45
    invoke-virtual {p1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 49
    .line 50
    .line 51
    iget-boolean p1, v2, Lg1/d;->n:Z

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iput-boolean v1, v2, Lg1/d;->n:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget p1, v0, Lg1/e;->e:F

    .line 59
    .line 60
    add-float/2addr p1, v1

    .line 61
    iput p1, v0, Lg1/e;->e:F

    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lg1/c;->b:Lg1/e;

    const/4 v0, 0x0

    iput v0, p1, Lg1/e;->e:F

    return-void
.end method
