.class public final Landroidx/appcompat/widget/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lf/q0;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/e0;->a:Landroid/widget/TextView;

    new-instance v0, Lf/q0;

    invoke-direct {v0, p1}, Lf/q0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/e0;->b:Lf/q0;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->b:Lf/q0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ld/d;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ld/d;->d([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->b:Lf/q0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ld/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Ld/d;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Le/a;->i:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/e0;->e(Z)V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->b:Lf/q0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ld/d;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ld/d;->o(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/e0;->b:Lf/q0;

    .line 2
    .line 3
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ld/d;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ld/d;->r(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
