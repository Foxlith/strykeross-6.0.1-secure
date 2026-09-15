.class public final Lw0/k;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:I

.field public c:Z

.field public final synthetic d:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/k;->d:Landroidx/preference/PreferenceFragmentCompat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw0/k;->c:Z

    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lw0/p;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    check-cast p1, Lw0/p;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :cond_0
    return v0
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lw0/k;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lw0/k;->b:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 6

    .line 1
    iget-object p3, p0, Lw0/k;->a:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lw0/k;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lw0/k;->a:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lw0/k;->b:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v1, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lw0/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
