.class public final Landroidx/appcompat/widget/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/z0;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Lf/n;

.field public b:Landroid/widget/ListAdapter;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Landroidx/appcompat/widget/a1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/u0;->d:Landroidx/appcompat/widget/a1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->a:Lf/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/u0;->a:Lf/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/j0;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/u0;->a:Lf/n;

    :cond_0
    return-void
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u0;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lf/m;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/u0;->d:Landroidx/appcompat/widget/a1;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/a1;->getPopupContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v2}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/u0;->c:Ljava/lang/CharSequence;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/u0;->b:Landroid/widget/ListAdapter;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v2, v1, p0}, Lf/m;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/u0;->a:Lf/n;

    .line 38
    .line 39
    iget-object v0, v0, Lf/n;->a:Lf/l;

    .line 40
    .line 41
    iget-object v0, v0, Lf/l;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroidx/appcompat/widget/s0;->d(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p2}, Landroidx/appcompat/widget/s0;->c(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/appcompat/widget/u0;->a:Lf/n;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/u0;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/u0;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Landroidx/appcompat/widget/u0;->d:Landroidx/appcompat/widget/a1;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/u0;->b:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/u0;->dismiss()V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
