.class public final Landroidx/appcompat/view/menu/i;
.super Landroidx/appcompat/view/menu/x;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:Landroid/widget/PopupWindow$OnDismissListener;

.field public B:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Landroidx/appcompat/view/menu/e;

.field public final k:Landroidx/appcompat/view/menu/f;

.field public final l:Lf/q0;

.field public m:I

.field public n:I

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Landroidx/appcompat/view/menu/b0;

.field public z:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/view/menu/e;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/e;-><init>(Landroidx/appcompat/view/menu/x;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->j:Landroidx/appcompat/view/menu/e;

    .line 25
    .line 26
    new-instance v0, Landroidx/appcompat/view/menu/f;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/x;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->k:Landroidx/appcompat/view/menu/f;

    .line 32
    .line 33
    new-instance v0, Lf/q0;

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, p0, v2}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->l:Lf/q0;

    .line 40
    .line 41
    iput v1, p0, Landroidx/appcompat/view/menu/i;->m:I

    .line 42
    .line 43
    iput v1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->b:Landroid/content/Context;

    .line 46
    .line 47
    iput-object p2, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 48
    .line 49
    iput p3, p0, Landroidx/appcompat/view/menu/i;->d:I

    .line 50
    .line 51
    iput p4, p0, Landroidx/appcompat/view/menu/i;->e:I

    .line 52
    .line 53
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/i;->f:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/i;->w:Z

    .line 56
    .line 57
    sget-object p3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-static {p2}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 p3, 0x1

    .line 64
    if-ne p2, p3, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move v1, p3

    .line 68
    :goto_0
    iput v1, p0, Landroidx/appcompat/view/menu/i;->r:I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    .line 80
    div-int/2addr p2, v2

    .line 81
    const p3, 0x7f070017

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Landroidx/appcompat/view/menu/i;->c:I

    .line 93
    .line 94
    new-instance p1, Landroid/os/Handler;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->g:Landroid/os/Handler;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2
.end method

.method public final b(Landroidx/appcompat/view/menu/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->m(Landroidx/appcompat/view/menu/o;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/o;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/i;->m(Landroidx/appcompat/view/menu/o;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/i;->k:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    new-array v2, v1, [Landroidx/appcompat/view/menu/h;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [Landroidx/appcompat/view/menu/h;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_1

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 24
    .line 25
    iget-object v3, v3, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Landroidx/appcompat/view/menu/i;->m:I

    .line 8
    .line 9
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->w:Z

    return-void
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroidx/appcompat/widget/i2;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/i;->m:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/view/menu/i;->m:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 8
    .line 9
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/appcompat/view/menu/i;->n:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->s:Z

    iput p1, p0, Landroidx/appcompat/view/menu/i;->u:I

    return-void
.end method

.method public final j(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/i;->x:Z

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/i;->t:Z

    iput p1, p0, Landroidx/appcompat/view/menu/i;->v:I

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/o;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Landroidx/appcompat/view/menu/l;

    .line 12
    .line 13
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/i;->f:Z

    .line 14
    .line 15
    const v6, 0x7f0d000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/l;-><init>(Landroidx/appcompat/view/menu/o;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/i;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v7, 0x1

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/i;->w:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iput-boolean v7, v4, Landroidx/appcompat/view/menu/l;->c:Z

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/i;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/o;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_0
    if-ge v8, v5, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1, v8}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_1

    .line 57
    .line 58
    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    if-eqz v9, :cond_1

    .line 63
    .line 64
    move v5, v7

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v5, 0x0

    .line 70
    :goto_1
    iput-boolean v5, v4, Landroidx/appcompat/view/menu/l;->c:Z

    .line 71
    .line 72
    :cond_3
    :goto_2
    iget v5, v0, Landroidx/appcompat/view/menu/i;->c:I

    .line 73
    .line 74
    invoke-static {v4, v2, v5}, Landroidx/appcompat/view/menu/x;->c(Landroidx/appcompat/view/menu/l;Landroid/content/Context;I)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    new-instance v8, Landroidx/appcompat/widget/b3;

    .line 79
    .line 80
    iget v9, v0, Landroidx/appcompat/view/menu/i;->d:I

    .line 81
    .line 82
    iget v10, v0, Landroidx/appcompat/view/menu/i;->e:I

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    invoke-direct {v8, v2, v11, v9, v10}, Landroidx/appcompat/widget/v2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    .line 87
    .line 88
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->l:Lf/q0;

    .line 89
    .line 90
    iput-object v2, v8, Landroidx/appcompat/widget/b3;->D:Landroidx/appcompat/widget/w2;

    .line 91
    .line 92
    iput-object v0, v8, Landroidx/appcompat/widget/v2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 93
    .line 94
    iget-object v2, v8, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 100
    .line 101
    iput-object v2, v8, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 102
    .line 103
    iget v2, v0, Landroidx/appcompat/view/menu/i;->n:I

    .line 104
    .line 105
    iput v2, v8, Landroidx/appcompat/widget/v2;->l:I

    .line 106
    .line 107
    iput-boolean v7, v8, Landroidx/appcompat/widget/v2;->z:Z

    .line 108
    .line 109
    iget-object v2, v8, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v8, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 115
    .line 116
    const/4 v9, 0x2

    .line 117
    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/v2;->o(Landroid/widget/ListAdapter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/v2;->q(I)V

    .line 124
    .line 125
    .line 126
    iget v2, v0, Landroidx/appcompat/view/menu/i;->n:I

    .line 127
    .line 128
    iput v2, v8, Landroidx/appcompat/widget/v2;->l:I

    .line 129
    .line 130
    iget-object v2, v0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-lez v4, :cond_c

    .line 137
    .line 138
    invoke-static {v2, v7}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Landroidx/appcompat/view/menu/h;

    .line 143
    .line 144
    iget-object v10, v4, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 145
    .line 146
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/o;->size()I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    const/4 v13, 0x0

    .line 151
    :goto_3
    if-ge v13, v12, :cond_5

    .line 152
    .line 153
    invoke-virtual {v10, v13}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-eqz v15, :cond_4

    .line 162
    .line 163
    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    if-ne v1, v15, :cond_4

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    move-object v14, v11

    .line 174
    :goto_4
    if-nez v14, :cond_6

    .line 175
    .line 176
    move-object v6, v11

    .line 177
    goto :goto_9

    .line 178
    :cond_6
    iget-object v10, v4, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 179
    .line 180
    iget-object v10, v10, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 181
    .line 182
    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 187
    .line 188
    if-eqz v13, :cond_7

    .line 189
    .line 190
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 191
    .line 192
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    check-cast v12, Landroidx/appcompat/view/menu/l;

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_7
    check-cast v12, Landroidx/appcompat/view/menu/l;

    .line 204
    .line 205
    const/4 v13, 0x0

    .line 206
    :goto_5
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/l;->getCount()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    const/4 v9, 0x0

    .line 211
    :goto_6
    const/4 v11, -0x1

    .line 212
    if-ge v9, v15, :cond_9

    .line 213
    .line 214
    invoke-virtual {v12, v9}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/q;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    if-ne v14, v6, :cond_8

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_9
    move v9, v11

    .line 225
    :goto_7
    if-ne v9, v11, :cond_a

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_a
    add-int/2addr v9, v13

    .line 229
    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    sub-int/2addr v9, v6

    .line 234
    if-ltz v9, :cond_d

    .line 235
    .line 236
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-lt v9, v6, :cond_b

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_b
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    goto :goto_9

    .line 248
    :cond_c
    const/4 v4, 0x0

    .line 249
    :cond_d
    :goto_8
    const/4 v6, 0x0

    .line 250
    :goto_9
    if-eqz v6, :cond_19

    .line 251
    .line 252
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 253
    .line 254
    iget-object v10, v8, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 255
    .line 256
    const/16 v11, 0x1c

    .line 257
    .line 258
    if-gt v9, v11, :cond_f

    .line 259
    .line 260
    sget-object v9, Landroidx/appcompat/widget/b3;->E:Ljava/lang/reflect/Method;

    .line 261
    .line 262
    if-eqz v9, :cond_e

    .line 263
    .line 264
    :try_start_0
    new-array v11, v7, [Ljava/lang/Object;

    .line 265
    .line 266
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 267
    .line 268
    const/4 v13, 0x0

    .line 269
    aput-object v12, v11, v13

    .line 270
    .line 271
    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    :cond_e
    :goto_a
    const/4 v9, 0x0

    .line 275
    goto :goto_b

    .line 276
    :catch_0
    const-string v9, "MenuPopupWindow"

    .line 277
    .line 278
    const-string v11, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 279
    .line 280
    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :cond_f
    const/4 v9, 0x0

    .line 285
    invoke-static {v10, v9}, Landroidx/appcompat/widget/y2;->a(Landroid/widget/PopupWindow;Z)V

    .line 286
    .line 287
    .line 288
    goto :goto_a

    .line 289
    :goto_b
    invoke-static {v10, v9}, Landroidx/appcompat/widget/x2;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    sub-int/2addr v9, v7

    .line 297
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    check-cast v9, Landroidx/appcompat/view/menu/h;

    .line 302
    .line 303
    iget-object v9, v9, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 304
    .line 305
    iget-object v9, v9, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 306
    .line 307
    const/4 v10, 0x2

    .line 308
    new-array v11, v10, [I

    .line 309
    .line 310
    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 311
    .line 312
    .line 313
    new-instance v10, Landroid/graphics/Rect;

    .line 314
    .line 315
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .line 317
    .line 318
    iget-object v12, v0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/View;

    .line 319
    .line 320
    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 321
    .line 322
    .line 323
    iget v12, v0, Landroidx/appcompat/view/menu/i;->r:I

    .line 324
    .line 325
    const/16 v16, 0x0

    .line 326
    .line 327
    if-ne v12, v7, :cond_11

    .line 328
    .line 329
    aget v11, v11, v16

    .line 330
    .line 331
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    add-int/2addr v9, v11

    .line 336
    add-int/2addr v9, v5

    .line 337
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 338
    .line 339
    if-le v9, v10, :cond_10

    .line 340
    .line 341
    move/from16 v9, v16

    .line 342
    .line 343
    goto :goto_d

    .line 344
    :cond_10
    :goto_c
    move v9, v7

    .line 345
    goto :goto_d

    .line 346
    :cond_11
    aget v9, v11, v16

    .line 347
    .line 348
    sub-int/2addr v9, v5

    .line 349
    if-gez v9, :cond_12

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_12
    const/4 v9, 0x0

    .line 353
    :goto_d
    if-ne v9, v7, :cond_13

    .line 354
    .line 355
    move v13, v7

    .line 356
    goto :goto_e

    .line 357
    :cond_13
    const/4 v13, 0x0

    .line 358
    :goto_e
    iput v9, v0, Landroidx/appcompat/view/menu/i;->r:I

    .line 359
    .line 360
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 361
    .line 362
    const/16 v10, 0x1a

    .line 363
    .line 364
    const/4 v11, 0x5

    .line 365
    if-lt v9, v10, :cond_14

    .line 366
    .line 367
    iput-object v6, v8, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 368
    .line 369
    const/4 v9, 0x0

    .line 370
    const/4 v12, 0x0

    .line 371
    goto :goto_10

    .line 372
    :cond_14
    const/4 v9, 0x2

    .line 373
    new-array v10, v9, [I

    .line 374
    .line 375
    iget-object v12, v0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 376
    .line 377
    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    .line 379
    .line 380
    new-array v9, v9, [I

    .line 381
    .line 382
    invoke-virtual {v6, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 383
    .line 384
    .line 385
    iget v12, v0, Landroidx/appcompat/view/menu/i;->n:I

    .line 386
    .line 387
    and-int/lit8 v12, v12, 0x7

    .line 388
    .line 389
    if-ne v12, v11, :cond_15

    .line 390
    .line 391
    const/4 v12, 0x0

    .line 392
    aget v14, v10, v12

    .line 393
    .line 394
    iget-object v15, v0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 395
    .line 396
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 397
    .line 398
    .line 399
    move-result v15

    .line 400
    add-int/2addr v15, v14

    .line 401
    aput v15, v10, v12

    .line 402
    .line 403
    aget v14, v9, v12

    .line 404
    .line 405
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 406
    .line 407
    .line 408
    move-result v15

    .line 409
    add-int/2addr v15, v14

    .line 410
    aput v15, v9, v12

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_15
    const/4 v12, 0x0

    .line 414
    :goto_f
    aget v14, v9, v12

    .line 415
    .line 416
    aget v15, v10, v12

    .line 417
    .line 418
    sub-int v12, v14, v15

    .line 419
    .line 420
    aget v9, v9, v7

    .line 421
    .line 422
    aget v10, v10, v7

    .line 423
    .line 424
    sub-int/2addr v9, v10

    .line 425
    :goto_10
    iget v10, v0, Landroidx/appcompat/view/menu/i;->n:I

    .line 426
    .line 427
    and-int/2addr v10, v11

    .line 428
    if-ne v10, v11, :cond_18

    .line 429
    .line 430
    if-eqz v13, :cond_16

    .line 431
    .line 432
    add-int/2addr v12, v5

    .line 433
    goto :goto_11

    .line 434
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    :cond_17
    sub-int/2addr v12, v5

    .line 439
    goto :goto_11

    .line 440
    :cond_18
    if-eqz v13, :cond_17

    .line 441
    .line 442
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    add-int/2addr v12, v5

    .line 447
    :goto_11
    iput v12, v8, Landroidx/appcompat/widget/v2;->f:I

    .line 448
    .line 449
    iput-boolean v7, v8, Landroidx/appcompat/widget/v2;->k:Z

    .line 450
    .line 451
    iput-boolean v7, v8, Landroidx/appcompat/widget/v2;->j:Z

    .line 452
    .line 453
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/v2;->i(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_13

    .line 457
    :cond_19
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/i;->s:Z

    .line 458
    .line 459
    if-eqz v5, :cond_1a

    .line 460
    .line 461
    iget v5, v0, Landroidx/appcompat/view/menu/i;->u:I

    .line 462
    .line 463
    iput v5, v8, Landroidx/appcompat/widget/v2;->f:I

    .line 464
    .line 465
    :cond_1a
    iget-boolean v5, v0, Landroidx/appcompat/view/menu/i;->t:Z

    .line 466
    .line 467
    if-eqz v5, :cond_1b

    .line 468
    .line 469
    iget v5, v0, Landroidx/appcompat/view/menu/i;->v:I

    .line 470
    .line 471
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/v2;->i(I)V

    .line 472
    .line 473
    .line 474
    :cond_1b
    iget-object v5, v0, Landroidx/appcompat/view/menu/x;->a:Landroid/graphics/Rect;

    .line 475
    .line 476
    if-eqz v5, :cond_1c

    .line 477
    .line 478
    new-instance v9, Landroid/graphics/Rect;

    .line 479
    .line 480
    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 481
    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_1c
    const/4 v9, 0x0

    .line 485
    :goto_12
    iput-object v9, v8, Landroidx/appcompat/widget/v2;->y:Landroid/graphics/Rect;

    .line 486
    .line 487
    :goto_13
    new-instance v5, Landroidx/appcompat/view/menu/h;

    .line 488
    .line 489
    iget v6, v0, Landroidx/appcompat/view/menu/i;->r:I

    .line 490
    .line 491
    invoke-direct {v5, v8, v1, v6}, Landroidx/appcompat/view/menu/h;-><init>(Landroidx/appcompat/widget/b3;Landroidx/appcompat/view/menu/o;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    invoke-virtual {v8}, Landroidx/appcompat/widget/v2;->d()V

    .line 498
    .line 499
    .line 500
    iget-object v2, v8, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 501
    .line 502
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 503
    .line 504
    .line 505
    if-nez v4, :cond_1d

    .line 506
    .line 507
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/i;->x:Z

    .line 508
    .line 509
    if-eqz v4, :cond_1d

    .line 510
    .line 511
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/o;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    if-eqz v4, :cond_1d

    .line 516
    .line 517
    const v4, 0x7f0d0012

    .line 518
    .line 519
    .line 520
    const/4 v5, 0x0

    .line 521
    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    check-cast v3, Landroid/widget/FrameLayout;

    .line 526
    .line 527
    const v4, 0x1020016

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    check-cast v4, Landroid/widget/TextView;

    .line 535
    .line 536
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 537
    .line 538
    .line 539
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/o;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    const/4 v1, 0x0

    .line 547
    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v8}, Landroidx/appcompat/widget/v2;->d()V

    .line 551
    .line 552
    .line 553
    :cond_1d
    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/h;

    .line 16
    .line 17
    iget-object v4, v4, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ge v1, v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/appcompat/view/menu/h;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/appcompat/view/menu/h;

    .line 53
    .line 54
    iget-object v3, v1, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 55
    .line 56
    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/o;->removeMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/i;->B:Z

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    iget-object v1, v1, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    iget-object v3, v1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 67
    .line 68
    invoke-static {v3, v4}, Landroidx/appcompat/widget/x2;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v3, 0x1

    .line 84
    if-lez v1, :cond_5

    .line 85
    .line 86
    add-int/lit8 v5, v1, -0x1

    .line 87
    .line 88
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroidx/appcompat/view/menu/h;

    .line 93
    .line 94
    iget v5, v5, Landroidx/appcompat/view/menu/h;->c:I

    .line 95
    .line 96
    :goto_2
    iput v5, p0, Landroidx/appcompat/view/menu/i;->r:I

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/i;->p:Landroid/view/View;

    .line 100
    .line 101
    sget-object v6, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 102
    .line 103
    invoke-static {v5}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-ne v5, v3, :cond_6

    .line 108
    .line 109
    move v5, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    move v5, v3

    .line 112
    goto :goto_2

    .line 113
    :goto_3
    if-nez v1, :cond_a

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->dismiss()V

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->y:Landroidx/appcompat/view/menu/b0;

    .line 119
    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/b0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    .line 123
    .line 124
    .line 125
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 126
    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_8

    .line 134
    .line 135
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 136
    .line 137
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->j:Landroidx/appcompat/view/menu/e;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    iput-object v4, p0, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 143
    .line 144
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->q:Landroid/view/View;

    .line 145
    .line 146
    iget-object p2, p0, Landroidx/appcompat/view/menu/i;->k:Landroidx/appcompat/view/menu/f;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->A:Landroid/widget/PopupWindow$OnDismissListener;

    .line 152
    .line 153
    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_a
    if-eqz p2, :cond_b

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroidx/appcompat/view/menu/h;

    .line 164
    .line 165
    iget-object p1, p1, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_4
    return-void
.end method

.method public final onDismiss()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/appcompat/view/menu/h;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 18
    .line 19
    iget-object v5, v5, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x0

    .line 32
    :goto_1
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, v4, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/appcompat/view/menu/h;

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/o;

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/i;->b(Landroidx/appcompat/view/menu/o;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/appcompat/view/menu/i;->y:Landroidx/appcompat/view/menu/b0;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->c(Landroidx/appcompat/view/menu/o;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/i;->y:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/i;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/appcompat/view/menu/h;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/widget/b3;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_0
    check-cast v0, Landroidx/appcompat/view/menu/l;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method
