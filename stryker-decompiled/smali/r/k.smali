.class public final Lr/k;
.super Lr/o;
.source "SourceFile"


# static fields
.field public static final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lr/k;->k:[I

    return-void
.end method

.method public static m([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    const/4 p1, -0x1

    const/4 p3, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p6, p1, :cond_2

    if-eqz p6, :cond_1

    if-eq p6, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p2, p0, p3

    aput p1, p0, v1

    goto :goto_0

    :cond_1
    int-to-float p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p1, p0, p3

    aput p4, p0, v1

    goto :goto_0

    :cond_2
    int-to-float p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p6, p2

    div-float/2addr p6, p5

    add-float/2addr p6, v0

    float-to-int p5, p6

    if-gt p1, p2, :cond_3

    aput p1, p0, p3

    aput p4, p0, v1

    goto :goto_0

    :cond_3
    if-gt p5, p4, :cond_4

    aput p2, p0, p3

    aput p5, p0, v1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lr/d;)V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lr/o;->j:I

    invoke-static {v1}, Lo/i;->c(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_28

    iget-object v1, v0, Lr/o;->e:Lr/g;

    iget-boolean v4, v1, Lr/f;->j:Z

    iget-object v5, v0, Lr/o;->h:Lr/f;

    iget-object v6, v0, Lr/o;->i:Lr/f;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    if-nez v4, :cond_1f

    iget v4, v0, Lr/o;->d:I

    if-ne v4, v3, :cond_1f

    iget-object v4, v0, Lr/o;->b:Lq/d;

    iget v9, v4, Lq/d;->r:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1e

    if-eq v9, v3, :cond_0

    goto/16 :goto_10

    :cond_0
    iget v9, v4, Lq/d;->s:I

    const/4 v10, -0x1

    if-eqz v9, :cond_5

    if-ne v9, v3, :cond_1

    goto :goto_3

    .line 1
    :cond_1
    iget v9, v4, Lq/d;->X:I

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v8, :cond_2

    move v4, v2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v9, v4, Lq/d;->e:Lr/m;

    iget-object v9, v9, Lr/o;->e:Lr/g;

    iget v9, v9, Lr/f;->g:I

    int-to-float v9, v9

    .line 3
    :goto_0
    iget v4, v4, Lq/d;->W:F

    mul-float/2addr v9, v4

    :goto_1
    add-float/2addr v9, v7

    float-to-int v4, v9

    goto :goto_2

    .line 4
    :cond_3
    iget-object v9, v4, Lq/d;->e:Lr/m;

    iget-object v9, v9, Lr/o;->e:Lr/g;

    iget v9, v9, Lr/f;->g:I

    int-to-float v9, v9

    .line 5
    iget v4, v4, Lq/d;->W:F

    div-float/2addr v9, v4

    goto :goto_1

    .line 6
    :cond_4
    iget-object v9, v4, Lq/d;->e:Lr/m;

    iget-object v9, v9, Lr/o;->e:Lr/g;

    iget v9, v9, Lr/f;->g:I

    int-to-float v9, v9

    goto :goto_0

    :goto_2
    invoke-virtual {v1, v4}, Lr/g;->d(I)V

    goto/16 :goto_10

    :cond_5
    :goto_3
    iget-object v9, v4, Lq/d;->e:Lr/m;

    iget-object v11, v9, Lr/o;->h:Lr/f;

    iget-object v9, v9, Lr/o;->i:Lr/f;

    iget-object v12, v4, Lq/d;->I:Lq/c;

    iget-object v12, v12, Lq/c;->f:Lq/c;

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_4

    :cond_6
    move v12, v2

    :goto_4
    iget-object v13, v4, Lq/d;->J:Lq/c;

    iget-object v13, v13, Lq/c;->f:Lq/c;

    if-eqz v13, :cond_7

    move v13, v8

    goto :goto_5

    :cond_7
    move v13, v2

    :goto_5
    iget-object v14, v4, Lq/d;->K:Lq/c;

    iget-object v14, v14, Lq/c;->f:Lq/c;

    if-eqz v14, :cond_8

    move v14, v8

    goto :goto_6

    :cond_8
    move v14, v2

    :goto_6
    iget-object v15, v4, Lq/d;->L:Lq/c;

    iget-object v15, v15, Lq/c;->f:Lq/c;

    if-eqz v15, :cond_9

    move v15, v8

    goto :goto_7

    :cond_9
    move v15, v2

    .line 7
    :goto_7
    iget v3, v4, Lq/d;->X:I

    if-eqz v12, :cond_12

    if-eqz v13, :cond_12

    if-eqz v14, :cond_12

    if-eqz v15, :cond_12

    .line 8
    iget v4, v4, Lq/d;->W:F

    .line 9
    iget-boolean v10, v11, Lr/f;->j:Z

    sget-object v12, Lr/k;->k:[I

    if-eqz v10, :cond_c

    iget-boolean v10, v9, Lr/f;->j:Z

    if-eqz v10, :cond_c

    iget-boolean v7, v5, Lr/f;->c:Z

    if-eqz v7, :cond_b

    iget-boolean v7, v6, Lr/f;->c:Z

    if-nez v7, :cond_a

    goto :goto_8

    :cond_a
    iget-object v7, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/f;

    iget v7, v7, Lr/f;->g:I

    iget v5, v5, Lr/f;->f:I

    add-int v17, v7, v5

    iget-object v5, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/f;

    iget v5, v5, Lr/f;->g:I

    iget v6, v6, Lr/f;->f:I

    sub-int v18, v5, v6

    iget v5, v11, Lr/f;->g:I

    iget v6, v11, Lr/f;->f:I

    add-int v19, v5, v6

    iget v5, v9, Lr/f;->g:I

    iget v6, v9, Lr/f;->f:I

    sub-int v20, v5, v6

    move-object/from16 v16, v12

    move/from16 v21, v4

    move/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lr/k;->m([IIIIIFI)V

    aget v2, v12, v2

    invoke-virtual {v1, v2}, Lr/g;->d(I)V

    iget-object v1, v0, Lr/o;->b:Lq/d;

    iget-object v1, v1, Lq/d;->e:Lr/m;

    iget-object v1, v1, Lr/o;->e:Lr/g;

    aget v2, v12, v8

    invoke-virtual {v1, v2}, Lr/g;->d(I)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    iget-boolean v10, v5, Lr/f;->j:Z

    iget-object v13, v11, Lr/f;->l:Ljava/util/ArrayList;

    if-eqz v10, :cond_f

    iget-boolean v10, v6, Lr/f;->j:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v11, Lr/f;->c:Z

    if-eqz v10, :cond_e

    iget-boolean v10, v9, Lr/f;->c:Z

    if-nez v10, :cond_d

    goto :goto_9

    :cond_d
    iget v10, v5, Lr/f;->g:I

    iget v14, v5, Lr/f;->f:I

    add-int v17, v10, v14

    iget v10, v6, Lr/f;->g:I

    iget v14, v6, Lr/f;->f:I

    sub-int v18, v10, v14

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v14, v11, Lr/f;->f:I

    add-int v19, v10, v14

    iget-object v10, v9, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v14, v9, Lr/f;->f:I

    sub-int v20, v10, v14

    move-object/from16 v16, v12

    move/from16 v21, v4

    move/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lr/k;->m([IIIIIFI)V

    aget v10, v12, v2

    invoke-virtual {v1, v10}, Lr/g;->d(I)V

    iget-object v10, v0, Lr/o;->b:Lq/d;

    iget-object v10, v10, Lq/d;->e:Lr/m;

    iget-object v10, v10, Lr/o;->e:Lr/g;

    aget v14, v12, v8

    invoke-virtual {v10, v14}, Lr/g;->d(I)V

    goto :goto_a

    :cond_e
    :goto_9
    return-void

    :cond_f
    :goto_a
    iget-boolean v10, v5, Lr/f;->c:Z

    if-eqz v10, :cond_11

    iget-boolean v10, v6, Lr/f;->c:Z

    if-eqz v10, :cond_11

    iget-boolean v10, v11, Lr/f;->c:Z

    if-eqz v10, :cond_11

    iget-boolean v10, v9, Lr/f;->c:Z

    if-nez v10, :cond_10

    goto :goto_b

    :cond_10
    iget-object v10, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v14, v5, Lr/f;->f:I

    add-int v17, v10, v14

    iget-object v10, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v14, v6, Lr/f;->f:I

    sub-int v18, v10, v14

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v11, v11, Lr/f;->f:I

    add-int v19, v10, v11

    iget-object v10, v9, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr/f;

    iget v10, v10, Lr/f;->g:I

    iget v9, v9, Lr/f;->f:I

    sub-int v20, v10, v9

    move-object/from16 v16, v12

    move/from16 v21, v4

    move/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lr/k;->m([IIIIIFI)V

    aget v3, v12, v2

    invoke-virtual {v1, v3}, Lr/g;->d(I)V

    iget-object v3, v0, Lr/o;->b:Lq/d;

    iget-object v3, v3, Lq/d;->e:Lr/m;

    iget-object v3, v3, Lr/o;->e:Lr/g;

    aget v4, v12, v8

    invoke-virtual {v3, v4}, Lr/g;->d(I)V

    goto/16 :goto_10

    :cond_11
    :goto_b
    return-void

    :cond_12
    if-eqz v12, :cond_18

    if-eqz v14, :cond_18

    iget-boolean v9, v5, Lr/f;->c:Z

    if-eqz v9, :cond_17

    iget-boolean v9, v6, Lr/f;->c:Z

    if-nez v9, :cond_13

    goto :goto_d

    .line 10
    :cond_13
    iget v4, v4, Lq/d;->W:F

    .line 11
    iget-object v9, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr/f;

    iget v9, v9, Lr/f;->g:I

    iget v11, v5, Lr/f;->f:I

    add-int/2addr v9, v11

    iget-object v11, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr/f;

    iget v11, v11, Lr/f;->g:I

    iget v12, v6, Lr/f;->f:I

    sub-int/2addr v11, v12

    if-eq v3, v10, :cond_16

    if-eqz v3, :cond_16

    if-eq v3, v8, :cond_14

    goto/16 :goto_10

    :cond_14
    sub-int/2addr v11, v9

    invoke-virtual {v0, v11, v2}, Lr/o;->g(II)I

    move-result v3

    int-to-float v9, v3

    div-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v8}, Lr/o;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_15

    int-to-float v3, v10

    mul-float/2addr v3, v4

    :goto_c
    add-float/2addr v3, v7

    float-to-int v3, v3

    :cond_15
    invoke-virtual {v1, v3}, Lr/g;->d(I)V

    iget-object v3, v0, Lr/o;->b:Lq/d;

    iget-object v3, v3, Lq/d;->e:Lr/m;

    iget-object v3, v3, Lr/o;->e:Lr/g;

    invoke-virtual {v3, v10}, Lr/g;->d(I)V

    goto/16 :goto_10

    :cond_16
    sub-int/2addr v11, v9

    invoke-virtual {v0, v11, v2}, Lr/o;->g(II)I

    move-result v3

    int-to-float v9, v3

    mul-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v8}, Lr/o;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_15

    int-to-float v3, v10

    div-float/2addr v3, v4

    goto :goto_c

    :cond_17
    :goto_d
    return-void

    :cond_18
    if-eqz v13, :cond_1f

    if-eqz v15, :cond_1f

    iget-boolean v12, v11, Lr/f;->c:Z

    if-eqz v12, :cond_1d

    iget-boolean v12, v9, Lr/f;->c:Z

    if-nez v12, :cond_19

    goto :goto_f

    .line 12
    :cond_19
    iget v4, v4, Lq/d;->W:F

    .line 13
    iget-object v12, v11, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr/f;

    iget v12, v12, Lr/f;->g:I

    iget v11, v11, Lr/f;->f:I

    add-int/2addr v12, v11

    iget-object v11, v9, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr/f;

    iget v11, v11, Lr/f;->g:I

    iget v9, v9, Lr/f;->f:I

    sub-int/2addr v11, v9

    if-eq v3, v10, :cond_1c

    if-eqz v3, :cond_1a

    if-eq v3, v8, :cond_1c

    goto :goto_10

    :cond_1a
    sub-int/2addr v11, v12

    invoke-virtual {v0, v11, v8}, Lr/o;->g(II)I

    move-result v3

    int-to-float v9, v3

    mul-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Lr/o;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_1b

    int-to-float v3, v10

    div-float/2addr v3, v4

    :goto_e
    add-float/2addr v3, v7

    float-to-int v3, v3

    :cond_1b
    invoke-virtual {v1, v10}, Lr/g;->d(I)V

    iget-object v4, v0, Lr/o;->b:Lq/d;

    iget-object v4, v4, Lq/d;->e:Lr/m;

    iget-object v4, v4, Lr/o;->e:Lr/g;

    invoke-virtual {v4, v3}, Lr/g;->d(I)V

    goto :goto_10

    :cond_1c
    sub-int/2addr v11, v12

    invoke-virtual {v0, v11, v8}, Lr/o;->g(II)I

    move-result v3

    int-to-float v9, v3

    div-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Lr/o;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_1b

    int-to-float v3, v10

    mul-float/2addr v3, v4

    goto :goto_e

    :cond_1d
    :goto_f
    return-void

    .line 14
    :cond_1e
    iget-object v3, v4, Lq/d;->T:Lq/d;

    if-eqz v3, :cond_1f

    .line 15
    iget-object v3, v3, Lq/d;->d:Lr/k;

    iget-object v3, v3, Lr/o;->e:Lr/g;

    iget-boolean v9, v3, Lr/f;->j:Z

    if-eqz v9, :cond_1f

    iget v4, v4, Lq/d;->w:F

    iget v3, v3, Lr/f;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lr/g;->d(I)V

    :cond_1f
    :goto_10
    iget-boolean v3, v5, Lr/f;->c:Z

    if-eqz v3, :cond_27

    iget-boolean v3, v6, Lr/f;->c:Z

    if-nez v3, :cond_20

    goto/16 :goto_12

    :cond_20
    iget-boolean v3, v5, Lr/f;->j:Z

    if-eqz v3, :cond_21

    iget-boolean v3, v6, Lr/f;->j:Z

    if-eqz v3, :cond_21

    iget-boolean v3, v1, Lr/f;->j:Z

    if-eqz v3, :cond_21

    return-void

    :cond_21
    iget-boolean v3, v1, Lr/f;->j:Z

    if-nez v3, :cond_22

    iget v3, v0, Lr/o;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_22

    iget-object v3, v0, Lr/o;->b:Lq/d;

    iget v4, v3, Lq/d;->r:I

    if-nez v4, :cond_22

    invoke-virtual {v3}, Lq/d;->y()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/f;

    iget-object v4, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/f;

    iget v3, v3, Lr/f;->g:I

    iget v4, v5, Lr/f;->f:I

    add-int/2addr v3, v4

    iget v2, v2, Lr/f;->g:I

    iget v4, v6, Lr/f;->f:I

    add-int/2addr v2, v4

    sub-int v4, v2, v3

    invoke-virtual {v5, v3}, Lr/f;->d(I)V

    invoke-virtual {v6, v2}, Lr/f;->d(I)V

    invoke-virtual {v1, v4}, Lr/g;->d(I)V

    return-void

    :cond_22
    iget-boolean v3, v1, Lr/f;->j:Z

    if-nez v3, :cond_24

    iget v3, v0, Lr/o;->d:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_24

    iget v3, v0, Lr/o;->a:I

    if-ne v3, v8, :cond_24

    iget-object v3, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    iget-object v3, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    iget-object v3, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/f;

    iget-object v4, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/f;

    iget v3, v3, Lr/f;->g:I

    iget v8, v5, Lr/f;->f:I

    add-int/2addr v3, v8

    iget v4, v4, Lr/f;->g:I

    iget v8, v6, Lr/f;->f:I

    add-int/2addr v4, v8

    sub-int/2addr v4, v3

    iget v3, v1, Lr/g;->m:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lr/o;->b:Lq/d;

    iget v8, v4, Lq/d;->v:I

    iget v4, v4, Lq/d;->u:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v8, :cond_23

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_23
    invoke-virtual {v1, v3}, Lr/g;->d(I)V

    :cond_24
    iget-boolean v3, v1, Lr/f;->j:Z

    if-nez v3, :cond_25

    return-void

    :cond_25
    iget-object v3, v5, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/f;

    iget-object v4, v6, Lr/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/f;

    iget v4, v3, Lr/f;->g:I

    iget v8, v5, Lr/f;->f:I

    add-int/2addr v8, v4

    iget v9, v2, Lr/f;->g:I

    iget v10, v6, Lr/f;->f:I

    add-int/2addr v10, v9

    iget-object v11, v0, Lr/o;->b:Lq/d;

    .line 16
    iget v11, v11, Lq/d;->d0:F

    if-ne v3, v2, :cond_26

    move v11, v7

    goto :goto_11

    :cond_26
    move v4, v8

    move v9, v10

    :goto_11
    sub-int/2addr v9, v4

    .line 17
    iget v2, v1, Lr/f;->g:I

    sub-int/2addr v9, v2

    int-to-float v2, v4

    add-float/2addr v2, v7

    int-to-float v3, v9

    mul-float/2addr v3, v11

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v5, v2}, Lr/f;->d(I)V

    iget v2, v5, Lr/f;->g:I

    iget v1, v1, Lr/f;->g:I

    add-int/2addr v2, v1

    invoke-virtual {v6, v2}, Lr/f;->d(I)V

    :cond_27
    :goto_12
    return-void

    :cond_28
    iget-object v1, v0, Lr/o;->b:Lq/d;

    iget-object v3, v1, Lq/d;->I:Lq/c;

    iget-object v1, v1, Lq/d;->K:Lq/c;

    invoke-virtual {v0, v3, v1, v2}, Lr/o;->l(Lq/c;Lq/c;I)V

    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lq/d;->a:Z

    .line 4
    .line 5
    iget-object v2, p0, Lr/o;->e:Lr/g;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lq/d;->r()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, v2, Lr/f;->j:Z

    .line 17
    .line 18
    iget-object v1, p0, Lr/o;->i:Lr/f;

    .line 19
    .line 20
    iget-object v3, p0, Lr/o;->h:Lr/f;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 29
    .line 30
    iget-object v8, v0, Lq/d;->p0:[I

    .line 31
    .line 32
    aget v8, v8, v7

    .line 33
    .line 34
    iput v8, p0, Lr/o;->d:I

    .line 35
    .line 36
    if-eq v8, v5, :cond_5

    .line 37
    .line 38
    if-ne v8, v6, :cond_2

    .line 39
    .line 40
    iget-object v9, v0, Lq/d;->T:Lq/d;

    .line 41
    .line 42
    if-eqz v9, :cond_2

    .line 43
    .line 44
    iget-object v10, v9, Lq/d;->p0:[I

    .line 45
    .line 46
    aget v10, v10, v7

    .line 47
    .line 48
    if-eq v10, v4, :cond_1

    .line 49
    .line 50
    if-ne v10, v6, :cond_2

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v9}, Lq/d;->r()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 57
    .line 58
    iget-object v4, v4, Lq/d;->I:Lq/c;

    .line 59
    .line 60
    invoke-virtual {v4}, Lq/c;->e()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-int/2addr v0, v4

    .line 65
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 66
    .line 67
    iget-object v4, v4, Lq/d;->K:Lq/c;

    .line 68
    .line 69
    invoke-virtual {v4}, Lq/c;->e()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    sub-int/2addr v0, v4

    .line 74
    iget-object v4, v9, Lq/d;->d:Lr/k;

    .line 75
    .line 76
    iget-object v4, v4, Lr/o;->h:Lr/f;

    .line 77
    .line 78
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 79
    .line 80
    iget-object v5, v5, Lq/d;->I:Lq/c;

    .line 81
    .line 82
    invoke-virtual {v5}, Lq/c;->e()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v3, v4, v5}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v9, Lq/d;->d:Lr/k;

    .line 90
    .line 91
    iget-object v3, v3, Lr/o;->i:Lr/f;

    .line 92
    .line 93
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 94
    .line 95
    iget-object v4, v4, Lq/d;->K:Lq/c;

    .line 96
    .line 97
    invoke-virtual {v4}, Lq/c;->e()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    neg-int v4, v4

    .line 102
    invoke-static {v1, v3, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_2
    if-ne v8, v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lq/d;->r()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v2, v0}, Lr/g;->d(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    iget v0, p0, Lr/o;->d:I

    .line 120
    .line 121
    if-ne v0, v6, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 124
    .line 125
    iget-object v8, v0, Lq/d;->T:Lq/d;

    .line 126
    .line 127
    if-eqz v8, :cond_5

    .line 128
    .line 129
    iget-object v9, v8, Lq/d;->p0:[I

    .line 130
    .line 131
    aget v9, v9, v7

    .line 132
    .line 133
    if-eq v9, v4, :cond_4

    .line 134
    .line 135
    if-ne v9, v6, :cond_5

    .line 136
    .line 137
    :cond_4
    iget-object v2, v8, Lq/d;->d:Lr/k;

    .line 138
    .line 139
    iget-object v2, v2, Lr/o;->h:Lr/f;

    .line 140
    .line 141
    iget-object v0, v0, Lq/d;->I:Lq/c;

    .line 142
    .line 143
    invoke-virtual {v0}, Lq/c;->e()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v3, v2, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v8, Lq/d;->d:Lr/k;

    .line 151
    .line 152
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 153
    .line 154
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 155
    .line 156
    iget-object v2, v2, Lq/d;->K:Lq/c;

    .line 157
    .line 158
    invoke-virtual {v2}, Lq/c;->e()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    neg-int v2, v2

    .line 163
    invoke-static {v1, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_5
    :goto_0
    iget-boolean v0, v2, Lr/f;->j:Z

    .line 168
    .line 169
    if-eqz v0, :cond_c

    .line 170
    .line 171
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 172
    .line 173
    iget-boolean v8, v0, Lq/d;->a:Z

    .line 174
    .line 175
    if-eqz v8, :cond_c

    .line 176
    .line 177
    iget-object v5, v0, Lq/d;->Q:[Lq/c;

    .line 178
    .line 179
    aget-object v6, v5, v7

    .line 180
    .line 181
    iget-object v8, v6, Lq/c;->f:Lq/c;

    .line 182
    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    aget-object v9, v5, v4

    .line 186
    .line 187
    iget-object v9, v9, Lq/c;->f:Lq/c;

    .line 188
    .line 189
    if-eqz v9, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0}, Lq/d;->y()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 198
    .line 199
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 200
    .line 201
    aget-object v0, v0, v7

    .line 202
    .line 203
    invoke-virtual {v0}, Lq/c;->e()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, v3, Lr/f;->f:I

    .line 208
    .line 209
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 210
    .line 211
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 212
    .line 213
    aget-object v0, v0, v4

    .line 214
    .line 215
    :goto_1
    invoke-virtual {v0}, Lq/c;->e()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    neg-int v0, v0

    .line 220
    iput v0, v1, Lr/f;->f:I

    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_6
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 225
    .line 226
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 227
    .line 228
    aget-object v0, v0, v7

    .line 229
    .line 230
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 237
    .line 238
    iget-object v2, v2, Lq/d;->Q:[Lq/c;

    .line 239
    .line 240
    aget-object v2, v2, v7

    .line 241
    .line 242
    invoke-virtual {v2}, Lq/c;->e()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-static {v3, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 247
    .line 248
    .line 249
    :cond_7
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 250
    .line 251
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 252
    .line 253
    aget-object v0, v0, v4

    .line 254
    .line 255
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_8

    .line 260
    .line 261
    iget-object v2, p0, Lr/o;->b:Lq/d;

    .line 262
    .line 263
    iget-object v2, v2, Lq/d;->Q:[Lq/c;

    .line 264
    .line 265
    aget-object v2, v2, v4

    .line 266
    .line 267
    invoke-virtual {v2}, Lq/c;->e()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    neg-int v2, v2

    .line 272
    invoke-static {v1, v0, v2}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 273
    .line 274
    .line 275
    :cond_8
    iput-boolean v4, v3, Lr/f;->b:Z

    .line 276
    .line 277
    iput-boolean v4, v1, Lr/f;->b:Z

    .line 278
    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :cond_9
    if-eqz v8, :cond_a

    .line 282
    .line 283
    invoke-static {v6}, Lr/o;->h(Lq/c;)Lr/f;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_1a

    .line 288
    .line 289
    iget-object v4, p0, Lr/o;->b:Lq/d;

    .line 290
    .line 291
    iget-object v4, v4, Lq/d;->Q:[Lq/c;

    .line 292
    .line 293
    aget-object v4, v4, v7

    .line 294
    .line 295
    invoke-virtual {v4}, Lq/c;->e()I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    invoke-static {v3, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_a
    aget-object v5, v5, v4

    .line 304
    .line 305
    iget-object v6, v5, Lq/c;->f:Lq/c;

    .line 306
    .line 307
    if-eqz v6, :cond_b

    .line 308
    .line 309
    invoke-static {v5}, Lr/o;->h(Lq/c;)Lr/f;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    if-eqz v0, :cond_1a

    .line 314
    .line 315
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 316
    .line 317
    iget-object v5, v5, Lq/d;->Q:[Lq/c;

    .line 318
    .line 319
    aget-object v4, v5, v4

    .line 320
    .line 321
    invoke-virtual {v4}, Lq/c;->e()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    neg-int v4, v4

    .line 326
    invoke-static {v1, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 327
    .line 328
    .line 329
    iget v0, v2, Lr/f;->g:I

    .line 330
    .line 331
    neg-int v0, v0

    .line 332
    invoke-static {v3, v1, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_6

    .line 336
    .line 337
    :cond_b
    instance-of v4, v0, Lq/i;

    .line 338
    .line 339
    if-nez v4, :cond_1a

    .line 340
    .line 341
    iget-object v4, v0, Lq/d;->T:Lq/d;

    .line 342
    .line 343
    if-eqz v4, :cond_1a

    .line 344
    .line 345
    const/4 v4, 0x7

    .line 346
    invoke-virtual {v0, v4}, Lq/d;->j(I)Lq/c;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iget-object v0, v0, Lq/c;->f:Lq/c;

    .line 351
    .line 352
    if-nez v0, :cond_1a

    .line 353
    .line 354
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 355
    .line 356
    iget-object v4, v0, Lq/d;->T:Lq/d;

    .line 357
    .line 358
    iget-object v4, v4, Lq/d;->d:Lr/k;

    .line 359
    .line 360
    iget-object v4, v4, Lr/o;->h:Lr/f;

    .line 361
    .line 362
    invoke-virtual {v0}, Lq/d;->s()I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    invoke-static {v3, v4, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 367
    .line 368
    .line 369
    :goto_2
    iget v0, v2, Lr/f;->g:I

    .line 370
    .line 371
    invoke-static {v1, v3, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_6

    .line 375
    .line 376
    :cond_c
    iget v0, p0, Lr/o;->d:I

    .line 377
    .line 378
    if-ne v0, v5, :cond_13

    .line 379
    .line 380
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 381
    .line 382
    iget v8, v0, Lq/d;->r:I

    .line 383
    .line 384
    const/4 v9, 0x2

    .line 385
    if-eq v8, v9, :cond_11

    .line 386
    .line 387
    if-eq v8, v5, :cond_d

    .line 388
    .line 389
    goto/16 :goto_4

    .line 390
    .line 391
    :cond_d
    iget v8, v0, Lq/d;->s:I

    .line 392
    .line 393
    if-ne v8, v5, :cond_10

    .line 394
    .line 395
    iput-object p0, v3, Lr/f;->a:Lr/o;

    .line 396
    .line 397
    iput-object p0, v1, Lr/f;->a:Lr/o;

    .line 398
    .line 399
    iget-object v5, v0, Lq/d;->e:Lr/m;

    .line 400
    .line 401
    iget-object v8, v5, Lr/o;->h:Lr/f;

    .line 402
    .line 403
    iput-object p0, v8, Lr/f;->a:Lr/o;

    .line 404
    .line 405
    iget-object v5, v5, Lr/o;->i:Lr/f;

    .line 406
    .line 407
    iput-object p0, v5, Lr/f;->a:Lr/o;

    .line 408
    .line 409
    iput-object p0, v2, Lr/f;->a:Lr/o;

    .line 410
    .line 411
    invoke-virtual {v0}, Lq/d;->z()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_e

    .line 416
    .line 417
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 418
    .line 419
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 420
    .line 421
    iget-object v5, v5, Lq/d;->e:Lr/m;

    .line 422
    .line 423
    iget-object v5, v5, Lr/o;->e:Lr/g;

    .line 424
    .line 425
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 429
    .line 430
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 431
    .line 432
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 433
    .line 434
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 440
    .line 441
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 442
    .line 443
    iget-object v5, v0, Lr/o;->e:Lr/g;

    .line 444
    .line 445
    iput-object p0, v5, Lr/f;->a:Lr/o;

    .line 446
    .line 447
    iget-object v5, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 448
    .line 449
    iget-object v0, v0, Lr/o;->h:Lr/f;

    .line 450
    .line 451
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    iget-object v0, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 455
    .line 456
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 457
    .line 458
    iget-object v5, v5, Lq/d;->e:Lr/m;

    .line 459
    .line 460
    iget-object v5, v5, Lr/o;->i:Lr/f;

    .line 461
    .line 462
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 466
    .line 467
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 468
    .line 469
    iget-object v0, v0, Lr/o;->h:Lr/f;

    .line 470
    .line 471
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 477
    .line 478
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 479
    .line 480
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 481
    .line 482
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 483
    .line 484
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :cond_e
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 490
    .line 491
    invoke-virtual {v0}, Lq/d;->y()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_f

    .line 496
    .line 497
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 498
    .line 499
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 500
    .line 501
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 502
    .line 503
    iget-object v0, v0, Lr/f;->l:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 509
    .line 510
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 511
    .line 512
    iget-object v5, v5, Lq/d;->e:Lr/m;

    .line 513
    .line 514
    iget-object v5, v5, Lr/o;->e:Lr/g;

    .line 515
    .line 516
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    goto :goto_4

    .line 520
    :cond_f
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 521
    .line 522
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 523
    .line 524
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 525
    .line 526
    iget-object v0, v0, Lr/f;->l:Ljava/util/ArrayList;

    .line 527
    .line 528
    goto :goto_3

    .line 529
    :cond_10
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 530
    .line 531
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 532
    .line 533
    iget-object v5, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 539
    .line 540
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 544
    .line 545
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 546
    .line 547
    iget-object v0, v0, Lr/o;->h:Lr/f;

    .line 548
    .line 549
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 555
    .line 556
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 557
    .line 558
    iget-object v0, v0, Lr/o;->i:Lr/f;

    .line 559
    .line 560
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 561
    .line 562
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    iput-boolean v4, v2, Lr/f;->b:Z

    .line 566
    .line 567
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    iget-object v0, v3, Lr/f;->l:Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    iget-object v0, v1, Lr/f;->l:Ljava/util/ArrayList;

    .line 583
    .line 584
    goto :goto_3

    .line 585
    :cond_11
    iget-object v0, v0, Lq/d;->T:Lq/d;

    .line 586
    .line 587
    if-nez v0, :cond_12

    .line 588
    .line 589
    goto :goto_4

    .line 590
    :cond_12
    iget-object v0, v0, Lq/d;->e:Lr/m;

    .line 591
    .line 592
    iget-object v0, v0, Lr/o;->e:Lr/g;

    .line 593
    .line 594
    iget-object v5, v2, Lr/f;->l:Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    iget-object v0, v0, Lr/f;->k:Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    iput-boolean v4, v2, Lr/f;->b:Z

    .line 605
    .line 606
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    iget-object v0, v2, Lr/f;->k:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    :cond_13
    :goto_4
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 617
    .line 618
    iget-object v5, v0, Lq/d;->Q:[Lq/c;

    .line 619
    .line 620
    aget-object v8, v5, v7

    .line 621
    .line 622
    iget-object v9, v8, Lq/c;->f:Lq/c;

    .line 623
    .line 624
    if-eqz v9, :cond_17

    .line 625
    .line 626
    aget-object v10, v5, v4

    .line 627
    .line 628
    iget-object v10, v10, Lq/c;->f:Lq/c;

    .line 629
    .line 630
    if-eqz v10, :cond_17

    .line 631
    .line 632
    invoke-virtual {v0}, Lq/d;->y()Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_14

    .line 637
    .line 638
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 639
    .line 640
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 641
    .line 642
    aget-object v0, v0, v7

    .line 643
    .line 644
    invoke-virtual {v0}, Lq/c;->e()I

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    iput v0, v3, Lr/f;->f:I

    .line 649
    .line 650
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 651
    .line 652
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 653
    .line 654
    aget-object v0, v0, v4

    .line 655
    .line 656
    goto/16 :goto_1

    .line 657
    .line 658
    :cond_14
    iget-object v0, p0, Lr/o;->b:Lq/d;

    .line 659
    .line 660
    iget-object v0, v0, Lq/d;->Q:[Lq/c;

    .line 661
    .line 662
    aget-object v0, v0, v7

    .line 663
    .line 664
    invoke-static {v0}, Lr/o;->h(Lq/c;)Lr/f;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 669
    .line 670
    iget-object v1, v1, Lq/d;->Q:[Lq/c;

    .line 671
    .line 672
    aget-object v1, v1, v4

    .line 673
    .line 674
    invoke-static {v1}, Lr/o;->h(Lq/c;)Lr/f;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    if-eqz v0, :cond_15

    .line 679
    .line 680
    invoke-virtual {v0, p0}, Lr/f;->b(Lr/d;)V

    .line 681
    .line 682
    .line 683
    :cond_15
    if-eqz v1, :cond_16

    .line 684
    .line 685
    invoke-virtual {v1, p0}, Lr/f;->b(Lr/d;)V

    .line 686
    .line 687
    .line 688
    :cond_16
    iput v6, p0, Lr/o;->j:I

    .line 689
    .line 690
    goto :goto_6

    .line 691
    :cond_17
    if-eqz v9, :cond_18

    .line 692
    .line 693
    invoke-static {v8}, Lr/o;->h(Lq/c;)Lr/f;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    if-eqz v0, :cond_1a

    .line 698
    .line 699
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 700
    .line 701
    iget-object v5, v5, Lq/d;->Q:[Lq/c;

    .line 702
    .line 703
    aget-object v5, v5, v7

    .line 704
    .line 705
    invoke-virtual {v5}, Lq/c;->e()I

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    invoke-static {v3, v0, v5}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 710
    .line 711
    .line 712
    goto :goto_5

    .line 713
    :cond_18
    aget-object v5, v5, v4

    .line 714
    .line 715
    iget-object v6, v5, Lq/c;->f:Lq/c;

    .line 716
    .line 717
    if-eqz v6, :cond_19

    .line 718
    .line 719
    invoke-static {v5}, Lr/o;->h(Lq/c;)Lr/f;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    if-eqz v0, :cond_1a

    .line 724
    .line 725
    iget-object v5, p0, Lr/o;->b:Lq/d;

    .line 726
    .line 727
    iget-object v5, v5, Lq/d;->Q:[Lq/c;

    .line 728
    .line 729
    aget-object v4, v5, v4

    .line 730
    .line 731
    invoke-virtual {v4}, Lq/c;->e()I

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    neg-int v4, v4

    .line 736
    invoke-static {v1, v0, v4}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 737
    .line 738
    .line 739
    const/4 v0, -0x1

    .line 740
    invoke-virtual {p0, v3, v1, v0, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 741
    .line 742
    .line 743
    goto :goto_6

    .line 744
    :cond_19
    instance-of v5, v0, Lq/i;

    .line 745
    .line 746
    if-nez v5, :cond_1a

    .line 747
    .line 748
    iget-object v5, v0, Lq/d;->T:Lq/d;

    .line 749
    .line 750
    if-eqz v5, :cond_1a

    .line 751
    .line 752
    iget-object v5, v5, Lq/d;->d:Lr/k;

    .line 753
    .line 754
    iget-object v5, v5, Lr/o;->h:Lr/f;

    .line 755
    .line 756
    invoke-virtual {v0}, Lq/d;->s()I

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    invoke-static {v3, v5, v0}, Lr/o;->b(Lr/f;Lr/f;I)V

    .line 761
    .line 762
    .line 763
    :goto_5
    invoke-virtual {p0, v1, v3, v4, v2}, Lr/o;->c(Lr/f;Lr/f;ILr/g;)V

    .line 764
    .line 765
    .line 766
    :cond_1a
    :goto_6
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr/o;->h:Lr/f;

    .line 2
    .line 3
    iget-boolean v1, v0, Lr/f;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 8
    .line 9
    iget v0, v0, Lr/f;->g:I

    .line 10
    .line 11
    iput v0, v1, Lq/d;->Y:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lr/o;->c:Lr/l;

    iget-object v0, p0, Lr/o;->h:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    iget-object v0, p0, Lr/o;->i:Lr/f;

    invoke-virtual {v0}, Lr/f;->c()V

    iget-object v0, p0, Lr/o;->e:Lr/g;

    invoke-virtual {v0}, Lr/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    .line 1
    iget v0, p0, Lr/o;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lr/o;->b:Lq/d;

    iget v0, v0, Lq/d;->r:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o;->g:Z

    iget-object v1, p0, Lr/o;->h:Lr/f;

    invoke-virtual {v1}, Lr/f;->c()V

    iput-boolean v0, v1, Lr/f;->j:Z

    iget-object v1, p0, Lr/o;->i:Lr/f;

    invoke-virtual {v1}, Lr/f;->c()V

    iput-boolean v0, v1, Lr/f;->j:Z

    iget-object v1, p0, Lr/o;->e:Lr/g;

    iput-boolean v0, v1, Lr/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HorizontalRun "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lr/o;->b:Lq/d;

    .line 9
    .line 10
    iget-object v1, v1, Lq/d;->h0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
