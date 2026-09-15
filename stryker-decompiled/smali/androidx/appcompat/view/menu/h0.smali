.class public final Landroidx/appcompat/view/menu/h0;
.super Landroidx/appcompat/view/menu/x;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/view/menu/o;

.field public final d:Landroidx/appcompat/view/menu/l;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Landroidx/appcompat/widget/b3;

.field public final j:Landroidx/appcompat/view/menu/e;

.field public final k:Landroidx/appcompat/view/menu/f;

.field public l:Landroid/widget/PopupWindow$OnDismissListener;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public p:Landroidx/appcompat/view/menu/b0;

.field public q:Landroid/view/ViewTreeObserver;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/o;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/e;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/e;-><init>(Landroidx/appcompat/view/menu/x;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/e;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/view/menu/f;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/x;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/f;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroidx/appcompat/view/menu/h0;->u:I

    .line 21
    .line 22
    iput-object p3, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p5, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/o;

    .line 25
    .line 26
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/h0;->e:Z

    .line 27
    .line 28
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Landroidx/appcompat/view/menu/l;

    .line 33
    .line 34
    const v2, 0x7f0d0013

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p5, v0, p6, v2}, Landroidx/appcompat/view/menu/l;-><init>(Landroidx/appcompat/view/menu/o;Landroid/view/LayoutInflater;ZI)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/l;

    .line 41
    .line 42
    iput p1, p0, Landroidx/appcompat/view/menu/h0;->g:I

    .line 43
    .line 44
    iput p2, p0, Landroidx/appcompat/view/menu/h0;->h:I

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object p6

    .line 50
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .line 56
    div-int/lit8 v0, v0, 0x2

    .line 57
    .line 58
    const v1, 0x7f070017

    .line 59
    .line 60
    .line 61
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result p6

    .line 65
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result p6

    .line 69
    iput p6, p0, Landroidx/appcompat/view/menu/h0;->f:I

    .line 70
    .line 71
    iput-object p4, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    .line 72
    .line 73
    new-instance p4, Landroidx/appcompat/widget/b3;

    .line 74
    .line 75
    const/4 p6, 0x0

    .line 76
    invoke-direct {p4, p3, p6, p1, p2}, Landroidx/appcompat/widget/v2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    .line 78
    .line 79
    iput-object p4, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 80
    .line 81
    invoke-virtual {p5, p0, p3}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 24
    .line 25
    .line 26
    iput-object p0, v0, Landroidx/appcompat/widget/v2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Landroidx/appcompat/widget/v2;->z:Z

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    move v3, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v3, v4

    .line 46
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    iput-object v5, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/e;

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/f;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, v0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 65
    .line 66
    iget v2, p0, Landroidx/appcompat/view/menu/h0;->u:I

    .line 67
    .line 68
    iput v2, v0, Landroidx/appcompat/widget/v2;->l:I

    .line 69
    .line 70
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/h0;->s:Z

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/l;

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    iget v2, p0, Landroidx/appcompat/view/menu/h0;->f:I

    .line 79
    .line 80
    invoke-static {v5, v3, v2}, Landroidx/appcompat/view/menu/x;->c(Landroidx/appcompat/view/menu/l;Landroid/content/Context;I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iput v2, p0, Landroidx/appcompat/view/menu/h0;->t:I

    .line 85
    .line 86
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/h0;->s:Z

    .line 87
    .line 88
    :cond_3
    iget v1, p0, Landroidx/appcompat/view/menu/h0;->t:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/v2;->q(I)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    iget-object v2, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Landroidx/appcompat/view/menu/x;->a:Landroid/graphics/Rect;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    new-instance v6, Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v6, v2

    .line 111
    :goto_1
    iput-object v6, v0, Landroidx/appcompat/widget/v2;->y:Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/widget/v2;->d()V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 117
    .line 118
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/h0;->v:Z

    .line 122
    .line 123
    if-eqz v6, :cond_6

    .line 124
    .line 125
    iget-object v6, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/o;

    .line 126
    .line 127
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/o;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    if-eqz v7, :cond_6

    .line 132
    .line 133
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const v7, 0x7f0d0012

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    const v7, 0x1020016

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Landroid/widget/TextView;

    .line 154
    .line 155
    if-eqz v7, :cond_5

    .line 156
    .line 157
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/o;->getHeaderTitle()Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 168
    .line 169
    .line 170
    :cond_6
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/v2;->o(Landroid/widget/ListAdapter;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/appcompat/widget/v2;->d()V

    .line 174
    .line 175
    .line 176
    :goto_2
    return-void

    .line 177
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    invoke-virtual {v0}, Landroidx/appcompat/widget/v2;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/l;

    .line 2
    .line 3
    iput-boolean p1, v0, Landroidx/appcompat/view/menu/l;->c:Z

    .line 4
    .line 5
    return-void
.end method

.method public final flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroidx/appcompat/widget/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/h0;->u:I

    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 2
    .line 3
    iput p1, v0, Landroidx/appcompat/widget/v2;->f:I

    .line 4
    .line 5
    return-void
.end method

.method public final j(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h0;->v:Z

    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v2;->i(I)V

    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/o;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    :cond_1
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h0;->r:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h0;->k:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h0;->dismiss()V

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
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/view/menu/a0;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/appcompat/view/menu/h0;->n:Landroid/view/View;

    .line 13
    .line 14
    iget-boolean v8, p0, Landroidx/appcompat/view/menu/h0;->e:Z

    .line 15
    .line 16
    iget v3, p0, Landroidx/appcompat/view/menu/h0;->g:I

    .line 17
    .line 18
    iget v4, p0, Landroidx/appcompat/view/menu/h0;->h:I

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    move-object v7, p1

    .line 22
    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/a0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/o;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->p:Landroidx/appcompat/view/menu/b0;

    .line 26
    .line 27
    iput-object v2, v0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    .line 28
    .line 29
    iget-object v3, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/c0;->setCallback(Landroidx/appcompat/view/menu/b0;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    move v3, v1

    .line 41
    :goto_0
    const/4 v4, 0x1

    .line 42
    if-ge v3, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    move v2, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v2, v1

    .line 66
    :goto_1
    iput-boolean v2, v0, Landroidx/appcompat/view/menu/a0;->h:Z

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/x;->f(Z)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 76
    .line 77
    iput-object v2, v0, Landroidx/appcompat/view/menu/a0;->k:Landroid/widget/PopupWindow$OnDismissListener;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    iput-object v2, p0, Landroidx/appcompat/view/menu/h0;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->c:Landroidx/appcompat/view/menu/o;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/o;->close(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Landroidx/appcompat/view/menu/h0;->i:Landroidx/appcompat/widget/b3;

    .line 88
    .line 89
    iget v3, v2, Landroidx/appcompat/widget/v2;->f:I

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/appcompat/widget/v2;->m()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iget v5, p0, Landroidx/appcompat/view/menu/h0;->u:I

    .line 96
    .line 97
    iget-object v6, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    .line 98
    .line 99
    sget-object v7, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 100
    .line 101
    invoke-static {v6}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    and-int/lit8 v5, v5, 0x7

    .line 110
    .line 111
    const/4 v6, 0x5

    .line 112
    if-ne v5, v6, :cond_4

    .line 113
    .line 114
    iget-object v5, p0, Landroidx/appcompat/view/menu/h0;->m:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    add-int/2addr v3, v5

    .line 121
    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    iget-object v5, v0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    .line 129
    .line 130
    if-nez v5, :cond_6

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-virtual {v0, v3, v2, v4, v4}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    .line 134
    .line 135
    .line 136
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/h0;->p:Landroidx/appcompat/view/menu/b0;

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->c(Landroidx/appcompat/view/menu/o;)Z

    .line 141
    .line 142
    .line 143
    :cond_7
    return v4

    .line 144
    :cond_8
    :goto_3
    return v1
.end method

.method public final setCallback(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h0;->p:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h0;->s:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/h0;->d:Landroidx/appcompat/view/menu/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
