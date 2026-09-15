.class public final Lq3/c;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/app/Activity;

.field public final c:Ll4/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    iput-object p3, p0, Lq3/c;->a:Ljava/util/List;

    iput-object p2, p0, Lq3/c;->b:Landroid/app/Activity;

    new-instance p2, Ll4/l;

    invoke-direct {p2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lq3/c;->c:Ll4/l;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/custom/License;

    iget-boolean p1, p1, Lcom/zalexdev/stryker/custom/License;->header:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zalexdev/stryker/custom/License;

    instance-of v0, p1, Lq3/b;

    if-eqz v0, :cond_0

    check-cast p1, Lq3/b;

    iget-object p1, p1, Lq3/b;->a:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/zalexdev/stryker/custom/License;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    check-cast p1, Lq3/a;

    iget-object v0, p1, Lq3/a;->a:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/custom/License;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lq3/a;->b:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/zalexdev/stryker/custom/License;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/zalexdev/stryker/custom/License;->copyright:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, p1, Lq3/a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/zalexdev/stryker/custom/License;->copyright:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p2, Lcom/zalexdev/stryker/custom/License;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    iget-object v2, p1, Lq3/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lq3/a;->e:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/material/snackbar/a;

    const/16 v1, 0x13

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lq3/b;

    const v2, 0x7f0d0082

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lq3/b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lq3/a;

    const v2, 0x7f0d0081

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lq3/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
