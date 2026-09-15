.class public final Lv1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Lm1/e;

.field public final f:Lm1/e;

.field public final g:J

.field public h:J

.field public i:J

.field public j:Lm1/d;

.field public final k:I

.field public final l:I

.field public final m:J

.field public n:J

.field public final o:J

.field public final p:J

.field public q:Z

.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "WorkSpec"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lv1/p;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V
    .locals 10

    .line 1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move/from16 v7, p15

    move/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v9, "workerClassName"

    invoke-static {p3, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lv1/p;->a:Ljava/lang/String;

    iput v2, v0, Lv1/p;->b:I

    iput-object v3, v0, Lv1/p;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lv1/p;->d:Ljava/lang/String;

    iput-object v4, v0, Lv1/p;->e:Lm1/e;

    iput-object v5, v0, Lv1/p;->f:Lm1/e;

    move-wide/from16 v1, p7

    iput-wide v1, v0, Lv1/p;->g:J

    move-wide/from16 v1, p9

    iput-wide v1, v0, Lv1/p;->h:J

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lv1/p;->i:J

    iput-object v6, v0, Lv1/p;->j:Lm1/d;

    move/from16 v1, p14

    iput v1, v0, Lv1/p;->k:I

    iput v7, v0, Lv1/p;->l:I

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lv1/p;->m:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lv1/p;->n:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lv1/p;->o:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lv1/p;->p:J

    move/from16 v1, p24

    iput-boolean v1, v0, Lv1/p;->q:Z

    iput v8, v0, Lv1/p;->r:I

    move/from16 v1, p26

    iput v1, v0, Lv1/p;->s:I

    move/from16 v1, p27

    iput v1, v0, Lv1/p;->t:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIIII)V
    .locals 31

    .line 2
    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const-string v3, "EMPTY"

    if-eqz v1, :cond_2

    sget-object v1, Lm1/e;->c:Lm1/e;

    invoke-static {v1, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    sget-object v1, Lm1/e;->c:Lm1/e;

    invoke-static {v1, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_4

    move-wide v10, v3

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v12, v3

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v14, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    sget-object v1, Lm1/d;->i:Lm1/d;

    move-object/from16 v16, v1

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    move/from16 v17, v6

    goto :goto_8

    :cond_8
    move/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move/from16 v18, v2

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v19, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v19, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v21, v3

    goto :goto_b

    :cond_b
    move-wide/from16 v21, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v23, v3

    goto :goto_c

    :cond_c
    move-wide/from16 v23, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v3, -0x1

    move-wide/from16 v25, v3

    goto :goto_d

    :cond_d
    move-wide/from16 v25, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v27, v6

    goto :goto_e

    :cond_e
    move/from16 v27, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v28, v2

    goto :goto_f

    :cond_f
    move/from16 v28, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move/from16 v29, v6

    goto :goto_10

    :cond_10
    move/from16 v29, p26

    :goto_10
    const/16 v30, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v30}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    return-void
.end method

.method public static b(Lv1/p;Ljava/lang/String;ILjava/lang/String;Lm1/e;IJII)Lv1/p;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lv1/p;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lv1/p;->b:I

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lv1/p;->c:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v2, v1, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lv1/p;->d:Ljava/lang/String;

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v7, v3

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lv1/p;->e:Lm1/e;

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p4

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lv1/p;->f:Lm1/e;

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object v9, v3

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-wide v12, v0, Lv1/p;->g:J

    goto :goto_6

    :cond_6
    const-wide/16 v12, 0x0

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v14, v0, Lv1/p;->h:J

    goto :goto_7

    :cond_7
    const-wide/16 v14, 0x0

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v10, v0, Lv1/p;->i:J

    move-wide/from16 v16, v10

    goto :goto_8

    :cond_8
    const-wide/16 v16, 0x0

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Lv1/p;->j:Lm1/d;

    goto :goto_9

    :cond_9
    move-object v2, v3

    :goto_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget v3, v0, Lv1/p;->k:I

    move/from16 v18, v3

    goto :goto_a

    :cond_a
    move/from16 v18, p5

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget v3, v0, Lv1/p;->l:I

    move v11, v3

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    and-int/lit16 v3, v1, 0x1000

    move/from16 v19, v11

    if-eqz v3, :cond_c

    iget-wide v10, v0, Lv1/p;->m:J

    move-wide/from16 v20, v10

    goto :goto_c

    :cond_c
    const-wide/16 v20, 0x0

    :goto_c
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    iget-wide v10, v0, Lv1/p;->n:J

    move-wide/from16 v22, v10

    goto :goto_d

    :cond_d
    move-wide/from16 v22, p6

    :goto_d
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    iget-wide v10, v0, Lv1/p;->o:J

    move-wide/from16 v24, v10

    goto :goto_e

    :cond_e
    const-wide/16 v24, 0x0

    :goto_e
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_f

    iget-wide v10, v0, Lv1/p;->p:J

    move-wide/from16 v26, v10

    goto :goto_f

    :cond_f
    const-wide/16 v26, 0x0

    :goto_f
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_10

    iget-boolean v3, v0, Lv1/p;->q:Z

    move/from16 v28, v3

    goto :goto_10

    :cond_10
    const/16 v28, 0x0

    :goto_10
    const/high16 v3, 0x20000

    and-int/2addr v3, v1

    if-eqz v3, :cond_11

    iget v3, v0, Lv1/p;->r:I

    move v10, v3

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    const/high16 v3, 0x40000

    and-int/2addr v3, v1

    if-eqz v3, :cond_12

    iget v3, v0, Lv1/p;->s:I

    move/from16 v29, v3

    goto :goto_12

    :cond_12
    const/16 v29, 0x0

    :goto_12
    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    iget v1, v0, Lv1/p;->t:I

    move/from16 v30, v1

    goto :goto_13

    :cond_13
    move/from16 v30, p8

    :goto_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    .line 1
    invoke-static {v4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {v5, v0}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v0, "workerClassName"

    invoke-static {v6, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v8, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {v9, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {v2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    move/from16 v1, v19

    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    invoke-static {v10, v0}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    new-instance v0, Lv1/p;

    move-object v3, v0

    move/from16 v31, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v2

    move/from16 v17, v18

    move/from16 v18, v1

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move/from16 v27, v28

    move/from16 v28, v31

    invoke-direct/range {v3 .. v30}, Lv1/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lm1/e;Lm1/e;JJJLm1/d;IIJJJJZIII)V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 10

    .line 1
    iget v0, p0, Lv1/p;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lv1/p;->k:I

    .line 7
    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    iget-wide v2, p0, Lv1/p;->m:J

    .line 11
    .line 12
    iget v4, p0, Lv1/p;->l:I

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    int-to-long v0, v0

    .line 18
    mul-long/2addr v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    long-to-float v2, v2

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->scalb(FI)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-long v2, v0

    .line 27
    :goto_0
    iget-wide v0, p0, Lv1/p;->n:J

    .line 28
    .line 29
    const-wide/32 v4, 0x112a880

    .line 30
    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-lez v6, :cond_1

    .line 35
    .line 36
    move-wide v2, v4

    .line 37
    :cond_1
    add-long/2addr v2, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p0}, Lv1/p;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-wide v1, p0, Lv1/p;->g:J

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    iget v0, p0, Lv1/p;->s:I

    .line 50
    .line 51
    iget-wide v5, p0, Lv1/p;->n:J

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    add-long/2addr v5, v1

    .line 56
    :cond_3
    iget-wide v1, p0, Lv1/p;->i:J

    .line 57
    .line 58
    iget-wide v7, p0, Lv1/p;->h:J

    .line 59
    .line 60
    cmp-long v9, v1, v7

    .line 61
    .line 62
    if-eqz v9, :cond_5

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    const/4 v0, -0x1

    .line 67
    int-to-long v3, v0

    .line 68
    mul-long/2addr v3, v1

    .line 69
    :cond_4
    add-long/2addr v5, v7

    .line 70
    :goto_1
    add-long v2, v5, v3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    if-nez v0, :cond_6

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    move-wide v3, v7

    .line 77
    goto :goto_1

    .line 78
    :cond_7
    iget-wide v5, p0, Lv1/p;->n:J

    .line 79
    .line 80
    cmp-long v0, v5, v3

    .line 81
    .line 82
    if-nez v0, :cond_8

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    :cond_8
    add-long v2, v5, v1

    .line 89
    .line 90
    :goto_2
    return-wide v2
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget-object v0, Lm1/d;->i:Lm1/d;

    iget-object v1, p0, Lv1/p;->j:Lm1/d;

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lv1/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv1/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv1/p;

    iget-object v1, p1, Lv1/p;->a:Ljava/lang/String;

    iget-object v3, p0, Lv1/p;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lv1/p;->b:I

    iget v3, p1, Lv1/p;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lv1/p;->c:Ljava/lang/String;

    iget-object v3, p1, Lv1/p;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lv1/p;->d:Ljava/lang/String;

    iget-object v3, p1, Lv1/p;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lv1/p;->e:Lm1/e;

    iget-object v3, p1, Lv1/p;->e:Lm1/e;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lv1/p;->f:Lm1/e;

    iget-object v3, p1, Lv1/p;->f:Lm1/e;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lv1/p;->g:J

    iget-wide v5, p1, Lv1/p;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lv1/p;->h:J

    iget-wide v5, p1, Lv1/p;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lv1/p;->i:J

    iget-wide v5, p1, Lv1/p;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lv1/p;->j:Lm1/d;

    iget-object v3, p1, Lv1/p;->j:Lm1/d;

    invoke-static {v1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lv1/p;->k:I

    iget v3, p1, Lv1/p;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lv1/p;->l:I

    iget v3, p1, Lv1/p;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lv1/p;->m:J

    iget-wide v5, p1, Lv1/p;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lv1/p;->n:J

    iget-wide v5, p1, Lv1/p;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lv1/p;->o:J

    iget-wide v5, p1, Lv1/p;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lv1/p;->p:J

    iget-wide v5, p1, Lv1/p;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lv1/p;->q:Z

    iget-boolean v3, p1, Lv1/p;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lv1/p;->r:I

    iget v3, p1, Lv1/p;->r:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lv1/p;->s:I

    iget v3, p1, Lv1/p;->s:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lv1/p;->t:I

    iget p1, p1, Lv1/p;->t:I

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lv1/p;->b:I

    invoke-static {v1}, Lo/i;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lv1/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv1/p;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv1/p;->e:Lm1/e;

    invoke-virtual {v1}, Lm1/e;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lv1/p;->f:Lm1/e;

    invoke-virtual {v0}, Lm1/e;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lv1/p;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lv1/p;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lv1/p;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lv1/p;->j:Lm1/d;

    invoke-virtual {v0}, Lm1/d;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lv1/p;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lv1/p;->l:I

    invoke-static {v0}, Lo/i;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lv1/p;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lv1/p;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lv1/p;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lv1/p;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lv1/p;->q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lv1/p;->r:I

    invoke-static {v1}, Lo/i;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lv1/p;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lv1/p;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lv1/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
