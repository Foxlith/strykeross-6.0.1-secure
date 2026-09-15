.class Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;
.super Landroidx/core/view/u1;
.source "SourceFile"


# instance fields
.field private startTranslationY:I

.field private startY:I

.field private final tmpLocation:[I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/u1;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/d2;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onPrepare(Landroidx/core/view/d2;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    return-void
.end method

.method public onProgress(Landroidx/core/view/q2;Ljava/util/List;)Landroidx/core/view/q2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/q2;",
            "Ljava/util/List<",
            "Landroidx/core/view/d2;",
            ">;)",
            "Landroidx/core/view/q2;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/core/view/d2;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/core/view/c2;->c()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    and-int/lit8 v1, v1, 0x8

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget p2, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/core/view/d2;->a:Landroidx/core/view/c2;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/core/view/c2;->b()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {p2, v1, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    int-to-float p2, p2

    .line 41
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object p1
.end method

.method public onStart(Landroidx/core/view/d2;Landroidx/core/view/t1;)Landroidx/core/view/t1;
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-object p2
.end method
