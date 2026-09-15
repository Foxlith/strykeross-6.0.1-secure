.class public final Landroidx/fragment/app/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/u0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/u0;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/fragment/app/k0;->a:Landroidx/fragment/app/u0;

    if-eqz v0, :cond_7

    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    .line 1
    invoke-direct {p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p1, Landroidx/fragment/app/FragmentContainerView;->d:Z

    invoke-interface {p4}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ls0/a;->b:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-eqz p2, :cond_4

    if-nez v6, :cond_4

    if-gtz v0, :cond_2

    if-eqz v5, :cond_1

    const-string p1, " with tag "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "FragmentContainerView must have an android:id to add Fragment "

    .line 2
    invoke-static {p4, p2, p1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/u0;->z()Landroidx/fragment/app/o0;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/u0;

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 7
    invoke-static {v0, p2, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p3, p4, v2}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 9
    new-instance p3, Landroidx/fragment/app/a;

    invoke-direct {p3, v4}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    iput-boolean v3, p3, Landroidx/fragment/app/e1;->p:Z

    .line 10
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p4

    .line 11
    invoke-virtual {p3, p4, p2, v5, v3}, Landroidx/fragment/app/a;->d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-boolean p2, p3, Landroidx/fragment/app/e1;->g:Z

    if-nez p2, :cond_3

    iput-boolean v1, p3, Landroidx/fragment/app/e1;->h:Z

    iget-object p2, p3, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 12
    invoke-virtual {p2, p3, v3}, Landroidx/fragment/app/u0;->t(Landroidx/fragment/app/r0;Z)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This transaction is already being added to the back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    :goto_1
    iget-object p2, v4, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    invoke-virtual {p2}, Landroidx/fragment/app/c1;->d()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/b1;

    .line 15
    iget-object p4, p3, Landroidx/fragment/app/b1;->c:Landroidx/fragment/app/Fragment;

    .line 16
    iget v0, p4, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    iput-object p1, p4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroidx/fragment/app/b1;->a()V

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    const-string v0, "fragment"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    return-object v2

    :cond_8
    const-string p2, "class"

    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ls0/a;->a:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p2, :cond_9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_9
    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_18

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 18
    :try_start_0
    invoke-static {v0, p2}, Landroidx/fragment/app/o0;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v9, Landroidx/fragment/app/Fragment;

    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_a

    goto/16 :goto_8

    :cond_a
    if-eqz p1, :cond_b

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_b
    if-ne v1, v5, :cond_d

    if-ne v6, v5, :cond_d

    if-eqz v8, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_3
    if-eq v6, v5, :cond_e

    invoke-virtual {v4, v6}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_4

    :cond_e
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_f

    if-eqz v8, :cond_f

    invoke-virtual {v4, v8}, Landroidx/fragment/app/u0;->w(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_f
    if-nez v0, :cond_10

    if-eq v1, v5, :cond_10

    invoke-virtual {v4, v1}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :cond_10
    const-string v5, "FragmentManager"

    if-nez v0, :cond_12

    invoke-virtual {v4}, Landroidx/fragment/app/u0;->z()Landroidx/fragment/app/o0;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    iget-object p3, v0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/u0;

    .line 21
    iget-object p3, p3, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 22
    iget-object p3, p3, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 23
    invoke-static {p3, p2, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 24
    iput-boolean v3, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v6, :cond_11

    move p3, v6

    goto :goto_5

    :cond_11
    move p3, v1

    :goto_5
    iput p3, v0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    iput-object v8, v0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v3, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iput-object v4, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 25
    iget-object p3, v4, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 26
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 27
    iget-object p3, p3, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 28
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v1}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0}, Landroidx/fragment/app/u0;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    move-result-object p3

    .line 29
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 30
    :goto_6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    goto :goto_7

    :cond_12
    iget-boolean p3, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez p3, :cond_17

    iput-boolean v3, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iput-object v4, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 31
    iget-object p3, v4, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 32
    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i0;

    .line 33
    iget-object p3, p3, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 34
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p3, p4, v1}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0}, Landroidx/fragment/app/u0;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    move-result-object p3

    .line 35
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_13

    goto :goto_6

    .line 36
    :cond_13
    :goto_7
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroidx/fragment/app/b1;->j()V

    invoke-virtual {p3}, Landroidx/fragment/app/b1;->i()V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_16

    if-eqz v6, :cond_14

    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    :cond_14
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_15

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_15
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/j0;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/j0;-><init>(Landroidx/fragment/app/k0;Landroidx/fragment/app/b1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Fragment "

    const-string p4, " did not create a view."

    .line 37
    invoke-static {p3, p2, p4}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :cond_18
    :goto_8
    return-object v2
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/k0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
