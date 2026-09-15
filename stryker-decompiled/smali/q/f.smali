.class public final Lq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lq/d;

.field public c:I

.field public d:Lq/c;

.field public e:Lq/c;

.field public f:Lq/c;

.field public g:Lq/c;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lq/g;


# direct methods
.method public constructor <init>(Lq/g;ILq/c;Lq/c;Lq/c;Lq/c;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq/f;->r:Lq/g;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lq/f;->b:Lq/d;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lq/f;->c:I

    .line 11
    .line 12
    iput v0, p0, Lq/f;->h:I

    .line 13
    .line 14
    iput v0, p0, Lq/f;->i:I

    .line 15
    .line 16
    iput v0, p0, Lq/f;->j:I

    .line 17
    .line 18
    iput v0, p0, Lq/f;->k:I

    .line 19
    .line 20
    iput v0, p0, Lq/f;->l:I

    .line 21
    .line 22
    iput v0, p0, Lq/f;->m:I

    .line 23
    .line 24
    iput v0, p0, Lq/f;->n:I

    .line 25
    .line 26
    iput v0, p0, Lq/f;->o:I

    .line 27
    .line 28
    iput v0, p0, Lq/f;->p:I

    .line 29
    .line 30
    iput v0, p0, Lq/f;->q:I

    .line 31
    .line 32
    iput p2, p0, Lq/f;->a:I

    .line 33
    .line 34
    iput-object p3, p0, Lq/f;->d:Lq/c;

    .line 35
    .line 36
    iput-object p4, p0, Lq/f;->e:Lq/c;

    .line 37
    .line 38
    iput-object p5, p0, Lq/f;->f:Lq/c;

    .line 39
    .line 40
    iput-object p6, p0, Lq/f;->g:Lq/c;

    .line 41
    .line 42
    iget p2, p1, Lq/g;->w0:I

    .line 43
    .line 44
    iput p2, p0, Lq/f;->h:I

    .line 45
    .line 46
    iget p2, p1, Lq/g;->s0:I

    .line 47
    .line 48
    iput p2, p0, Lq/f;->i:I

    .line 49
    .line 50
    iget p2, p1, Lq/g;->x0:I

    .line 51
    .line 52
    iput p2, p0, Lq/f;->j:I

    .line 53
    .line 54
    iget p1, p1, Lq/g;->t0:I

    .line 55
    .line 56
    iput p1, p0, Lq/f;->k:I

    .line 57
    .line 58
    iput p7, p0, Lq/f;->q:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lq/d;)V
    .locals 8

    .line 1
    iget v0, p0, Lq/f;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lq/f;->r:Lq/g;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget v0, p0, Lq/f;->q:I

    .line 13
    .line 14
    invoke-virtual {v5, v0, p1}, Lq/g;->U(ILq/d;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v6, p1, Lq/d;->p0:[I

    .line 19
    .line 20
    aget v6, v6, v4

    .line 21
    .line 22
    if-ne v6, v2, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lq/f;->p:I

    .line 25
    .line 26
    add-int/2addr v0, v3

    .line 27
    iput v0, p0, Lq/f;->p:I

    .line 28
    .line 29
    move v0, v4

    .line 30
    :cond_0
    iget v2, v5, Lq/g;->P0:I

    .line 31
    .line 32
    iget v6, p1, Lq/d;->g0:I

    .line 33
    .line 34
    if-ne v6, v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_0
    iget v1, p0, Lq/f;->l:I

    .line 39
    .line 40
    add-int/2addr v0, v4

    .line 41
    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Lq/f;->l:I

    .line 43
    .line 44
    iget v0, p0, Lq/f;->q:I

    .line 45
    .line 46
    invoke-virtual {v5, v0, p1}, Lq/g;->T(ILq/d;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lq/f;->b:Lq/d;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lq/f;->c:I

    .line 55
    .line 56
    if-ge v1, v0, :cond_7

    .line 57
    .line 58
    :cond_2
    iput-object p1, p0, Lq/f;->b:Lq/d;

    .line 59
    .line 60
    iput v0, p0, Lq/f;->c:I

    .line 61
    .line 62
    iput v0, p0, Lq/f;->m:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget v0, p0, Lq/f;->q:I

    .line 66
    .line 67
    invoke-virtual {v5, v0, p1}, Lq/g;->U(ILq/d;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget v6, p0, Lq/f;->q:I

    .line 72
    .line 73
    invoke-virtual {v5, v6, p1}, Lq/g;->T(ILq/d;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget-object v7, p1, Lq/d;->p0:[I

    .line 78
    .line 79
    aget v7, v7, v3

    .line 80
    .line 81
    if-ne v7, v2, :cond_4

    .line 82
    .line 83
    iget v2, p0, Lq/f;->p:I

    .line 84
    .line 85
    add-int/2addr v2, v3

    .line 86
    iput v2, p0, Lq/f;->p:I

    .line 87
    .line 88
    move v6, v4

    .line 89
    :cond_4
    iget v2, v5, Lq/g;->Q0:I

    .line 90
    .line 91
    iget v5, p1, Lq/d;->g0:I

    .line 92
    .line 93
    if-ne v5, v1, :cond_5

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    move v4, v2

    .line 97
    :goto_1
    iget v1, p0, Lq/f;->m:I

    .line 98
    .line 99
    add-int/2addr v6, v4

    .line 100
    add-int/2addr v6, v1

    .line 101
    iput v6, p0, Lq/f;->m:I

    .line 102
    .line 103
    iget-object v1, p0, Lq/f;->b:Lq/d;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    iget v1, p0, Lq/f;->c:I

    .line 108
    .line 109
    if-ge v1, v0, :cond_7

    .line 110
    .line 111
    :cond_6
    iput-object p1, p0, Lq/f;->b:Lq/d;

    .line 112
    .line 113
    iput v0, p0, Lq/f;->c:I

    .line 114
    .line 115
    iput v0, p0, Lq/f;->l:I

    .line 116
    .line 117
    :cond_7
    :goto_2
    iget p1, p0, Lq/f;->o:I

    .line 118
    .line 119
    add-int/2addr p1, v3

    .line 120
    iput p1, p0, Lq/f;->o:I

    .line 121
    .line 122
    return-void
.end method

.method public final b(IZZ)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lq/f;->o:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lq/f;->r:Lq/g;

    if-ge v3, v1, :cond_2

    iget v5, v0, Lq/f;->n:I

    add-int/2addr v5, v3

    .line 1
    iget v6, v4, Lq/g;->b1:I

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v4, v4, Lq/g;->a1:[Lq/d;

    .line 3
    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lq/d;->E()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3c

    iget-object v3, v0, Lq/f;->b:Lq/d;

    if-nez v3, :cond_3

    goto/16 :goto_1d

    :cond_3
    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    const/4 v6, -0x1

    move v7, v2

    move v8, v6

    move v9, v8

    :goto_3
    if-ge v7, v1, :cond_9

    if-eqz p2, :cond_5

    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    :goto_4
    iget v11, v0, Lq/f;->n:I

    add-int/2addr v11, v10

    .line 4
    iget v10, v4, Lq/g;->b1:I

    if-lt v11, v10, :cond_6

    goto :goto_5

    .line 5
    :cond_6
    iget-object v10, v4, Lq/g;->a1:[Lq/d;

    .line 6
    aget-object v10, v10, v11

    if-eqz v10, :cond_8

    .line 7
    iget v10, v10, Lq/d;->g0:I

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    iget v7, v0, Lq/f;->a:I

    if-nez v7, :cond_24

    iget-object v7, v0, Lq/f;->b:Lq/d;

    .line 8
    iget v11, v4, Lq/g;->E0:I

    .line 9
    iput v11, v7, Lq/d;->j0:I

    iget v11, v0, Lq/f;->i:I

    if-lez p1, :cond_a

    .line 10
    iget v12, v4, Lq/g;->Q0:I

    add-int/2addr v11, v12

    :cond_a
    iget-object v12, v0, Lq/f;->e:Lq/c;

    .line 11
    iget-object v13, v7, Lq/d;->J:Lq/c;

    invoke-virtual {v13, v12, v11}, Lq/c;->a(Lq/c;I)V

    iget-object v11, v7, Lq/d;->L:Lq/c;

    if-eqz p3, :cond_b

    iget-object v12, v0, Lq/f;->g:Lq/c;

    iget v14, v0, Lq/f;->k:I

    invoke-virtual {v11, v12, v14}, Lq/c;->a(Lq/c;I)V

    :cond_b
    if-lez p1, :cond_c

    iget-object v12, v0, Lq/f;->e:Lq/c;

    iget-object v12, v12, Lq/c;->d:Lq/d;

    iget-object v12, v12, Lq/d;->L:Lq/c;

    invoke-virtual {v12, v13, v2}, Lq/c;->a(Lq/c;I)V

    .line 12
    :cond_c
    iget v12, v4, Lq/g;->S0:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_10

    .line 13
    iget-boolean v12, v7, Lq/d;->E:Z

    if-nez v12, :cond_10

    move v12, v2

    :goto_6
    if-ge v12, v1, :cond_10

    if-eqz p2, :cond_d

    add-int/lit8 v15, v1, -0x1

    sub-int/2addr v15, v12

    goto :goto_7

    :cond_d
    move v15, v12

    :goto_7
    iget v10, v0, Lq/f;->n:I

    add-int/2addr v10, v15

    .line 14
    iget v15, v4, Lq/g;->b1:I

    if-lt v10, v15, :cond_e

    goto :goto_8

    .line 15
    :cond_e
    iget-object v15, v4, Lq/g;->a1:[Lq/d;

    .line 16
    aget-object v10, v15, v10

    .line 17
    iget-boolean v15, v10, Lq/d;->E:Z

    if-eqz v15, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v10, v7

    :goto_9
    move v15, v2

    const/4 v12, 0x0

    :goto_a
    if-ge v15, v1, :cond_3c

    if-eqz p2, :cond_11

    add-int/lit8 v16, v1, -0x1

    sub-int v16, v16, v15

    goto :goto_b

    :cond_11
    move/from16 v16, v15

    :goto_b
    iget v14, v0, Lq/f;->n:I

    add-int v14, v14, v16

    .line 18
    iget v3, v4, Lq/g;->b1:I

    if-lt v14, v3, :cond_12

    goto/16 :goto_1d

    .line 19
    :cond_12
    iget-object v3, v4, Lq/g;->a1:[Lq/d;

    .line 20
    aget-object v3, v3, v14

    if-nez v3, :cond_13

    move/from16 v17, v1

    const/4 v2, 0x3

    goto/16 :goto_12

    :cond_13
    iget-object v14, v3, Lq/d;->I:Lq/c;

    if-nez v15, :cond_14

    iget-object v2, v0, Lq/f;->d:Lq/c;

    iget v6, v0, Lq/f;->h:I

    invoke-virtual {v3, v14, v2, v6}, Lq/d;->g(Lq/c;Lq/c;I)V

    :cond_14
    if-nez v16, :cond_1b

    .line 21
    iget v2, v4, Lq/g;->D0:I

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_15

    move/from16 v16, v2

    .line 22
    iget v2, v4, Lq/g;->J0:F

    sub-float v2, v6, v2

    goto :goto_c

    :cond_15
    move/from16 v16, v2

    iget v2, v4, Lq/g;->J0:F

    :goto_c
    iget v6, v0, Lq/f;->n:I

    if-nez v6, :cond_17

    .line 23
    iget v6, v4, Lq/g;->F0:I

    move/from16 v18, v2

    const/4 v2, -0x1

    if-eq v6, v2, :cond_18

    if-eqz p2, :cond_16

    .line 24
    iget v2, v4, Lq/g;->L0:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v2, v16, v2

    goto :goto_d

    :cond_16
    iget v2, v4, Lq/g;->L0:F

    :goto_d
    move/from16 v19, v6

    move v6, v2

    move/from16 v2, v19

    goto :goto_e

    :cond_17
    move/from16 v18, v2

    :cond_18
    if-eqz p3, :cond_1a

    .line 25
    iget v2, v4, Lq/g;->H0:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1a

    if-eqz p2, :cond_19

    .line 26
    iget v6, v4, Lq/g;->N0:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v6, v16, v6

    goto :goto_e

    :cond_19
    iget v6, v4, Lq/g;->N0:F

    goto :goto_e

    :cond_1a
    move/from16 v2, v16

    move/from16 v6, v18

    .line 27
    :goto_e
    iput v2, v3, Lq/d;->i0:I

    .line 28
    iput v6, v3, Lq/d;->d0:F

    :cond_1b
    add-int/lit8 v2, v1, -0x1

    if-ne v15, v2, :cond_1c

    iget-object v2, v0, Lq/f;->f:Lq/c;

    iget v6, v0, Lq/f;->j:I

    move/from16 v17, v1

    .line 29
    iget-object v1, v3, Lq/d;->K:Lq/c;

    invoke-virtual {v3, v1, v2, v6}, Lq/d;->g(Lq/c;Lq/c;I)V

    goto :goto_f

    :cond_1c
    move/from16 v17, v1

    :goto_f
    if-eqz v12, :cond_1e

    .line 30
    iget v1, v4, Lq/g;->P0:I

    .line 31
    iget-object v2, v12, Lq/d;->K:Lq/c;

    invoke-virtual {v14, v2, v1}, Lq/c;->a(Lq/c;I)V

    if-ne v15, v8, :cond_1d

    iget v1, v0, Lq/f;->h:I

    .line 32
    invoke-virtual {v14}, Lq/c;->h()Z

    move-result v6

    if-eqz v6, :cond_1d

    iput v1, v14, Lq/c;->h:I

    :cond_1d
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v2, v14, v1}, Lq/c;->a(Lq/c;I)V

    const/4 v1, 0x1

    add-int/lit8 v6, v9, 0x1

    if-ne v15, v6, :cond_1e

    iget v1, v0, Lq/f;->j:I

    .line 34
    invoke-virtual {v2}, Lq/c;->h()Z

    move-result v6

    if-eqz v6, :cond_1e

    iput v1, v2, Lq/c;->h:I

    :cond_1e
    if-eq v3, v7, :cond_23

    .line 35
    iget v1, v4, Lq/g;->S0:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    .line 36
    iget-boolean v6, v10, Lq/d;->E:Z

    if-eqz v6, :cond_1f

    if-eq v3, v10, :cond_1f

    iget-boolean v6, v3, Lq/d;->E:Z

    if-eqz v6, :cond_1f

    .line 37
    iget-object v1, v3, Lq/d;->M:Lq/c;

    iget-object v6, v10, Lq/d;->M:Lq/c;

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v12}, Lq/c;->a(Lq/c;I)V

    goto :goto_11

    :cond_1f
    iget-object v6, v3, Lq/d;->J:Lq/c;

    if-eqz v1, :cond_22

    iget-object v12, v3, Lq/d;->L:Lq/c;

    const/4 v14, 0x1

    if-eq v1, v14, :cond_21

    if-eqz v5, :cond_20

    iget-object v1, v0, Lq/f;->e:Lq/c;

    iget v14, v0, Lq/f;->i:I

    invoke-virtual {v6, v1, v14}, Lq/c;->a(Lq/c;I)V

    iget-object v1, v0, Lq/f;->g:Lq/c;

    iget v6, v0, Lq/f;->k:I

    invoke-virtual {v12, v1, v6}, Lq/c;->a(Lq/c;I)V

    goto :goto_11

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v6, v13, v1}, Lq/c;->a(Lq/c;I)V

    :goto_10
    invoke-virtual {v12, v11, v1}, Lq/c;->a(Lq/c;I)V

    goto :goto_11

    :cond_21
    const/4 v1, 0x0

    goto :goto_10

    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v6, v13, v1}, Lq/c;->a(Lq/c;I)V

    goto :goto_11

    :cond_23
    const/4 v2, 0x3

    :goto_11
    move-object v12, v3

    :goto_12
    add-int/lit8 v15, v15, 0x1

    move v14, v2

    move/from16 v1, v17

    const/4 v2, 0x0

    const/4 v6, -0x1

    goto/16 :goto_a

    :cond_24
    move/from16 v17, v1

    iget-object v1, v0, Lq/f;->b:Lq/d;

    .line 38
    iget v2, v4, Lq/g;->D0:I

    .line 39
    iput v2, v1, Lq/d;->i0:I

    iget v2, v0, Lq/f;->h:I

    if-lez p1, :cond_25

    .line 40
    iget v3, v4, Lq/g;->P0:I

    add-int/2addr v2, v3

    .line 41
    :cond_25
    iget-object v3, v1, Lq/d;->I:Lq/c;

    iget-object v6, v1, Lq/d;->K:Lq/c;

    if-eqz p2, :cond_27

    iget-object v7, v0, Lq/f;->f:Lq/c;

    invoke-virtual {v6, v7, v2}, Lq/c;->a(Lq/c;I)V

    if-eqz p3, :cond_26

    iget-object v2, v0, Lq/f;->d:Lq/c;

    iget v7, v0, Lq/f;->j:I

    invoke-virtual {v3, v2, v7}, Lq/c;->a(Lq/c;I)V

    :cond_26
    if-lez p1, :cond_29

    iget-object v2, v0, Lq/f;->f:Lq/c;

    iget-object v2, v2, Lq/c;->d:Lq/d;

    iget-object v2, v2, Lq/d;->I:Lq/c;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lq/c;->a(Lq/c;I)V

    goto :goto_13

    :cond_27
    iget-object v7, v0, Lq/f;->d:Lq/c;

    invoke-virtual {v3, v7, v2}, Lq/c;->a(Lq/c;I)V

    if-eqz p3, :cond_28

    iget-object v2, v0, Lq/f;->f:Lq/c;

    iget v7, v0, Lq/f;->j:I

    invoke-virtual {v6, v2, v7}, Lq/c;->a(Lq/c;I)V

    :cond_28
    if-lez p1, :cond_29

    iget-object v2, v0, Lq/f;->d:Lq/c;

    iget-object v2, v2, Lq/c;->d:Lq/d;

    iget-object v2, v2, Lq/d;->K:Lq/c;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lq/c;->a(Lq/c;I)V

    :cond_29
    :goto_13
    move/from16 v7, v17

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_14
    if-ge v2, v7, :cond_3c

    iget v11, v0, Lq/f;->n:I

    add-int/2addr v11, v2

    .line 42
    iget v12, v4, Lq/g;->b1:I

    if-lt v11, v12, :cond_2a

    goto/16 :goto_1d

    .line 43
    :cond_2a
    iget-object v12, v4, Lq/g;->a1:[Lq/d;

    .line 44
    aget-object v11, v12, v11

    if-nez v11, :cond_2b

    const/4 v13, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1c

    :cond_2b
    iget-object v12, v11, Lq/d;->J:Lq/c;

    if-nez v2, :cond_2f

    iget-object v13, v0, Lq/f;->e:Lq/c;

    iget v14, v0, Lq/f;->i:I

    invoke-virtual {v11, v12, v13, v14}, Lq/d;->g(Lq/c;Lq/c;I)V

    .line 45
    iget v13, v4, Lq/g;->E0:I

    .line 46
    iget v14, v4, Lq/g;->K0:F

    iget v15, v0, Lq/f;->n:I

    if-nez v15, :cond_2c

    .line 47
    iget v15, v4, Lq/g;->G0:I

    move/from16 v16, v13

    const/4 v13, -0x1

    if-eq v15, v13, :cond_2d

    .line 48
    iget v14, v4, Lq/g;->M0:F

    goto :goto_15

    :cond_2c
    move/from16 v16, v13

    const/4 v13, -0x1

    :cond_2d
    if-eqz p3, :cond_2e

    .line 49
    iget v15, v4, Lq/g;->I0:I

    if-eq v15, v13, :cond_2e

    .line 50
    iget v14, v4, Lq/g;->O0:F

    goto :goto_15

    :cond_2e
    move/from16 v15, v16

    .line 51
    :goto_15
    iput v15, v11, Lq/d;->j0:I

    .line 52
    iput v14, v11, Lq/d;->e0:F

    goto :goto_16

    :cond_2f
    const/4 v13, -0x1

    :goto_16
    add-int/lit8 v14, v7, -0x1

    if-ne v2, v14, :cond_30

    iget-object v14, v0, Lq/f;->g:Lq/c;

    iget v15, v0, Lq/f;->k:I

    .line 53
    iget-object v13, v11, Lq/d;->L:Lq/c;

    invoke-virtual {v11, v13, v14, v15}, Lq/d;->g(Lq/c;Lq/c;I)V

    :cond_30
    if-eqz v10, :cond_32

    .line 54
    iget v13, v4, Lq/g;->Q0:I

    .line 55
    iget-object v10, v10, Lq/d;->L:Lq/c;

    invoke-virtual {v12, v10, v13}, Lq/c;->a(Lq/c;I)V

    if-ne v2, v8, :cond_31

    iget v13, v0, Lq/f;->i:I

    .line 56
    invoke-virtual {v12}, Lq/c;->h()Z

    move-result v14

    if-eqz v14, :cond_31

    iput v13, v12, Lq/c;->h:I

    :cond_31
    const/4 v13, 0x0

    .line 57
    invoke-virtual {v10, v12, v13}, Lq/c;->a(Lq/c;I)V

    const/4 v12, 0x1

    add-int/lit8 v13, v9, 0x1

    if-ne v2, v13, :cond_32

    iget v12, v0, Lq/f;->k:I

    .line 58
    invoke-virtual {v10}, Lq/c;->h()Z

    move-result v13

    if-eqz v13, :cond_32

    iput v12, v10, Lq/c;->h:I

    :cond_32
    if-eq v11, v1, :cond_36

    .line 59
    iget-object v10, v11, Lq/d;->K:Lq/c;

    iget-object v12, v11, Lq/d;->I:Lq/c;

    const/4 v13, 0x2

    if-eqz p2, :cond_37

    .line 60
    iget v14, v4, Lq/g;->R0:I

    if-eqz v14, :cond_35

    const/4 v15, 0x1

    if-eq v14, v15, :cond_34

    if-eq v14, v13, :cond_33

    goto :goto_18

    :cond_33
    const/4 v13, 0x0

    .line 61
    invoke-virtual {v12, v3, v13}, Lq/c;->a(Lq/c;I)V

    :goto_17
    invoke-virtual {v10, v6, v13}, Lq/c;->a(Lq/c;I)V

    goto :goto_18

    :cond_34
    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lq/c;->a(Lq/c;I)V

    goto :goto_18

    :cond_35
    const/4 v13, 0x0

    goto :goto_17

    :cond_36
    :goto_18
    const/4 v13, 0x0

    const/4 v15, 0x1

    goto :goto_1b

    .line 62
    :cond_37
    iget v14, v4, Lq/g;->R0:I

    if-eqz v14, :cond_3b

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3a

    if-eq v14, v13, :cond_38

    :goto_19
    const/4 v13, 0x0

    goto :goto_1b

    :cond_38
    if-eqz v5, :cond_39

    iget-object v13, v0, Lq/f;->d:Lq/c;

    iget v14, v0, Lq/f;->h:I

    .line 63
    invoke-virtual {v12, v13, v14}, Lq/c;->a(Lq/c;I)V

    iget-object v12, v0, Lq/f;->f:Lq/c;

    iget v13, v0, Lq/f;->j:I

    invoke-virtual {v10, v12, v13}, Lq/c;->a(Lq/c;I)V

    goto :goto_19

    :cond_39
    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lq/c;->a(Lq/c;I)V

    :goto_1a
    invoke-virtual {v10, v6, v13}, Lq/c;->a(Lq/c;I)V

    goto :goto_1b

    :cond_3a
    const/4 v13, 0x0

    goto :goto_1a

    :cond_3b
    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v3, v13}, Lq/c;->a(Lq/c;I)V

    :goto_1b
    move-object v10, v11

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_14

    :cond_3c
    :goto_1d
    return-void
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lq/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lq/f;->m:I

    .line 7
    .line 8
    iget-object v1, p0, Lq/f;->r:Lq/g;

    .line 9
    .line 10
    iget v1, v1, Lq/g;->Q0:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    return v0

    .line 14
    :cond_0
    iget v0, p0, Lq/f;->m:I

    .line 15
    .line 16
    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Lq/f;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lq/f;->l:I

    .line 6
    .line 7
    iget-object v1, p0, Lq/f;->r:Lq/g;

    .line 8
    .line 9
    iget v1, v1, Lq/g;->P0:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lq/f;->l:I

    .line 14
    .line 15
    return v0
.end method

.method public final e(I)V
    .locals 10

    .line 1
    iget v0, p0, Lq/f;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lq/f;->o:I

    .line 7
    .line 8
    div-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v8, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lq/f;->r:Lq/g;

    .line 12
    .line 13
    if-ge v8, v1, :cond_4

    .line 14
    .line 15
    iget v3, p0, Lq/f;->n:I

    .line 16
    .line 17
    add-int/2addr v3, v8

    .line 18
    iget v4, v2, Lq/g;->b1:I

    .line 19
    .line 20
    if-lt v3, v4, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    iget-object v4, v2, Lq/g;->a1:[Lq/d;

    .line 24
    .line 25
    aget-object v3, v4, v3

    .line 26
    .line 27
    iget v4, p0, Lq/f;->a:I

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v7, 0x3

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    iget-object v4, v3, Lq/d;->p0:[I

    .line 37
    .line 38
    aget v9, v4, v0

    .line 39
    .line 40
    if-ne v9, v7, :cond_3

    .line 41
    .line 42
    iget v7, v3, Lq/d;->r:I

    .line 43
    .line 44
    if-nez v7, :cond_3

    .line 45
    .line 46
    aget v7, v4, v5

    .line 47
    .line 48
    invoke-virtual {v3}, Lq/d;->l()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    move v4, v6

    .line 53
    move v5, p1

    .line 54
    move v6, v7

    .line 55
    move v7, v9

    .line 56
    :goto_1
    invoke-virtual/range {v2 .. v7}, Lq/g;->V(Lq/d;IIII)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    if-eqz v3, :cond_3

    .line 61
    .line 62
    iget-object v4, v3, Lq/d;->p0:[I

    .line 63
    .line 64
    aget v5, v4, v5

    .line 65
    .line 66
    if-ne v5, v7, :cond_3

    .line 67
    .line 68
    iget v5, v3, Lq/d;->s:I

    .line 69
    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    aget v4, v4, v0

    .line 73
    .line 74
    invoke-virtual {v3}, Lq/d;->r()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    move v7, p1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_3
    iput v0, p0, Lq/f;->l:I

    .line 84
    .line 85
    iput v0, p0, Lq/f;->m:I

    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lq/f;->b:Lq/d;

    .line 89
    .line 90
    iput v0, p0, Lq/f;->c:I

    .line 91
    .line 92
    iget p1, p0, Lq/f;->o:I

    .line 93
    .line 94
    move v1, v0

    .line 95
    :goto_4
    if-ge v1, p1, :cond_c

    .line 96
    .line 97
    iget v3, p0, Lq/f;->n:I

    .line 98
    .line 99
    add-int/2addr v3, v1

    .line 100
    iget v4, v2, Lq/g;->b1:I

    .line 101
    .line 102
    if-lt v3, v4, :cond_5

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_5
    iget-object v4, v2, Lq/g;->a1:[Lq/d;

    .line 106
    .line 107
    aget-object v3, v4, v3

    .line 108
    .line 109
    iget v4, p0, Lq/f;->a:I

    .line 110
    .line 111
    const/16 v5, 0x8

    .line 112
    .line 113
    if-nez v4, :cond_8

    .line 114
    .line 115
    invoke-virtual {v3}, Lq/d;->r()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iget v6, v2, Lq/g;->P0:I

    .line 120
    .line 121
    iget v7, v3, Lq/d;->g0:I

    .line 122
    .line 123
    if-ne v7, v5, :cond_6

    .line 124
    .line 125
    move v6, v0

    .line 126
    :cond_6
    iget v5, p0, Lq/f;->l:I

    .line 127
    .line 128
    add-int/2addr v4, v6

    .line 129
    add-int/2addr v4, v5

    .line 130
    iput v4, p0, Lq/f;->l:I

    .line 131
    .line 132
    iget v4, p0, Lq/f;->q:I

    .line 133
    .line 134
    invoke-virtual {v2, v4, v3}, Lq/g;->T(ILq/d;)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    iget-object v5, p0, Lq/f;->b:Lq/d;

    .line 139
    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    iget v5, p0, Lq/f;->c:I

    .line 143
    .line 144
    if-ge v5, v4, :cond_b

    .line 145
    .line 146
    :cond_7
    iput-object v3, p0, Lq/f;->b:Lq/d;

    .line 147
    .line 148
    iput v4, p0, Lq/f;->c:I

    .line 149
    .line 150
    iput v4, p0, Lq/f;->m:I

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    iget v4, p0, Lq/f;->q:I

    .line 154
    .line 155
    invoke-virtual {v2, v4, v3}, Lq/g;->U(ILq/d;)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    iget v6, p0, Lq/f;->q:I

    .line 160
    .line 161
    invoke-virtual {v2, v6, v3}, Lq/g;->T(ILq/d;)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    iget v7, v2, Lq/g;->Q0:I

    .line 166
    .line 167
    iget v8, v3, Lq/d;->g0:I

    .line 168
    .line 169
    if-ne v8, v5, :cond_9

    .line 170
    .line 171
    move v7, v0

    .line 172
    :cond_9
    iget v5, p0, Lq/f;->m:I

    .line 173
    .line 174
    add-int/2addr v6, v7

    .line 175
    add-int/2addr v6, v5

    .line 176
    iput v6, p0, Lq/f;->m:I

    .line 177
    .line 178
    iget-object v5, p0, Lq/f;->b:Lq/d;

    .line 179
    .line 180
    if-eqz v5, :cond_a

    .line 181
    .line 182
    iget v5, p0, Lq/f;->c:I

    .line 183
    .line 184
    if-ge v5, v4, :cond_b

    .line 185
    .line 186
    :cond_a
    iput-object v3, p0, Lq/f;->b:Lq/d;

    .line 187
    .line 188
    iput v4, p0, Lq/f;->c:I

    .line 189
    .line 190
    iput v4, p0, Lq/f;->l:I

    .line 191
    .line 192
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_c
    :goto_6
    return-void
.end method

.method public final f(ILq/c;Lq/c;Lq/c;Lq/c;IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lq/f;->a:I

    iput-object p2, p0, Lq/f;->d:Lq/c;

    iput-object p3, p0, Lq/f;->e:Lq/c;

    iput-object p4, p0, Lq/f;->f:Lq/c;

    iput-object p5, p0, Lq/f;->g:Lq/c;

    iput p6, p0, Lq/f;->h:I

    iput p7, p0, Lq/f;->i:I

    iput p8, p0, Lq/f;->j:I

    iput p9, p0, Lq/f;->k:I

    iput p10, p0, Lq/f;->q:I

    return-void
.end method
