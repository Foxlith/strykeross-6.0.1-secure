.class public final Landroidx/fragment/app/k;
.super Landroidx/fragment/app/t1;
.source "SourceFile"


# direct methods
.method public static j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/core/view/g1;->b(Landroid/view/ViewGroup;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v2}, Landroidx/fragment/app/k;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public static k(Ln/b;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v2}, Landroidx/fragment/app/k;->k(Ln/b;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static l(Ln/b;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln/b;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ln/h;

    .line 6
    .line 7
    invoke-virtual {p0}, Ln/h;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    .line 29
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .locals 34

    move-object/from16 v6, p0

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s1;

    .line 1
    iget-object v2, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/media/session/a;->c(Landroid/view/View;)I

    move-result v2

    .line 3
    iget v3, v1, Landroidx/fragment/app/s1;->a:I

    .line 4
    invoke-static {v3}, Lo/i;->c(I)I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_2

    if-eq v3, v11, :cond_2

    goto :goto_0

    :cond_1
    if-eq v2, v12, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_2
    if-ne v2, v12, :cond_0

    if-nez v9, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s1;

    new-instance v2, Ld0/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/s1;->d()V

    .line 6
    iget-object v3, v1, Landroidx/fragment/app/s1;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v12, Landroidx/fragment/app/h;

    .line 8
    invoke-direct {v12, v1, v2}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/s1;Ld0/d;)V

    iput-boolean v4, v12, Landroidx/fragment/app/h;->d:Z

    iput-boolean v7, v12, Landroidx/fragment/app/h;->c:Z

    .line 9
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ld0/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/s1;->d()V

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v3, Landroidx/fragment/app/j;

    if-eqz v7, :cond_4

    if-ne v1, v9, :cond_5

    :goto_2
    move v4, v13

    goto :goto_3

    :cond_4
    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {v3, v1, v2, v7, v4}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/s1;Ld0/d;ZZ)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/fragment/app/f1;

    invoke-direct {v2, v6, v5, v1}, Landroidx/fragment/app/f1;-><init>(Landroidx/fragment/app/k;Ljava/util/ArrayList;Landroidx/fragment/app/s1;)V

    .line 12
    iget-object v1, v1, Landroidx/fragment/app/s1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x2

    goto :goto_1

    .line 13
    :cond_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 14
    :cond_7
    iget-object v2, v1, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/j;->c(Ljava/lang/Object;)Landroidx/fragment/app/n1;

    move-result-object v11

    iget-object v8, v1, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/j;->c(Ljava/lang/Object;)Landroidx/fragment/app/n1;

    move-result-object v4

    const-string v13, " returned Transition "

    move-object/from16 v16, v0

    const-string v0, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    iget-object v1, v1, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    if-eqz v11, :cond_9

    if-eqz v4, :cond_9

    if-ne v11, v4, :cond_8

    goto :goto_5

    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v0, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_5
    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    move-object v11, v4

    :goto_6
    if-nez v3, :cond_b

    move-object v3, v11

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_d

    if-ne v3, v11, :cond_c

    goto :goto_7

    .line 17
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    :goto_7
    move-object/from16 v0, v16

    const/4 v4, 0x0

    const/4 v11, 0x3

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object v8, v6, Landroidx/fragment/app/t1;->a:Landroid/view/ViewGroup;

    const-string v11, "FragmentManager"

    if-nez v3, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j;

    .line 20
    iget-object v2, v1, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->a()V

    goto :goto_8

    :cond_f
    move-object/from16 v23, v5

    move-object v4, v6

    move-object v2, v12

    move-object/from16 v26, v14

    const/4 v0, 0x0

    move-object v14, v11

    goto/16 :goto_1e

    :cond_10
    new-instance v13, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ln/b;

    .line 22
    invoke-direct {v0}, Ln/k;-><init>()V

    .line 23
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v25, 0x0

    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v26, v14

    move-object/from16 v14, v18

    check-cast v14, Landroidx/fragment/app/j;

    .line 24
    iget-object v14, v14, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    if-eqz v14, :cond_1b

    if-eqz v9, :cond_1b

    if-eqz v10, :cond_1b

    .line 25
    invoke-virtual {v3, v14}, Landroidx/fragment/app/n1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/n1;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iget-object v4, v10, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v27, v11

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v28, v5

    iget-object v5, v9, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v29, v15

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_12

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v18, v15

    const/4 v15, -0x1

    if-eq v13, v15, :cond_11

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, v18

    goto :goto_a

    :cond_12
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v6

    if-nez v7, :cond_13

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lv/g0;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lv/g0;

    goto :goto_b

    :cond_13
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lv/g0;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lv/g0;

    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v12, :cond_14

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v12

    move-object/from16 v12, v18

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v15, v12}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v19

    goto :goto_c

    :cond_14
    new-instance v12, Ln/b;

    .line 26
    invoke-direct {v12}, Ln/k;-><init>()V

    .line 27
    iget-object v13, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v12, v13}, Landroidx/fragment/app/k;->k(Ln/b;Landroid/view/View;)V

    .line 28
    invoke-static {v12, v11}, Landroidx/appcompat/view/menu/d;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {v12}, Ln/b;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 30
    invoke-static {v0, v13}, Landroidx/appcompat/view/menu/d;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 31
    new-instance v13, Ln/b;

    .line 32
    invoke-direct {v13}, Ln/k;-><init>()V

    .line 33
    iget-object v15, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v13, v15}, Landroidx/fragment/app/k;->k(Ln/b;Landroid/view/View;)V

    .line 34
    invoke-static {v13, v6}, Landroidx/appcompat/view/menu/d;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {v0}, Ln/b;->values()Ljava/util/Collection;

    move-result-object v15

    .line 36
    invoke-static {v13, v15}, Landroidx/appcompat/view/menu/d;->r(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 37
    sget-object v15, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/l1;

    iget v15, v0, Ln/k;->c:I

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    :goto_d
    if-ltz v15, :cond_16

    .line 38
    invoke-virtual {v0, v15}, Ln/k;->j(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v0, v15}, Ln/k;->i(I)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v6, v19

    goto :goto_d

    :cond_16
    move-object/from16 v19, v6

    .line 39
    invoke-virtual {v0}, Ln/b;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v12, v6}, Landroidx/fragment/app/k;->l(Ln/b;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ln/b;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v13, v6}, Landroidx/fragment/app/k;->l(Ln/b;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ln/k;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v33, v0

    move-object v13, v1

    move-object v15, v2

    move-object/from16 p1, v16

    move-object/from16 v7, v17

    move-object/from16 v5, v28

    move-object/from16 v2, v30

    move-object/from16 v0, v31

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_17
    invoke-static {v4, v5, v7}, Landroidx/fragment/app/g1;->a(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    new-instance v4, Landroidx/fragment/app/f;

    invoke-direct {v4, v10, v9, v7, v13}, Landroidx/fragment/app/f;-><init>(Landroidx/fragment/app/s1;Landroidx/fragment/app/s1;ZLn/b;)V

    invoke-static {v8, v4}, Landroidx/core/view/d0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v12}, Ln/b;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v12, v5, v4}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5, v14}, Landroidx/fragment/app/n1;->n(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v28, v5

    :cond_18
    invoke-virtual {v13}, Ln/b;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v5, v19

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 42
    invoke-virtual {v13, v5, v6}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 43
    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_19

    new-instance v6, Landroidx/appcompat/view/menu/g;

    const/4 v11, 0x1

    move-object v12, v0

    move-object v0, v6

    move-object v13, v1

    move-object/from16 v1, p0

    move-object v15, v2

    move-object v2, v3

    move-object/from16 v32, v3

    move-object v3, v5

    move v5, v4

    move-object/from16 p1, v16

    move-object/from16 v4, p1

    move-object/from16 v33, v12

    move-object/from16 v7, v17

    move v12, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v8, v6}, Landroidx/core/view/d0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v31

    move-object/from16 v3, v32

    const/16 v25, 0x1

    goto :goto_f

    :cond_19
    move-object/from16 v33, v0

    move-object v13, v1

    move-object v15, v2

    move-object/from16 v32, v3

    move v12, v4

    move-object/from16 p1, v16

    move-object/from16 v7, v17

    goto :goto_e

    :cond_1a
    move-object/from16 v33, v0

    move-object v13, v1

    move-object v15, v2

    move-object/from16 v32, v3

    move-object/from16 p1, v16

    move-object/from16 v7, v17

    const/4 v12, 0x0

    :goto_e
    move-object/from16 v0, v31

    move-object/from16 v3, v32

    :goto_f
    invoke-virtual {v3, v14, v0, v15}, Landroidx/fragment/app/n1;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v14

    move-object/from16 v22, v14

    move-object/from16 v23, v13

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/n1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, v30

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    :goto_10
    move-object/from16 v5, v28

    goto :goto_11

    :cond_1b
    move-object/from16 v33, v0

    move-object/from16 v28, v5

    move-object/from16 v27, v11

    move-object v0, v13

    move-object/from16 v29, v15

    move-object/from16 p1, v16

    move-object/from16 v7, v17

    move-object v13, v1

    move-object v15, v2

    move-object v2, v12

    const/4 v12, 0x0

    goto :goto_10

    :goto_11
    move-object/from16 v6, p0

    move-object/from16 v16, p1

    move-object v12, v2

    move-object/from16 v17, v7

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v14, v26

    move-object/from16 v11, v27

    move-object/from16 v15, v29

    move/from16 v7, p2

    move-object v13, v0

    move-object/from16 v0, v33

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v33, v0

    move-object/from16 v28, v5

    move-object/from16 v27, v11

    move-object v0, v13

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move-object/from16 p1, v16

    move-object/from16 v7, v17

    move-object v13, v1

    move-object v15, v2

    move-object v2, v12

    const/4 v12, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/j;

    invoke-virtual {v14}, Landroidx/fragment/app/i;->b()Z

    move-result v16

    iget-object v12, v14, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    move-object/from16 p2, v5

    if-eqz v16, :cond_1d

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Landroidx/fragment/app/i;->a()V

    move-object/from16 v5, p2

    :goto_13
    const/4 v12, 0x0

    goto :goto_12

    :cond_1d
    iget-object v5, v14, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/n1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_1f

    if-eq v12, v9, :cond_1e

    if-ne v12, v10, :cond_1f

    :cond_1e
    const/16 v16, 0x1

    goto :goto_14

    :cond_1f
    const/16 v16, 0x0

    :goto_14
    if-nez v5, :cond_21

    if-nez v16, :cond_20

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Landroidx/fragment/app/i;->a()V

    :cond_20
    move-object/from16 v16, v0

    move-object/from16 v31, v4

    move-object/from16 v23, v7

    move-object/from16 v30, v10

    move-object/from16 v7, v28

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v0, p1

    goto/16 :goto_19

    :cond_21
    move-object/from16 v30, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v4

    .line 44
    iget-object v4, v12, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 45
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10, v4}, Landroidx/fragment/app/k;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v16, :cond_23

    if-ne v12, v9, :cond_22

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_22
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_23
    :goto_15
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3, v0, v5}, Landroidx/fragment/app/n1;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v4, p0

    move-object/from16 v16, v0

    :goto_16
    move-object/from16 v23, v7

    goto :goto_17

    :cond_24
    invoke-virtual {v3, v5, v10}, Landroidx/fragment/app/n1;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    invoke-virtual/range {v16 .. v23}, Landroidx/fragment/app/n1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 46
    iget v4, v12, Landroidx/fragment/app/s1;->a:I

    move-object/from16 v16, v0

    const/4 v0, 0x3

    if-ne v4, v0, :cond_25

    .line 47
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, v12, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    move-object/from16 v23, v7

    iget-object v7, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5, v4, v0}, Landroidx/fragment/app/n1;->l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v0, Landroidx/fragment/app/g;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct {v0, v4, v10, v7}, Landroidx/fragment/app/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v8, v0}, Landroidx/core/view/d0;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_25
    move-object/from16 v4, p0

    goto :goto_16

    .line 48
    :goto_17
    iget v0, v12, Landroidx/fragment/app/s1;->a:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_27

    .line 49
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p1

    if-eqz v25, :cond_26

    invoke-virtual {v3, v5, v0}, Landroidx/fragment/app/n1;->o(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_26
    move-object/from16 v7, v28

    goto :goto_18

    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v7, v28

    invoke-virtual {v3, v7, v5}, Landroidx/fragment/app/n1;->n(Landroid/view/View;Ljava/lang/Object;)V

    :goto_18
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v10, v14, Landroidx/fragment/app/j;->d:Z

    if-eqz v10, :cond_28

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v5, v10}, Landroidx/fragment/app/n1;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    goto :goto_19

    :cond_28
    const/4 v10, 0x0

    invoke-virtual {v3, v11, v5, v10}, Landroidx/fragment/app/n1;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    :goto_19
    move-object/from16 v5, p2

    move-object/from16 p1, v0

    move-object/from16 v28, v7

    move-object/from16 v0, v16

    move-object/from16 v7, v23

    move-object/from16 v10, v30

    move-object/from16 v4, v31

    goto/16 :goto_13

    :cond_29
    move-object v5, v4

    move-object/from16 v23, v7

    move-object/from16 v30, v10

    move-object/from16 v4, p0

    invoke-virtual {v3, v6, v11, v5}, Landroidx/fragment/app/n1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/j;

    invoke-virtual {v7}, Landroidx/fragment/app/i;->b()Z

    move-result v10

    if-eqz v10, :cond_2a

    goto :goto_1a

    :cond_2a
    iget-object v10, v7, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    move-object/from16 v11, v30

    if-eqz v5, :cond_2c

    if-eq v10, v9, :cond_2b

    if-ne v10, v11, :cond_2c

    :cond_2b
    const/4 v12, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v12, 0x0

    :goto_1b
    iget-object v14, v7, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    if-nez v14, :cond_2e

    if-eqz v12, :cond_2d

    goto :goto_1c

    :cond_2d
    move-object/from16 v14, v27

    goto :goto_1d

    :cond_2e
    :goto_1c
    sget-object v12, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 50
    invoke-static {v8}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_30

    move-object/from16 v14, v27

    const/4 v12, 0x2

    .line 51
    invoke-static {v14, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_2f

    .line 52
    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_2f
    invoke-virtual {v7}, Landroidx/fragment/app/i;->a()V

    goto :goto_1d

    :cond_30
    move-object/from16 v14, v27

    .line 53
    iget-object v10, v10, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 54
    new-instance v10, Landroidx/fragment/app/g;

    const/4 v12, 0x1

    invoke-direct {v10, v4, v7, v12}, Landroidx/fragment/app/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0, v10}, Landroidx/fragment/app/n1;->p(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :goto_1d
    move-object/from16 v30, v11

    move-object/from16 v27, v14

    goto :goto_1a

    :cond_31
    move-object/from16 v14, v27

    sget-object v6, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 55
    invoke-static {v8}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_32

    const/4 v0, 0x0

    goto :goto_1e

    :cond_32
    const/4 v6, 0x4

    .line 56
    invoke-static {v1, v6}, Landroidx/fragment/app/g1;->b(Ljava/util/ArrayList;I)V

    invoke-static {v13}, Landroidx/fragment/app/n1;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v8, v0}, Landroidx/fragment/app/n1;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v0, v33

    invoke-static {v8, v15, v13, v6, v0}, Landroidx/fragment/app/n1;->q(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ln/b;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/fragment/app/g1;->b(Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5, v15, v13}, Landroidx/fragment/app/n1;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_1e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    .line 58
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/h;

    invoke-virtual {v9}, Landroidx/fragment/app/i;->b()Z

    move-result v10

    if-eqz v10, :cond_33

    :goto_20
    invoke-virtual {v9}, Landroidx/fragment/app/i;->a()V

    goto :goto_1f

    :cond_33
    invoke-virtual {v9, v3}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/d0;

    move-result-object v10

    if-nez v10, :cond_34

    goto :goto_20

    :cond_34
    iget-object v10, v10, Landroidx/fragment/app/d0;->b:Landroid/animation/Animator;

    if-nez v10, :cond_35

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 59
    :cond_35
    iget-object v11, v9, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    iget-object v12, v11, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    const/4 v13, 0x2

    .line 61
    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 62
    invoke-static {v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_36
    invoke-virtual {v9}, Landroidx/fragment/app/i;->a()V

    goto :goto_1f

    .line 63
    :cond_37
    iget v7, v11, Landroidx/fragment/app/s1;->a:I

    const/4 v13, 0x3

    if-ne v7, v13, :cond_38

    const/16 v20, 0x1

    goto :goto_21

    :cond_38
    move/from16 v20, v0

    :goto_21
    move-object/from16 v15, v23

    if-eqz v20, :cond_39

    .line 64
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_39
    iget-object v7, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v12, Landroidx/fragment/app/c;

    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v21, v11

    move-object/from16 v22, v9

    invoke-direct/range {v17 .. v22}, Landroidx/fragment/app/c;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/s1;Landroidx/fragment/app/h;)V

    invoke-virtual {v10, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    new-instance v7, Landroidx/fragment/app/d;

    invoke-direct {v7, v4, v10}, Landroidx/fragment/app/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v9, Landroidx/fragment/app/i;->b:Ld0/d;

    invoke-virtual {v9, v7}, Ld0/d;->b(Ld0/c;)V

    move-object/from16 v23, v15

    const/4 v7, 0x1

    goto :goto_1f

    :cond_3a
    move-object/from16 v15, v23

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/h;

    .line 65
    iget-object v5, v2, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    .line 66
    iget-object v6, v5, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    const/4 v9, 0x2

    if-eqz v1, :cond_3c

    .line 67
    invoke-static {v14, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 68
    :goto_23
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_3b
    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    goto :goto_22

    :cond_3c
    if-eqz v7, :cond_3d

    .line 69
    invoke-static {v14, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_23

    .line 70
    :cond_3d
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/h;->c(Landroid/content/Context;)Landroidx/fragment/app/d0;

    move-result-object v10

    .line 71
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Landroidx/fragment/app/d0;->a:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget v5, v5, Landroidx/fragment/app/s1;->a:I

    const/4 v11, 0x1

    if-eq v5, v11, :cond_3e

    .line 73
    invoke-virtual {v6, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroidx/fragment/app/i;->a()V

    goto :goto_24

    :cond_3e
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v5, Landroidx/fragment/app/e0;

    invoke-direct {v5, v10, v8, v6}, Landroidx/fragment/app/e0;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/e;

    invoke-direct {v10, v4, v8, v6, v2}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/h;)V

    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_24
    new-instance v5, Lv1/m;

    invoke-direct {v5, v4, v6, v8, v2}, Lv1/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    iget-object v2, v2, Landroidx/fragment/app/i;->b:Ld0/d;

    invoke-virtual {v2, v5}, Ld0/d;->b(Ld0/c;)V

    goto :goto_22

    .line 74
    :cond_3f
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s1;

    .line 75
    iget-object v2, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 76
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 77
    iget v1, v1, Landroidx/fragment/app/s1;->a:I

    .line 78
    invoke-static {v1, v2}, Landroid/support/v4/media/session/a;->a(ILandroid/view/View;)V

    goto :goto_25

    .line 79
    :cond_40
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
