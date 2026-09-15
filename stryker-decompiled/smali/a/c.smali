.class public abstract La/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/reflect/Field; = null

.field public static b:Z = false

.field public static c:Ljava/lang/Class; = null

.field public static d:Z = false

.field public static e:Ljava/lang/reflect/Field; = null

.field public static f:Z = false

.field public static g:Ljava/lang/reflect/Field; = null

.field public static h:Z = false

.field public static i:Z = false

.field public static j:Ljava/lang/reflect/Method; = null

.field public static k:Z = false

.field public static l:Ljava/lang/reflect/Field;


# direct methods
.method public static a(Lq/e;Lo/d;Ljava/util/ArrayList;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v12, 0x2

    if-nez p3, :cond_0

    iget v1, v0, Lq/e;->z0:I

    iget-object v2, v0, Lq/e;->C0:[Lq/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lq/e;->A0:I

    iget-object v2, v0, Lq/e;->B0:[Lq/b;

    move v14, v1

    move-object v15, v2

    move/from16 v16, v12

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_70

    aget-object v1, v15, v9

    .line 1
    iget-boolean v2, v1, Lq/b;->q:Z

    .line 2
    iget-object v8, v1, Lq/b;->a:Lq/d;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/16 v17, 0x0

    if-nez v2, :cond_19

    .line 3
    iget v2, v1, Lq/b;->l:I

    mul-int/lit8 v6, v2, 0x2

    move-object v13, v8

    move-object/from16 v20, v13

    const/16 v18, 0x0

    :goto_2
    if-nez v18, :cond_14

    iget v5, v1, Lq/b;->i:I

    add-int/2addr v5, v4

    iput v5, v1, Lq/b;->i:I

    iget-object v5, v13, Lq/d;->m0:[Lq/d;

    aput-object v17, v5, v2

    iget-object v5, v13, Lq/d;->l0:[Lq/d;

    aput-object v17, v5, v2

    .line 4
    iget v5, v13, Lq/d;->g0:I

    .line 5
    iget-object v4, v13, Lq/d;->Q:[Lq/c;

    if-eq v5, v7, :cond_f

    invoke-virtual {v13, v2}, Lq/d;->k(I)I

    aget-object v5, v4, v6

    invoke-virtual {v5}, Lq/c;->e()I

    add-int/lit8 v5, v6, 0x1

    aget-object v23, v4, v5

    invoke-virtual/range {v23 .. v23}, Lq/c;->e()I

    aget-object v23, v4, v6

    invoke-virtual/range {v23 .. v23}, Lq/c;->e()I

    aget-object v5, v4, v5

    invoke-virtual {v5}, Lq/c;->e()I

    iget-object v5, v1, Lq/b;->b:Lq/d;

    if-nez v5, :cond_1

    iput-object v13, v1, Lq/b;->b:Lq/d;

    :cond_1
    iput-object v13, v1, Lq/b;->d:Lq/d;

    iget-object v5, v13, Lq/d;->p0:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_f

    iget-object v7, v13, Lq/d;->t:[I

    aget v7, v7, v2

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_3

    if-ne v7, v12, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v25, v9

    goto :goto_5

    :cond_3
    :goto_3
    iget v12, v1, Lq/b;->j:I

    const/16 v22, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v1, Lq/b;->j:I

    iget-object v12, v13, Lq/d;->k0:[F

    aget v12, v12, v2

    const/16 v21, 0x0

    cmpl-float v24, v12, v21

    if-lez v24, :cond_4

    iget v3, v1, Lq/b;->k:F

    add-float/2addr v3, v12

    iput v3, v1, Lq/b;->k:F

    .line 6
    :cond_4
    iget v3, v13, Lq/d;->g0:I

    move/from16 v25, v9

    const/16 v9, 0x8

    if-eq v3, v9, :cond_8

    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    if-eqz v7, :cond_5

    if-ne v7, v3, :cond_8

    :cond_5
    const/4 v3, 0x0

    cmpg-float v5, v12, v3

    const/4 v3, 0x1

    if-gez v5, :cond_6

    .line 7
    iput-boolean v3, v1, Lq/b;->n:Z

    goto :goto_4

    :cond_6
    iput-boolean v3, v1, Lq/b;->o:Z

    :goto_4
    iget-object v3, v1, Lq/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lq/b;->h:Ljava/util/ArrayList;

    :cond_7
    iget-object v3, v1, Lq/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, v1, Lq/b;->f:Lq/d;

    if-nez v3, :cond_9

    iput-object v13, v1, Lq/b;->f:Lq/d;

    :cond_9
    iget-object v3, v1, Lq/b;->g:Lq/d;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lq/d;->l0:[Lq/d;

    aput-object v13, v3, v2

    :cond_a
    iput-object v13, v1, Lq/b;->g:Lq/d;

    :goto_5
    if-nez v2, :cond_c

    iget v3, v13, Lq/d;->r:I

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    iget v3, v13, Lq/d;->u:I

    if-nez v3, :cond_e

    iget v3, v13, Lq/d;->v:I

    goto :goto_6

    :cond_c
    iget v3, v13, Lq/d;->s:I

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    iget v3, v13, Lq/d;->x:I

    if-nez v3, :cond_e

    iget v3, v13, Lq/d;->y:I

    :cond_e
    :goto_6
    move-object/from16 v3, v20

    goto :goto_7

    :cond_f
    move/from16 v25, v9

    goto :goto_6

    :goto_7
    if-eq v3, v13, :cond_10

    iget-object v3, v3, Lq/d;->m0:[Lq/d;

    aput-object v13, v3, v2

    :cond_10
    add-int/lit8 v3, v6, 0x1

    aget-object v3, v4, v3

    iget-object v3, v3, Lq/c;->f:Lq/c;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lq/c;->d:Lq/d;

    iget-object v4, v3, Lq/d;->Q:[Lq/c;

    aget-object v4, v4, v6

    iget-object v4, v4, Lq/c;->f:Lq/c;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lq/c;->d:Lq/d;

    if-eq v4, v13, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    move-object v3, v13

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v20, v13

    move/from16 v9, v25

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x2

    move-object v13, v3

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_14
    move/from16 v25, v9

    iget-object v3, v1, Lq/b;->b:Lq/d;

    if-eqz v3, :cond_15

    iget-object v3, v3, Lq/d;->Q:[Lq/c;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lq/c;->e()I

    :cond_15
    iget-object v3, v1, Lq/b;->d:Lq/d;

    if-eqz v3, :cond_16

    add-int/lit8 v6, v6, 0x1

    iget-object v3, v3, Lq/d;->Q:[Lq/c;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lq/c;->e()I

    :cond_16
    iput-object v13, v1, Lq/b;->c:Lq/d;

    if-nez v2, :cond_17

    iget-boolean v2, v1, Lq/b;->m:Z

    if-eqz v2, :cond_17

    iput-object v13, v1, Lq/b;->e:Lq/d;

    goto :goto_9

    :cond_17
    iput-object v8, v1, Lq/b;->e:Lq/d;

    :goto_9
    iget-boolean v2, v1, Lq/b;->o:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lq/b;->n:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v1, Lq/b;->p:Z

    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    move/from16 v25, v9

    move v2, v4

    .line 8
    :goto_b
    iput-boolean v2, v1, Lq/b;->q:Z

    if-eqz v11, :cond_1b

    .line 9
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_c

    :cond_1a
    move/from16 v30, v14

    move-object/from16 v31, v15

    move/from16 v23, v25

    const/16 v19, 0x0

    goto/16 :goto_4e

    .line 10
    :cond_1b
    :goto_c
    iget-object v12, v1, Lq/b;->c:Lq/d;

    iget-object v13, v1, Lq/b;->b:Lq/d;

    iget-object v9, v1, Lq/b;->d:Lq/d;

    iget-object v2, v1, Lq/b;->e:Lq/d;

    iget v3, v1, Lq/b;->k:F

    iget-object v4, v0, Lq/d;->p0:[I

    aget v4, v4, p3

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1c

    const/4 v4, 0x1

    goto :goto_d

    :cond_1c
    const/4 v4, 0x0

    :goto_d
    if-nez p3, :cond_20

    iget v5, v2, Lq/d;->i0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1d

    const/16 v22, 0x1

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    if-ne v5, v6, :cond_1e

    move/from16 v18, v6

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    :goto_f
    if-ne v5, v7, :cond_1f

    move v5, v6

    goto :goto_10

    :cond_1f
    const/4 v5, 0x0

    :goto_10
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v22

    :goto_11
    const/4 v6, 0x0

    goto :goto_15

    :cond_20
    const/4 v6, 0x1

    iget v5, v2, Lq/d;->j0:I

    if-nez v5, :cond_21

    move/from16 v18, v6

    goto :goto_12

    :cond_21
    const/16 v18, 0x0

    :goto_12
    if-ne v5, v6, :cond_22

    const/4 v6, 0x1

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, 0x0

    :goto_14
    move/from16 v26, v3

    move-object v7, v8

    move/from16 v20, v18

    move/from16 v18, v6

    goto :goto_11

    :goto_15
    iget-object v3, v0, Lq/d;->Q:[Lq/c;

    if-nez v6, :cond_31

    iget-object v11, v7, Lq/d;->Q:[Lq/c;

    aget-object v11, v11, v16

    if-eqz v5, :cond_24

    const/16 v27, 0x1

    goto :goto_16

    :cond_24
    const/16 v27, 0x4

    :goto_16
    invoke-virtual {v11}, Lq/c;->e()I

    move-result v28

    move/from16 v29, v6

    iget-object v6, v7, Lq/d;->p0:[I

    move/from16 v30, v14

    aget v14, v6, p3

    move-object/from16 v31, v15

    const/4 v15, 0x3

    if-ne v14, v15, :cond_25

    iget-object v14, v7, Lq/d;->t:[I

    aget v14, v14, p3

    if-nez v14, :cond_25

    const/4 v14, 0x1

    goto :goto_17

    :cond_25
    const/4 v14, 0x0

    :goto_17
    iget-object v15, v11, Lq/c;->f:Lq/c;

    if-eqz v15, :cond_26

    if-eq v7, v8, :cond_26

    invoke-virtual {v15}, Lq/c;->e()I

    move-result v15

    add-int v28, v15, v28

    :cond_26
    move/from16 v15, v28

    if-eqz v5, :cond_27

    if-eq v7, v8, :cond_27

    if-eq v7, v13, :cond_27

    move-object/from16 v28, v2

    const/16 v27, 0x8

    goto :goto_18

    :cond_27
    move-object/from16 v28, v2

    :goto_18
    iget-object v2, v11, Lq/c;->f:Lq/c;

    if-eqz v2, :cond_2b

    if-ne v7, v13, :cond_28

    move-object/from16 v32, v8

    iget-object v8, v11, Lq/c;->i:Lo/j;

    iget-object v2, v2, Lq/c;->i:Lo/j;

    move-object/from16 v33, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v8, v2, v15, v1}, Lo/d;->f(Lo/j;Lo/j;II)V

    goto :goto_19

    :cond_28
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    iget-object v1, v11, Lq/c;->i:Lo/j;

    iget-object v2, v2, Lq/c;->i:Lo/j;

    const/16 v8, 0x8

    invoke-virtual {v10, v1, v2, v15, v8}, Lo/d;->f(Lo/j;Lo/j;II)V

    :goto_19
    if-eqz v14, :cond_29

    if-nez v5, :cond_29

    const/16 v27, 0x5

    :cond_29
    if-ne v7, v13, :cond_2a

    if-eqz v5, :cond_2a

    .line 11
    iget-object v1, v7, Lq/d;->S:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_2a

    const/4 v1, 0x5

    goto :goto_1a

    :cond_2a
    move/from16 v1, v27

    .line 12
    :goto_1a
    iget-object v2, v11, Lq/c;->i:Lo/j;

    iget-object v8, v11, Lq/c;->f:Lq/c;

    iget-object v8, v8, Lq/c;->i:Lo/j;

    invoke-virtual {v10, v2, v8, v15, v1}, Lo/d;->e(Lo/j;Lo/j;II)V

    goto :goto_1b

    :cond_2b
    move-object/from16 v33, v1

    move-object/from16 v32, v8

    :goto_1b
    iget-object v1, v7, Lq/d;->Q:[Lq/c;

    if-eqz v4, :cond_2d

    .line 13
    iget v2, v7, Lq/d;->g0:I

    const/16 v8, 0x8

    if-eq v2, v8, :cond_2c

    .line 14
    aget v2, v6, p3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2c

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, Lq/c;->i:Lo/j;

    aget-object v6, v1, v16

    iget-object v6, v6, Lq/c;->i:Lo/j;

    const/4 v8, 0x0

    const/4 v11, 0x5

    invoke-virtual {v10, v2, v6, v8, v11}, Lo/d;->f(Lo/j;Lo/j;II)V

    goto :goto_1c

    :cond_2c
    const/4 v8, 0x0

    :goto_1c
    aget-object v2, v1, v16

    iget-object v2, v2, Lq/c;->i:Lo/j;

    aget-object v3, v3, v16

    iget-object v3, v3, Lq/c;->i:Lo/j;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v8, v6}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_2d
    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_2e

    iget-object v1, v1, Lq/c;->d:Lq/d;

    iget-object v2, v1, Lq/d;->Q:[Lq/c;

    aget-object v2, v2, v16

    iget-object v2, v2, Lq/c;->f:Lq/c;

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lq/c;->d:Lq/d;

    if-eq v2, v7, :cond_2f

    :cond_2e
    move-object/from16 v1, v17

    :cond_2f
    if-eqz v1, :cond_30

    move-object v7, v1

    move/from16 v6, v29

    goto :goto_1d

    :cond_30
    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v11, p2

    move-object/from16 v2, v28

    move/from16 v14, v30

    move-object/from16 v15, v31

    move-object/from16 v8, v32

    move-object/from16 v1, v33

    goto/16 :goto_15

    :cond_31
    move-object/from16 v33, v1

    move-object/from16 v28, v2

    move-object/from16 v32, v8

    move/from16 v30, v14

    move-object/from16 v31, v15

    if-eqz v9, :cond_34

    iget-object v1, v12, Lq/d;->Q:[Lq/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lq/c;->f:Lq/c;

    if-eqz v1, :cond_34

    iget-object v1, v9, Lq/d;->Q:[Lq/c;

    aget-object v1, v1, v2

    iget-object v6, v9, Lq/d;->p0:[I

    aget v6, v6, p3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_32

    iget-object v6, v9, Lq/d;->t:[I

    aget v6, v6, p3

    if-nez v6, :cond_32

    if-nez v5, :cond_32

    iget-object v6, v1, Lq/c;->f:Lq/c;

    iget-object v7, v6, Lq/c;->d:Lq/d;

    if-ne v7, v0, :cond_32

    iget-object v7, v1, Lq/c;->i:Lo/j;

    iget-object v6, v6, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    invoke-virtual {v10, v7, v6, v8, v11}, Lo/d;->e(Lo/j;Lo/j;II)V

    goto :goto_1e

    :cond_32
    const/4 v11, 0x5

    if-eqz v5, :cond_33

    iget-object v6, v1, Lq/c;->f:Lq/c;

    iget-object v7, v6, Lq/c;->d:Lq/d;

    if-ne v7, v0, :cond_33

    iget-object v7, v1, Lq/c;->i:Lo/j;

    iget-object v6, v6, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    invoke-virtual {v10, v7, v6, v8, v14}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_33
    :goto_1e
    iget-object v6, v1, Lq/c;->i:Lo/j;

    iget-object v7, v12, Lq/d;->Q:[Lq/c;

    aget-object v2, v7, v2

    iget-object v2, v2, Lq/c;->f:Lq/c;

    iget-object v2, v2, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v7, 0x6

    invoke-virtual {v10, v6, v2, v1, v7}, Lo/d;->g(Lo/j;Lo/j;II)V

    goto :goto_1f

    :cond_34
    const/4 v11, 0x5

    :goto_1f
    if-eqz v4, :cond_35

    add-int/lit8 v1, v16, 0x1

    aget-object v2, v3, v1

    iget-object v2, v2, Lq/c;->i:Lo/j;

    iget-object v3, v12, Lq/d;->Q:[Lq/c;

    aget-object v1, v3, v1

    iget-object v3, v1, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v3, v1, v4}, Lo/d;->f(Lo/j;Lo/j;II)V

    :cond_35
    move-object/from16 v1, v33

    iget-object v2, v1, Lq/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3f

    iget-boolean v6, v1, Lq/b;->n:Z

    if-eqz v6, :cond_36

    iget-boolean v6, v1, Lq/b;->p:Z

    if-nez v6, :cond_36

    iget v6, v1, Lq/b;->j:I

    int-to-float v6, v6

    goto :goto_20

    :cond_36
    move/from16 v6, v26

    :goto_20
    move-object/from16 v14, v17

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v3, :cond_3f

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq/d;

    iget-object v4, v15, Lq/d;->k0:[F

    aget v4, v4, p3

    const/16 v21, 0x0

    cmpg-float v24, v4, v21

    iget-object v11, v15, Lq/d;->Q:[Lq/c;

    if-gez v24, :cond_38

    iget-boolean v4, v1, Lq/b;->p:Z

    if-eqz v4, :cond_37

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Lq/c;->i:Lo/j;

    aget-object v4, v11, v16

    iget-object v4, v4, Lq/c;->i:Lo/j;

    const/4 v11, 0x0

    const/4 v15, 0x4

    invoke-virtual {v10, v0, v4, v11, v15}, Lo/d;->e(Lo/j;Lo/j;II)V

    move/from16 v24, v15

    goto :goto_24

    :cond_37
    const/16 v24, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_22
    const/16 v21, 0x0

    goto :goto_23

    :cond_38
    const/16 v24, 0x4

    goto :goto_22

    :goto_23
    cmpl-float v26, v4, v21

    if-nez v26, :cond_39

    add-int/lit8 v0, v16, 0x1

    aget-object v0, v11, v0

    iget-object v0, v0, Lq/c;->i:Lo/j;

    aget-object v4, v11, v16

    iget-object v4, v4, Lq/c;->i:Lo/j;

    const/4 v11, 0x0

    const/16 v15, 0x8

    invoke-virtual {v10, v0, v4, v11, v15}, Lo/d;->e(Lo/j;Lo/j;II)V

    :goto_24
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v19, v11

    const/16 v21, 0x0

    goto/16 :goto_2a

    :cond_39
    const/16 v19, 0x0

    if-eqz v14, :cond_3e

    iget-object v14, v14, Lq/d;->Q:[Lq/c;

    aget-object v0, v14, v16

    iget-object v0, v0, Lq/c;->i:Lo/j;

    add-int/lit8 v27, v16, 0x1

    aget-object v14, v14, v27

    iget-object v14, v14, Lq/c;->i:Lo/j;

    move-object/from16 v29, v2

    aget-object v2, v11, v16

    iget-object v2, v2, Lq/c;->i:Lo/j;

    aget-object v11, v11, v27

    iget-object v11, v11, Lq/c;->i:Lo/j;

    move/from16 v27, v3

    invoke-virtual/range {p1 .. p1}, Lo/d;->l()Lo/c;

    move-result-object v3

    move-object/from16 v33, v15

    const/4 v15, 0x0

    .line 15
    iput v15, v3, Lo/c;->b:F

    cmpl-float v21, v6, v15

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v21, :cond_3a

    cmpl-float v21, v7, v4

    if-nez v21, :cond_3b

    :cond_3a
    move/from16 v26, v4

    move v4, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    goto :goto_27

    :cond_3b
    const/16 v21, 0x0

    cmpl-float v34, v7, v21

    if-nez v34, :cond_3c

    iget-object v2, v3, Lo/c;->d:Lo/b;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v2, v0, v7}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    invoke-interface {v0, v14, v15}, Lo/b;->c(Lo/j;F)V

    :goto_25
    move/from16 v26, v4

    goto :goto_28

    :cond_3c
    const/high16 v15, 0x3f800000    # 1.0f

    if-nez v26, :cond_3d

    iget-object v0, v3, Lo/c;->d:Lo/b;

    invoke-interface {v0, v2, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v11, v2}, Lo/b;->c(Lo/j;F)V

    goto :goto_25

    :cond_3d
    div-float/2addr v7, v6

    div-float v26, v4, v6

    div-float v7, v7, v26

    move/from16 v26, v4

    iget-object v4, v3, Lo/c;->d:Lo/b;

    invoke-interface {v4, v0, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-interface {v0, v14, v4}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    invoke-interface {v0, v11, v7}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    neg-float v4, v7

    :goto_26
    invoke-interface {v0, v2, v4}, Lo/b;->c(Lo/j;F)V

    goto :goto_28

    :goto_27
    iget-object v7, v3, Lo/c;->d:Lo/b;

    invoke-interface {v7, v0, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    invoke-interface {v0, v14, v4}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    invoke-interface {v0, v11, v15}, Lo/b;->c(Lo/j;F)V

    iget-object v0, v3, Lo/c;->d:Lo/b;

    goto :goto_26

    .line 16
    :goto_28
    invoke-virtual {v10, v3}, Lo/d;->c(Lo/c;)V

    goto :goto_29

    :cond_3e
    move-object/from16 v29, v2

    move/from16 v27, v3

    move/from16 v26, v4

    move-object/from16 v33, v15

    const/16 v21, 0x0

    :goto_29
    move/from16 v7, v26

    move-object/from16 v14, v33

    :goto_2a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v27

    move-object/from16 v2, v29

    const/4 v4, 0x1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_3f
    const/16 v19, 0x0

    const/16 v24, 0x4

    if-eqz v13, :cond_41

    if-eq v13, v9, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move-object/from16 v0, v32

    goto :goto_2b

    :cond_41
    move-object v14, v9

    move/from16 v15, v25

    move-object/from16 v0, v32

    const/4 v11, 0x2

    goto :goto_31

    :goto_2b
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    aget-object v0, v0, v16

    iget-object v1, v12, Lq/d;->Q:[Lq/c;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v0, v0, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lq/c;->i:Lo/j;

    move-object v3, v0

    goto :goto_2c

    :cond_42
    move-object/from16 v3, v17

    :goto_2c
    iget-object v0, v1, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lq/c;->i:Lo/j;

    move-object v6, v0

    goto :goto_2d

    :cond_43
    move-object/from16 v6, v17

    :goto_2d
    iget-object v0, v13, Lq/d;->Q:[Lq/c;

    aget-object v0, v0, v16

    if-eqz v9, :cond_44

    iget-object v1, v9, Lq/d;->Q:[Lq/c;

    aget-object v1, v1, v2

    :cond_44
    if-eqz v3, :cond_46

    if-eqz v6, :cond_46

    move-object/from16 v2, v28

    if-nez p3, :cond_45

    iget v2, v2, Lq/d;->d0:F

    :goto_2e
    move v5, v2

    goto :goto_2f

    :cond_45
    iget v2, v2, Lq/d;->e0:F

    goto :goto_2e

    :goto_2f
    invoke-virtual {v0}, Lq/c;->e()I

    move-result v4

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v8

    iget-object v2, v0, Lq/c;->i:Lo/j;

    iget-object v7, v1, Lq/c;->i:Lo/j;

    const/4 v0, 0x7

    move-object/from16 v1, p1

    const/4 v11, 0x2

    move-object v14, v9

    move/from16 v15, v25

    move v9, v0

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    goto :goto_30

    :cond_46
    move-object v14, v9

    move/from16 v15, v25

    const/4 v11, 0x2

    :cond_47
    :goto_30
    move/from16 v23, v15

    goto/16 :goto_4a

    :goto_31
    if-eqz v20, :cond_58

    if-eqz v13, :cond_58

    iget v2, v1, Lq/b;->j:I

    if-lez v2, :cond_48

    iget v1, v1, Lq/b;->i:I

    if-ne v1, v2, :cond_48

    const/16 v22, 0x1

    goto :goto_32

    :cond_48
    move/from16 v22, v19

    :goto_32
    move-object v8, v13

    move-object v9, v8

    :goto_33
    if-eqz v9, :cond_47

    iget-object v1, v9, Lq/d;->m0:[Lq/d;

    aget-object v1, v1, p3

    move-object v7, v1

    :goto_34
    if-eqz v7, :cond_49

    .line 17
    iget v1, v7, Lq/d;->g0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_4a

    .line 18
    iget-object v1, v7, Lq/d;->m0:[Lq/d;

    aget-object v7, v1, p3

    goto :goto_34

    :cond_49
    const/16 v6, 0x8

    :cond_4a
    if-nez v7, :cond_4c

    if-ne v9, v14, :cond_4b

    goto :goto_35

    :cond_4b
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v11, v9

    goto/16 :goto_3c

    :cond_4c
    :goto_35
    iget-object v1, v9, Lq/d;->Q:[Lq/c;

    aget-object v2, v1, v16

    iget-object v3, v2, Lq/c;->i:Lo/j;

    iget-object v4, v2, Lq/c;->f:Lq/c;

    if-eqz v4, :cond_4d

    iget-object v4, v4, Lq/c;->i:Lo/j;

    goto :goto_36

    :cond_4d
    move-object/from16 v4, v17

    :goto_36
    if-eq v8, v9, :cond_4e

    iget-object v4, v8, Lq/d;->Q:[Lq/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    :goto_37
    iget-object v4, v4, Lq/c;->i:Lo/j;

    goto :goto_38

    :cond_4e
    if-ne v9, v13, :cond_50

    iget-object v4, v0, Lq/d;->Q:[Lq/c;

    aget-object v4, v4, v16

    iget-object v4, v4, Lq/c;->f:Lq/c;

    if-eqz v4, :cond_4f

    goto :goto_37

    :cond_4f
    move-object/from16 v4, v17

    :cond_50
    :goto_38
    invoke-virtual {v2}, Lq/c;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v21, v1, v5

    invoke-virtual/range {v21 .. v21}, Lq/c;->e()I

    move-result v21

    if-eqz v7, :cond_51

    iget-object v6, v7, Lq/d;->Q:[Lq/c;

    aget-object v6, v6, v16

    :goto_39
    iget-object v11, v6, Lq/c;->i:Lo/j;

    goto :goto_3a

    :cond_51
    iget-object v6, v12, Lq/d;->Q:[Lq/c;

    aget-object v6, v6, v5

    iget-object v6, v6, Lq/c;->f:Lq/c;

    if-eqz v6, :cond_52

    goto :goto_39

    :cond_52
    move-object/from16 v11, v17

    :goto_3a
    aget-object v1, v1, v5

    iget-object v1, v1, Lq/c;->i:Lo/j;

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Lq/c;->e()I

    move-result v6

    add-int v21, v6, v21

    :cond_53
    iget-object v6, v8, Lq/d;->Q:[Lq/c;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lq/c;->e()I

    move-result v6

    add-int/2addr v6, v2

    if-eqz v3, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v11, :cond_4b

    if-eqz v1, :cond_4b

    if-ne v9, v13, :cond_54

    iget-object v2, v13, Lq/d;->Q:[Lq/c;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lq/c;->e()I

    move-result v2

    move v6, v2

    :cond_54
    if-ne v9, v14, :cond_55

    iget-object v2, v14, Lq/d;->Q:[Lq/c;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lq/c;->e()I

    move-result v2

    move/from16 v21, v2

    :cond_55
    if-eqz v22, :cond_56

    const/16 v24, 0x8

    goto :goto_3b

    :cond_56
    const/16 v24, 0x5

    :goto_3b
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v25, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    const/16 v23, 0x8

    move-object v6, v11

    move-object v11, v7

    move-object/from16 v7, v25

    move-object/from16 v23, v8

    move/from16 v8, v21

    move-object/from16 v21, v11

    move-object v11, v9

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    .line 19
    :goto_3c
    iget v1, v11, Lq/d;->g0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_57

    move-object v8, v11

    goto :goto_3d

    :cond_57
    move-object/from16 v8, v23

    :goto_3d
    move-object/from16 v9, v21

    const/4 v11, 0x2

    goto/16 :goto_33

    :cond_58
    const/16 v9, 0x8

    if-eqz v18, :cond_47

    if-eqz v13, :cond_47

    .line 20
    iget v2, v1, Lq/b;->j:I

    if-lez v2, :cond_59

    iget v1, v1, Lq/b;->i:I

    if-ne v1, v2, :cond_59

    const/16 v22, 0x1

    goto :goto_3e

    :cond_59
    move/from16 v22, v19

    :goto_3e
    move-object v8, v13

    move-object v11, v8

    :goto_3f
    if-eqz v11, :cond_64

    iget-object v1, v11, Lq/d;->m0:[Lq/d;

    aget-object v1, v1, p3

    :goto_40
    if-eqz v1, :cond_5a

    .line 21
    iget v2, v1, Lq/d;->g0:I

    if-ne v2, v9, :cond_5a

    .line 22
    iget-object v1, v1, Lq/d;->m0:[Lq/d;

    aget-object v1, v1, p3

    goto :goto_40

    :cond_5a
    if-eq v11, v13, :cond_62

    if-eq v11, v14, :cond_62

    if-eqz v1, :cond_62

    if-ne v1, v14, :cond_5b

    move-object/from16 v7, v17

    goto :goto_41

    :cond_5b
    move-object v7, v1

    :goto_41
    iget-object v1, v11, Lq/d;->Q:[Lq/c;

    aget-object v2, v1, v16

    iget-object v3, v2, Lq/c;->i:Lo/j;

    iget-object v4, v8, Lq/d;->Q:[Lq/c;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lq/c;->i:Lo/j;

    invoke-virtual {v2}, Lq/c;->e()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lq/c;->e()I

    move-result v6

    if-eqz v7, :cond_5d

    iget-object v1, v7, Lq/d;->Q:[Lq/c;

    aget-object v1, v1, v16

    iget-object v9, v1, Lq/c;->i:Lo/j;

    move-object/from16 v21, v7

    iget-object v7, v1, Lq/c;->f:Lq/c;

    if-eqz v7, :cond_5c

    iget-object v7, v7, Lq/c;->i:Lo/j;

    goto :goto_43

    :cond_5c
    move-object/from16 v7, v17

    goto :goto_43

    :cond_5d
    move-object/from16 v21, v7

    iget-object v7, v14, Lq/d;->Q:[Lq/c;

    aget-object v7, v7, v16

    if-eqz v7, :cond_5e

    iget-object v9, v7, Lq/c;->i:Lo/j;

    goto :goto_42

    :cond_5e
    move-object/from16 v9, v17

    :goto_42
    aget-object v1, v1, v5

    iget-object v1, v1, Lq/c;->i:Lo/j;

    move-object/from16 v35, v7

    move-object v7, v1

    move-object/from16 v1, v35

    :goto_43
    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v23, v1

    goto :goto_44

    :cond_5f
    move/from16 v23, v6

    :goto_44
    iget-object v1, v8, Lq/d;->Q:[Lq/c;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v22, :cond_60

    const/16 v25, 0x8

    goto :goto_45

    :cond_60
    move/from16 v25, v24

    :goto_45
    if-eqz v3, :cond_61

    if-eqz v4, :cond_61

    if-eqz v9, :cond_61

    if-eqz v7, :cond_61

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v26, v8

    move/from16 v8, v23

    move/from16 v23, v15

    const/16 v15, 0x8

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    goto :goto_46

    :cond_61
    move-object/from16 v26, v8

    move/from16 v23, v15

    const/16 v15, 0x8

    :goto_46
    move-object/from16 v1, v21

    goto :goto_47

    :cond_62
    move-object/from16 v26, v8

    move/from16 v23, v15

    move v15, v9

    .line 23
    :goto_47
    iget v2, v11, Lq/d;->g0:I

    if-eq v2, v15, :cond_63

    move-object v8, v11

    goto :goto_48

    :cond_63
    move-object/from16 v8, v26

    :goto_48
    move-object v11, v1

    move v9, v15

    move/from16 v15, v23

    goto/16 :goto_3f

    :cond_64
    move/from16 v23, v15

    .line 24
    iget-object v1, v13, Lq/d;->Q:[Lq/c;

    aget-object v1, v1, v16

    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    aget-object v0, v0, v16

    iget-object v0, v0, Lq/c;->f:Lq/c;

    iget-object v2, v14, Lq/d;->Q:[Lq/c;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    iget-object v2, v12, Lq/d;->Q:[Lq/c;

    aget-object v2, v2, v3

    iget-object v15, v2, Lq/c;->f:Lq/c;

    const/4 v9, 0x5

    if-eqz v0, :cond_65

    if-eq v13, v14, :cond_66

    iget-object v2, v1, Lq/c;->i:Lo/j;

    iget-object v0, v0, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v1

    invoke-virtual {v10, v2, v0, v1, v9}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_65
    move v0, v9

    goto :goto_49

    :cond_66
    if-eqz v15, :cond_65

    iget-object v2, v1, Lq/c;->i:Lo/j;

    iget-object v3, v0, Lq/c;->i:Lo/j;

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Lq/c;->i:Lo/j;

    iget-object v7, v15, Lq/c;->i:Lo/j;

    invoke-virtual {v11}, Lq/c;->e()I

    move-result v8

    move-object/from16 v1, p1

    move v0, v9

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    :goto_49
    if-eqz v15, :cond_67

    if-eq v13, v14, :cond_67

    iget-object v1, v11, Lq/c;->i:Lo/j;

    iget-object v2, v15, Lq/c;->i:Lo/j;

    invoke-virtual {v11}, Lq/c;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v1, v2, v3, v0}, Lo/d;->e(Lo/j;Lo/j;II)V

    :cond_67
    :goto_4a
    if-nez v20, :cond_68

    if-eqz v18, :cond_6f

    :cond_68
    if-eqz v13, :cond_6f

    if-eq v13, v14, :cond_6f

    iget-object v0, v13, Lq/d;->Q:[Lq/c;

    aget-object v1, v0, v16

    if-nez v14, :cond_69

    move-object v9, v13

    goto :goto_4b

    :cond_69
    move-object v9, v14

    :goto_4b
    add-int/lit8 v2, v16, 0x1

    iget-object v3, v9, Lq/d;->Q:[Lq/c;

    aget-object v4, v3, v2

    iget-object v5, v1, Lq/c;->f:Lq/c;

    if-eqz v5, :cond_6a

    iget-object v5, v5, Lq/c;->i:Lo/j;

    goto :goto_4c

    :cond_6a
    move-object/from16 v5, v17

    :goto_4c
    iget-object v6, v4, Lq/c;->f:Lq/c;

    if-eqz v6, :cond_6b

    iget-object v6, v6, Lq/c;->i:Lo/j;

    goto :goto_4d

    :cond_6b
    move-object/from16 v6, v17

    :goto_4d
    if-eq v12, v9, :cond_6d

    iget-object v6, v12, Lq/d;->Q:[Lq/c;

    aget-object v6, v6, v2

    iget-object v6, v6, Lq/c;->f:Lq/c;

    if-eqz v6, :cond_6c

    iget-object v6, v6, Lq/c;->i:Lo/j;

    move-object/from16 v17, v6

    :cond_6c
    move-object/from16 v6, v17

    :cond_6d
    if-ne v13, v9, :cond_6e

    aget-object v4, v0, v2

    :cond_6e
    if-eqz v5, :cond_6f

    if-eqz v6, :cond_6f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1}, Lq/c;->e()I

    move-result v7

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lq/c;->e()I

    move-result v8

    iget-object v2, v1, Lq/c;->i:Lo/j;

    iget-object v9, v4, Lq/c;->i:Lo/j;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v7

    move v5, v0

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lo/d;->b(Lo/j;Lo/j;IFLo/j;Lo/j;II)V

    :cond_6f
    :goto_4e
    add-int/lit8 v9, v23, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v30

    move-object/from16 v15, v31

    goto/16 :goto_1

    :cond_70
    return-void
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ln/c;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ln/c;-><init>(I)V

    invoke-virtual {v0, p0}, Ln/c;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ln/c;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroidx/emoji2/text/t;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/emoji2/text/d;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/emoji2/text/c;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroidx/emoji2/text/c;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/emoji2/text/c;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Package manager required to locate emoji font provider"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lv1/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 55
    .line 56
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 65
    .line 66
    const/4 v7, 0x1

    .line 67
    and-int/2addr v6, v7

    .line 68
    if-ne v6, v7, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v4, v5

    .line 72
    :goto_1
    if-nez v4, :cond_3

    .line 73
    .line 74
    :goto_2
    move-object v1, v5

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    :try_start_0
    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v4}, Ld/d;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    array-length v6, v0

    .line 90
    :goto_3
    if-ge v3, v6, :cond_4

    .line 91
    .line 92
    aget-object v7, v0, v3

    .line 93
    .line 94
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Le0/e;

    .line 109
    .line 110
    const-string v3, "emojicompat-emoji-font"

    .line 111
    .line 112
    invoke-direct {v1, v2, v4, v3, v0}, Le0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :goto_4
    if-nez v1, :cond_5

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    new-instance v5, Landroidx/emoji2/text/t;

    .line 127
    .line 128
    new-instance v0, Landroidx/emoji2/text/s;

    .line 129
    .line 130
    invoke-direct {v0, p0, v1}, Landroidx/emoji2/text/s;-><init>(Landroid/content/Context;Le0/e;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v0}, Landroidx/emoji2/text/h;-><init>(Landroidx/emoji2/text/k;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    return-object v5
.end method

.method public static d(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget-object v0, Landroidx/core/view/b1;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    const v0, 0x7f0a061d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/core/view/b1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Landroidx/core/view/b1;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    iput-object v3, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 34
    .line 35
    iput-object v3, v1, Landroidx/core/view/b1;->c:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v1, Landroidx/core/view/b1;->c:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v1, Landroidx/core/view/b1;->c:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iget-object p0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    new-instance p0, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 68
    .line 69
    :cond_3
    iget-object p0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move-object v4, v3

    .line 99
    :goto_0
    if-nez v4, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    move-object v4, p0

    .line 110
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    :cond_5
    if-eqz v4, :cond_8

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Landroid/view/View;

    .line 119
    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    invoke-static {p0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    const p1, 0x7f0a061e

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/ArrayList;

    .line 136
    .line 137
    if-eqz p0, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    sub-int/2addr p1, v1

    .line 144
    if-gez p1, :cond_6

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    throw v3

    .line 155
    :cond_7
    :goto_1
    move v2, v1

    .line 156
    :cond_8
    :goto_2
    return v2
.end method

.method public static e(Landroidx/core/view/n;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, p3}, Landroidx/core/view/n;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/16 v4, 0x52

    .line 48
    .line 49
    if-ne v1, v4, :cond_4

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    sget-boolean v1, La/c;->i:Z

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v4, "onMenuKeyEvent"

    .line 62
    .line 63
    new-array v5, v3, [Ljava/lang/Class;

    .line 64
    .line 65
    const-class v6, Landroid/view/KeyEvent;

    .line 66
    .line 67
    aput-object v6, v5, v0

    .line 68
    .line 69
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, La/c;->j:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    :catch_0
    sput-boolean v3, La/c;->i:Z

    .line 76
    .line 77
    :cond_2
    sget-object v0, La/c;->j:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    :try_start_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_1
    :cond_4
    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, p3}, Landroidx/core/view/c1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    if-eqz p0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :cond_7
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    :goto_1
    return v3

    .line 130
    :cond_8
    instance-of v1, p2, Landroid/app/Dialog;

    .line 131
    .line 132
    if-eqz v1, :cond_f

    .line 133
    .line 134
    check-cast p2, Landroid/app/Dialog;

    .line 135
    .line 136
    sget-boolean p0, La/c;->k:Z

    .line 137
    .line 138
    if-nez p0, :cond_9

    .line 139
    .line 140
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 141
    .line 142
    const-string p1, "mOnKeyListener"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    sput-object p0, La/c;->l:Ljava/lang/reflect/Field;

    .line 149
    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    .line 152
    .line 153
    :catch_2
    sput-boolean v3, La/c;->k:Z

    .line 154
    .line 155
    :cond_9
    sget-object p0, La/c;->l:Ljava/lang/reflect/Field;

    .line 156
    .line 157
    if-eqz p0, :cond_a

    .line 158
    .line 159
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_3
    :cond_a
    move-object p0, v2

    .line 167
    :goto_2
    if-eqz p0, :cond_b

    .line 168
    .line 169
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_b

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_b
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_c
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0, p3}, Landroidx/core/view/c1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_d
    if-eqz p0, :cond_e

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :cond_e
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    :goto_3
    return v3

    .line 213
    :cond_f
    if-eqz p1, :cond_10

    .line 214
    .line 215
    invoke-static {p1, p3}, Landroidx/core/view/c1;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_11

    .line 220
    .line 221
    :cond_10
    invoke-interface {p0, p3}, Landroidx/core/view/n;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_12

    .line 226
    .line 227
    :cond_11
    move v0, v3

    .line 228
    :cond_12
    return v0
.end method

.method public static f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    const-class v0, La/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lq/d;->n0:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lq/d;->o0:I

    .line 7
    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget v3, p3, Lr/n;->b:I

    .line 15
    .line 16
    if-eq v0, v3, :cond_4

    .line 17
    .line 18
    :cond_1
    move v3, v1

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_5

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lr/n;

    .line 30
    .line 31
    iget v5, v4, Lr/n;->b:I

    .line 32
    .line 33
    if-ne v5, v0, :cond_3

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p3, p1, v4}, Lr/n;->c(ILr/n;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    move-object p3, v4

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    if-eq v0, v2, :cond_5

    .line 49
    .line 50
    return-object p3

    .line 51
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 52
    if-nez p3, :cond_c

    .line 53
    .line 54
    instance-of v3, p0, Lq/j;

    .line 55
    .line 56
    if-eqz v3, :cond_a

    .line 57
    .line 58
    move-object v3, p0

    .line 59
    check-cast v3, Lq/j;

    .line 60
    .line 61
    move v4, v1

    .line 62
    :goto_3
    iget v5, v3, Lq/j;->r0:I

    .line 63
    .line 64
    if-ge v4, v5, :cond_8

    .line 65
    .line 66
    iget-object v5, v3, Lq/j;->q0:[Lq/d;

    .line 67
    .line 68
    aget-object v5, v5, v4

    .line 69
    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    iget v6, v5, Lq/d;->n0:I

    .line 73
    .line 74
    if-eq v6, v2, :cond_6

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    if-ne p1, v0, :cond_7

    .line 78
    .line 79
    iget v6, v5, Lq/d;->o0:I

    .line 80
    .line 81
    if-eq v6, v2, :cond_7

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_8
    move v6, v2

    .line 88
    :goto_4
    if-eq v6, v2, :cond_a

    .line 89
    .line 90
    move v3, v1

    .line 91
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v3, v4, :cond_a

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lr/n;

    .line 102
    .line 103
    iget v5, v4, Lr/n;->b:I

    .line 104
    .line 105
    if-ne v5, v6, :cond_9

    .line 106
    .line 107
    move-object p3, v4

    .line 108
    goto :goto_6

    .line 109
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 113
    .line 114
    new-instance p3, Lr/n;

    .line 115
    .line 116
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v3, p3, Lr/n;->a:Ljava/util/ArrayList;

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    iput-object v3, p3, Lr/n;->d:Ljava/util/ArrayList;

    .line 128
    .line 129
    iput v2, p3, Lr/n;->e:I

    .line 130
    .line 131
    sget v2, Lr/n;->f:I

    .line 132
    .line 133
    add-int/lit8 v3, v2, 0x1

    .line 134
    .line 135
    sput v3, Lr/n;->f:I

    .line 136
    .line 137
    iput v2, p3, Lr/n;->b:I

    .line 138
    .line 139
    iput p1, p3, Lr/n;->c:I

    .line 140
    .line 141
    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_c
    iget-object v2, p3, Lr/n;->a:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_d

    .line 151
    .line 152
    goto :goto_9

    .line 153
    :cond_d
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    instance-of v2, p0, Lq/h;

    .line 157
    .line 158
    if-eqz v2, :cond_f

    .line 159
    .line 160
    move-object v2, p0

    .line 161
    check-cast v2, Lq/h;

    .line 162
    .line 163
    iget-object v3, v2, Lq/h;->t0:Lq/c;

    .line 164
    .line 165
    iget v2, v2, Lq/h;->u0:I

    .line 166
    .line 167
    if-nez v2, :cond_e

    .line 168
    .line 169
    move v1, v0

    .line 170
    :cond_e
    invoke-virtual {v3, v1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 171
    .line 172
    .line 173
    :cond_f
    iget v0, p3, Lr/n;->b:I

    .line 174
    .line 175
    if-nez p1, :cond_10

    .line 176
    .line 177
    iput v0, p0, Lq/d;->n0:I

    .line 178
    .line 179
    iget-object v0, p0, Lq/d;->I:Lq/c;

    .line 180
    .line 181
    invoke-virtual {v0, p1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lq/d;->K:Lq/c;

    .line 185
    .line 186
    :goto_7
    invoke-virtual {v0, p1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 187
    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_10
    iput v0, p0, Lq/d;->o0:I

    .line 191
    .line 192
    iget-object v0, p0, Lq/d;->J:Lq/c;

    .line 193
    .line 194
    invoke-virtual {v0, p1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lq/d;->M:Lq/c;

    .line 198
    .line 199
    invoke-virtual {v0, p1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lq/d;->L:Lq/c;

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :goto_8
    iget-object p0, p0, Lq/d;->P:Lq/c;

    .line 206
    .line 207
    invoke-virtual {p0, p1, p3, p2}, Lq/c;->c(ILr/n;Ljava/util/ArrayList;)V

    .line 208
    .line 209
    .line 210
    :goto_9
    return-object p3
.end method

.method public static h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/d3;->c()Landroidx/appcompat/widget/d3;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/d3;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "androidx.work.workdb"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "context.getDatabasePath(WORK_DATABASE_NAME)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v3, Ln1/x;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    sget-object v3, Ln1/a;->a:Ln1/a;

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ln1/a;->a(Landroid/content/Context;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Ln1/x;->b:[Ljava/lang/String;

    .line 51
    .line 52
    array-length v0, p0

    .line 53
    invoke-static {v0}, Lv1/f;->H(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    if-ge v0, v3, :cond_0

    .line 60
    .line 61
    move v0, v3

    .line 62
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 65
    .line 66
    .line 67
    array-length v0, p0

    .line 68
    const/4 v4, 0x0

    .line 69
    :goto_0
    if-ge v4, v0, :cond_1

    .line 70
    .line 71
    aget-object v5, p0, v4

    .line 72
    .line 73
    new-instance v6, Ljava/io/File;

    .line 74
    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Ljava/io/File;

    .line 98
    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-eqz p0, :cond_2

    .line 132
    .line 133
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string v0, "singletonMap(pair.first, pair.second)"

    .line 138
    .line 139
    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 144
    .line 145
    invoke-direct {p0, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Ljava/io/File;

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/io/File;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_3

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    sget-object v3, Ln1/x;->a:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v5, "Over-writing contents of "

    .line 204
    .line 205
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v2, v3, v4}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    sget-object v1, Ln1/x;->a:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    return-void
.end method

.method public static j(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "AppLocalesStorageHelper"

    const-string v1, "locales"

    const-string v2, "Storing App Locales : Failed to persist app-locales: "

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v3, p0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v5, "UTF-8"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "application_locales"

    invoke-interface {v3, v4, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    throw p1

    :catch_3
    const-string p0, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static l(Ljava/nio/MappedByteBuffer;)Lq0/b;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lf/q0;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lf/q0;-><init>(Ljava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Lf/q0;->J(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const v3, 0xffff

    .line 23
    .line 24
    .line 25
    and-int/2addr v2, v3

    .line 26
    const/16 v3, 0x64

    .line 27
    .line 28
    const-string v4, "Cannot read metadata."

    .line 29
    .line 30
    if-gt v2, v3, :cond_5

    .line 31
    .line 32
    const/4 v3, 0x6

    .line 33
    invoke-virtual {v0, v3}, Lf/q0;->J(I)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move v5, v3

    .line 38
    :goto_0
    const-wide/16 v6, -0x1

    .line 39
    .line 40
    if-ge v5, v2, :cond_1

    .line 41
    .line 42
    iget-object v8, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual {v0, v1}, Lf/q0;->J(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lf/q0;->I()J

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    invoke-virtual {v0, v1}, Lf/q0;->J(I)V

    .line 58
    .line 59
    .line 60
    const v11, 0x6d657461

    .line 61
    .line 62
    .line 63
    if-ne v11, v8, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move-wide v9, v6

    .line 70
    :goto_1
    cmp-long v1, v9, v6

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v1, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-long v1, v1

    .line 83
    sub-long v1, v9, v1

    .line 84
    .line 85
    long-to-int v1, v1

    .line 86
    invoke-virtual {v0, v1}, Lf/q0;->J(I)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0xc

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lf/q0;->J(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lf/q0;->I()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    :goto_2
    int-to-long v5, v3

    .line 99
    cmp-long v5, v5, v1

    .line 100
    .line 101
    if-gez v5, :cond_4

    .line 102
    .line 103
    iget-object v5, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {v0}, Lf/q0;->I()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    invoke-virtual {v0}, Lf/q0;->I()J

    .line 116
    .line 117
    .line 118
    const v8, 0x456d6a69

    .line 119
    .line 120
    .line 121
    if-eq v8, v5, :cond_3

    .line 122
    .line 123
    const v8, 0x656d6a69

    .line 124
    .line 125
    .line 126
    if-ne v8, v5, :cond_2

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    :goto_3
    add-long/2addr v6, v9

    .line 133
    long-to-int v0, v6

    .line 134
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    .line 136
    .line 137
    new-instance v0, Lq0/b;

    .line 138
    .line 139
    invoke-direct {v0}, Lq0/c;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    add-int/2addr v2, v1

    .line 160
    iput-object p0, v0, Lq0/c;->b:Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    iput v2, v0, Lq0/c;->a:I

    .line 163
    .line 164
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    sub-int/2addr v2, p0

    .line 169
    iput v2, v0, Lq0/c;->c:I

    .line 170
    .line 171
    iget-object p0, v0, Lq0/c;->b:Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    iput p0, v0, Lq0/c;->d:I

    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 181
    .line 182
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0

    .line 186
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 187
    .line 188
    invoke-direct {p0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "AppLocalesStorageHelper"

    const-string v1, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v2, ""

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_1
    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "locales"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "application_locales"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    :try_start_3
    const-string v4, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_2

    :catch_1
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_4
    return-object v2

    :goto_5
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    throw p0

    :catch_3
    const-string p0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static n(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/appcompat/widget/r4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/t4;->k:Landroidx/appcompat/widget/t4;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/t4;->a:Landroid/view/View;

    .line 17
    .line 18
    if-ne v0, p0, :cond_1

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/appcompat/widget/t4;->b(Landroidx/appcompat/widget/t4;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    sget-object p1, Landroidx/appcompat/widget/t4;->l:Landroidx/appcompat/widget/t4;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/appcompat/widget/t4;->a:Landroid/view/View;

    .line 34
    .line 35
    if-ne v0, p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/appcompat/widget/t4;->a()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    new-instance v0, Landroidx/appcompat/widget/t4;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/t4;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static o(IIII)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eq p3, v0, :cond_3

    if-eq p3, v2, :cond_3

    if-ne p3, v1, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v0
.end method
