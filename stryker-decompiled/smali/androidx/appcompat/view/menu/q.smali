.class public final Landroidx/appcompat/view/menu/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/b;


# instance fields
.field public A:Landroidx/appcompat/view/menu/r;

.field public B:Landroid/view/MenuItem$OnActionExpandListener;

.field public C:Z

.field public D:Landroid/view/ContextMenu$ContextMenuInfo;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:I

.field public j:C

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public final n:Landroidx/appcompat/view/menu/o;

.field public o:Landroidx/appcompat/view/menu/i0;

.field public p:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Landroidx/appcompat/view/menu/q;->i:I

    iput v0, p0, Landroidx/appcompat/view/menu/q;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/q;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/q;->s:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/view/menu/q;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->v:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->w:Z

    const/16 v1, 0x10

    iput v1, p0, Landroidx/appcompat/view/menu/q;->x:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->C:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    iput p3, p0, Landroidx/appcompat/view/menu/q;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/q;->b:I

    iput p4, p0, Landroidx/appcompat/view/menu/q;->c:I

    iput p5, p0, Landroidx/appcompat/view/menu/q;->d:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroidx/appcompat/view/menu/q;->y:I

    return-void
.end method

.method public static c(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroidx/appcompat/view/menu/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/r;)Lb0/b;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lf/q0;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-direct {v0, p0, v1}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/r;->d(Lf/q0;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object p0
.end method

.method public final collapseActionView()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/o;->collapseItemActionView(Landroidx/appcompat/view/menu/q;)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->w:Z

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->u:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->v:Z

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->u:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->s:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    invoke-static {p1, v0}, La0/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->v:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->t:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    invoke-static {p1, v0}, La0/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->w:Z

    .line 39
    .line 40
    :cond_3
    return-object p1
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/r;->b(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/o;->expandItemActionView(Landroidx/appcompat/view/menu/q;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    return-void
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/r;->b(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->k:I

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->j:C

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/q;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/q;->m:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/q;->m:I

    invoke-static {v0, v1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/q;->m:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/q;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->t:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->i:I

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    or-int/lit8 p1, p1, 0x20

    :goto_0
    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    goto :goto_1

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 p1, p1, -0x21

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->C:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isChecked()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVisible()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/q;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/q;)V

    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->z:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/q;->a:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/q;)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->j:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->j:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/q;->k:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->j:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/q;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    :cond_0
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    and-int/lit8 v1, v0, -0x3

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move p1, v2

    .line 21
    :goto_0
    or-int/2addr p1, v1

    .line 22
    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_1
    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->setContentDescription(Ljava/lang/CharSequence;)Lb0/b;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Lb0/b;
    .locals 1

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->q:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    or-int/lit8 p1, p1, 0x10

    :goto_0
    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    goto :goto_1

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    :goto_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/view/menu/q;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/q;->m:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->s:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->u:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->t:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->v:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->h:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-char v0, p0, Landroidx/appcompat/view/menu/q;->h:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/q;->i:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->h:C

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/q;->i:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->B:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->j:C

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 2
    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->h:C

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/q;->i:I

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/q;->j:C

    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/q;->k:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/view/menu/q;->y:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->onItemActionRequestChanged(Landroidx/appcompat/view/menu/q;)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->setShowAsAction(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/q;->setTooltipText(Ljava/lang/CharSequence;)Lb0/b;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Lb0/b;
    .locals 1

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->r:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/q;->x:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, -0x9

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    or-int/2addr p1, v1

    .line 12
    iput p1, p0, Landroidx/appcompat/view/menu/q;->x:I

    .line 13
    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/o;->onItemVisibleChanged(Landroidx/appcompat/view/menu/q;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
