.class public abstract Landroidx/preference/TwoStatePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public m:Z

.field public n:Ljava/lang/CharSequence;

.field public p:Ljava/lang/CharSequence;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->l(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/preference/Preference;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->q:Z

    if-nez v2, :cond_2

    :cond_1
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->m:Z

    iput-boolean v1, p0, Landroidx/preference/TwoStatePreference;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->k()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->f(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->e()V

    :cond_2
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->n:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->n:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
