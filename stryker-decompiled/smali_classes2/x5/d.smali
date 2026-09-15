.class public final Lx5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/reflect/Method;

.field public static final B:Ljava/lang/reflect/Method;

.field public static final C:Ljava/lang/reflect/Method;

# The value of this static final field might be set in the static constructor
.field public static final D:I = 0x6

# The value of this static final field might be set in the static constructor
.field public static final E:I = 0x8

.field public static final F:[F

.field public static final G:[F

.field public static final H:[F

.field public static final I:[I

.field public static final u:Z

.field public static final v:Ljava/lang/reflect/Method;

.field public static final w:Ljava/lang/reflect/Method;

.field public static final x:Ljava/lang/reflect/Method;

.field public static final y:Ljava/lang/reflect/Method;

.field public static final z:Ljava/lang/reflect/Method;


# instance fields
.field public a:Lx5/a;

.field public b:Lx5/b;

.field public c:Lx5/b;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Ljava/lang/Object;

.field public l:Lx5/c;

.field public m:J

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getPointerCount"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->v:Ljava/lang/reflect/Method;

    const-string v2, "getPointerId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->w:Ljava/lang/reflect/Method;

    const-string v2, "getPressure"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->x:Ljava/lang/reflect/Method;

    const-string v2, "getHistoricalX"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->y:Ljava/lang/reflect/Method;

    const-string v2, "getHistoricalY"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v5, v6, v1

    aput-object v5, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->z:Ljava/lang/reflect/Method;

    const-string v2, "getHistoricalPressure"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v5, v4, v1

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->A:Ljava/lang/reflect/Method;

    const-string v2, "getX"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->B:Ljava/lang/reflect/Method;

    const-string v2, "getY"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lx5/d;->C:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MultiTouchController"

    const-string v4, "static initializer failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sput-boolean v1, Lx5/d;->u:Z

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lx5/d;->D:I

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lx5/d;->E:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    const/16 v0, 0x14

    new-array v1, v0, [F

    sput-object v1, Lx5/d;->F:[F

    new-array v1, v0, [F

    sput-object v1, Lx5/d;->G:[F

    new-array v1, v0, [F

    sput-object v1, Lx5/d;->H:[F

    new-array v0, v0, [I

    sput-object v0, Lx5/d;->I:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx5/d;->k:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lx5/d;->a:Lx5/a;

    .line 7
    .line 8
    iget-object v2, p0, Lx5/d;->l:Lx5/c;

    .line 9
    .line 10
    invoke-interface {v1, v0, v2}, Lx5/a;->getPositionAndScale(Ljava/lang/Object;Lx5/c;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, v2, Lx5/c;->g:Z

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :goto_0
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget v0, v2, Lx5/c;->c:F

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    cmpl-float v3, v0, v3

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    div-float/2addr v1, v0

    .line 30
    invoke-virtual {p0}, Lx5/d;->c()V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lx5/d;->d:F

    .line 34
    .line 35
    iget v3, v2, Lx5/c;->a:F

    .line 36
    .line 37
    sub-float/2addr v0, v3

    .line 38
    mul-float/2addr v0, v1

    .line 39
    iput v0, p0, Lx5/d;->n:F

    .line 40
    .line 41
    iget v0, p0, Lx5/d;->e:F

    .line 42
    .line 43
    iget v3, v2, Lx5/c;->b:F

    .line 44
    .line 45
    sub-float/2addr v0, v3

    .line 46
    mul-float/2addr v0, v1

    .line 47
    iput v0, p0, Lx5/d;->o:F

    .line 48
    .line 49
    iget v0, v2, Lx5/c;->c:F

    .line 50
    .line 51
    iget v1, p0, Lx5/d;->f:F

    .line 52
    .line 53
    div-float/2addr v0, v1

    .line 54
    iput v0, p0, Lx5/d;->p:F

    .line 55
    .line 56
    iget v0, v2, Lx5/c;->d:F

    .line 57
    .line 58
    iget v1, p0, Lx5/d;->g:F

    .line 59
    .line 60
    div-float/2addr v0, v1

    .line 61
    iput v0, p0, Lx5/d;->r:F

    .line 62
    .line 63
    iget v0, v2, Lx5/c;->e:F

    .line 64
    .line 65
    iget v1, p0, Lx5/d;->h:F

    .line 66
    .line 67
    div-float/2addr v0, v1

    .line 68
    iput v0, p0, Lx5/d;->s:F

    .line 69
    .line 70
    iget v0, v2, Lx5/c;->f:F

    .line 71
    .line 72
    iget v1, p0, Lx5/d;->i:F

    .line 73
    .line 74
    sub-float/2addr v0, v1

    .line 75
    iput v0, p0, Lx5/d;->q:F

    .line 76
    .line 77
    return-void
.end method

.method public final b(I[F[F[F[IZJ)V
    .locals 4

    iget-object v0, p0, Lx5/d;->c:Lx5/b;

    iget-object v1, p0, Lx5/d;->b:Lx5/b;

    iput-object v1, p0, Lx5/d;->c:Lx5/b;

    iput-object v0, p0, Lx5/d;->b:Lx5/b;

    .line 1
    iput-wide p7, v0, Lx5/b;->q:J

    const/4 p7, 0x0

    move p8, p7

    :goto_0
    if-ge p8, p1, :cond_0

    .line 2
    iget-object v1, v0, Lx5/b;->a:[F

    aget v2, p2, p8

    aput v2, v1, p8

    iget-object v1, v0, Lx5/b;->b:[F

    aget v2, p3, p8

    aput v2, v1, p8

    iget-object v1, v0, Lx5/b;->c:[F

    aget v2, p4, p8

    aput v2, v1, p8

    iget-object v1, v0, Lx5/b;->d:[I

    aget v2, p5, p8

    aput v2, v1, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p6, v0, Lx5/b;->l:Z

    const/4 p5, 0x1

    const/4 p6, 0x2

    if-lt p1, p6, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p7

    :goto_1
    iput-boolean p1, v0, Lx5/b;->m:Z

    const/4 p8, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    aget p1, p2, p7

    aget p2, p2, p5

    add-float v2, p1, p2

    mul-float/2addr v2, v1

    iput v2, v0, Lx5/b;->e:F

    aget v2, p3, p7

    aget v3, p3, p5

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, v0, Lx5/b;->f:F

    aget v2, p4, p7

    aget p4, p4, p5

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lx5/b;->g:F

    aget p1, p3, p5

    aget p2, p3, p7

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lx5/b;->h:F

    goto :goto_2

    :cond_2
    aget p1, p2, p7

    iput p1, v0, Lx5/b;->e:F

    aget p1, p3, p7

    iput p1, v0, Lx5/b;->f:F

    aget p1, p4, p7

    iput p8, v0, Lx5/b;->h:F

    iput p8, v0, Lx5/b;->g:F

    :goto_2
    iput-boolean p7, v0, Lx5/b;->p:Z

    iput-boolean p7, v0, Lx5/b;->o:Z

    iput-boolean p7, v0, Lx5/b;->n:Z

    iget p1, p0, Lx5/d;->t:I

    iget-object p2, p0, Lx5/d;->a:Lx5/a;

    if-eqz p1, :cond_11

    const/4 p3, 0x0

    const-wide/16 v2, 0x14

    if-eq p1, p5, :cond_e

    if-eq p1, p6, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 3
    iget-boolean p4, p1, Lx5/b;->m:Z

    if-eqz p4, :cond_c

    .line 4
    iget-boolean p4, p1, Lx5/b;->l:Z

    if-nez p4, :cond_4

    goto/16 :goto_a

    .line 5
    :cond_4
    iget p1, p1, Lx5/b;->e:F

    iget-object p2, p0, Lx5/d;->c:Lx5/b;

    iget p2, p2, Lx5/b;->e:F

    sub-float/2addr p1, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_b

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 7
    iget p1, p1, Lx5/b;->f:F

    iget-object p3, p0, Lx5/d;->c:Lx5/b;

    iget p3, p3, Lx5/b;->f:F

    sub-float/2addr p1, p3

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_b

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 9
    iget-boolean p2, p1, Lx5/b;->m:Z

    if-eqz p2, :cond_5

    .line 10
    iget p1, p1, Lx5/b;->g:F

    goto :goto_3

    :cond_5
    move p1, p8

    :goto_3
    iget-object p2, p0, Lx5/d;->c:Lx5/b;

    .line 11
    iget-boolean p3, p2, Lx5/b;->m:Z

    if-eqz p3, :cond_6

    .line 12
    iget p2, p2, Lx5/b;->g:F

    goto :goto_4

    :cond_6
    move p2, p8

    :goto_4
    sub-float/2addr p1, p2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    const/high16 p2, 0x42200000    # 40.0f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_b

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 14
    iget-boolean p3, p1, Lx5/b;->m:Z

    if-eqz p3, :cond_7

    .line 15
    iget p1, p1, Lx5/b;->h:F

    goto :goto_5

    :cond_7
    move p1, p8

    :goto_5
    iget-object p3, p0, Lx5/d;->c:Lx5/b;

    .line 16
    iget-boolean p4, p3, Lx5/b;->m:Z

    if-eqz p4, :cond_8

    .line 17
    iget p8, p3, Lx5/b;->h:F

    :cond_8
    sub-float/2addr p1, p8

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 19
    iget-wide p1, p1, Lx5/b;->q:J

    iget-wide p3, p0, Lx5/d;->m:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_a

    .line 20
    :goto_6
    invoke-virtual {p0}, Lx5/d;->a()V

    goto :goto_c

    :cond_a
    invoke-virtual {p0}, Lx5/d;->e()V

    goto :goto_c

    :cond_b
    :goto_7
    invoke-virtual {p0}, Lx5/d;->a()V

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 21
    :goto_8
    iget-wide p1, p1, Lx5/b;->q:J

    add-long/2addr p1, v2

    :goto_9
    iput-wide p1, p0, Lx5/d;->m:J

    goto :goto_c

    .line 22
    :cond_c
    :goto_a
    iget-boolean p4, p1, Lx5/b;->l:Z

    if-nez p4, :cond_d

    :goto_b
    iput p7, p0, Lx5/d;->t:I

    iput-object p3, p0, Lx5/d;->k:Ljava/lang/Object;

    .line 23
    invoke-interface {p2, p3, p1}, Lx5/a;->selectObject(Ljava/lang/Object;Lx5/b;)V

    goto :goto_c

    :cond_d
    iput p5, p0, Lx5/d;->t:I

    invoke-virtual {p0}, Lx5/d;->a()V

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 24
    iget-boolean p4, p1, Lx5/b;->l:Z

    if-nez p4, :cond_f

    goto :goto_b

    .line 25
    :cond_f
    iget-boolean p2, p1, Lx5/b;->m:Z

    if-eqz p2, :cond_10

    iput p6, p0, Lx5/d;->t:I

    .line 26
    invoke-virtual {p0}, Lx5/d;->a()V

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    goto :goto_8

    .line 27
    :cond_10
    iget-wide p1, p1, Lx5/b;->q:J

    iget-wide p3, p0, Lx5/d;->m:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_a

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 28
    iget-boolean p3, p1, Lx5/b;->l:Z

    if-eqz p3, :cond_12

    .line 29
    invoke-interface {p2, p1}, Lx5/a;->getDraggableObjectAtPoint(Lx5/b;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lx5/d;->k:Ljava/lang/Object;

    if-eqz p1, :cond_12

    iput p5, p0, Lx5/d;->t:I

    iget-object p3, p0, Lx5/d;->b:Lx5/b;

    invoke-interface {p2, p1, p3}, Lx5/a;->selectObject(Ljava/lang/Object;Lx5/b;)V

    invoke-virtual {p0}, Lx5/d;->a()V

    iget-object p1, p0, Lx5/d;->b:Lx5/b;

    .line 30
    iget-wide p1, p1, Lx5/b;->q:J

    goto :goto_9

    :cond_12
    :goto_c
    return-void
.end method

.method public final c()V
    .locals 11

    .line 1
    iget-object v0, p0, Lx5/d;->b:Lx5/b;

    .line 2
    .line 3
    iget v1, v0, Lx5/b;->e:F

    .line 4
    .line 5
    iput v1, p0, Lx5/d;->d:F

    .line 6
    .line 7
    iget v1, v0, Lx5/b;->f:F

    .line 8
    .line 9
    iput v1, p0, Lx5/d;->e:F

    .line 10
    .line 11
    iget-object v1, p0, Lx5/d;->l:Lx5/c;

    .line 12
    .line 13
    iget-boolean v2, v1, Lx5/c;->g:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move v0, v3

    .line 21
    goto :goto_5

    .line 22
    :cond_0
    iget-boolean v2, v0, Lx5/b;->o:Z

    .line 23
    .line 24
    if-nez v2, :cond_9

    .line 25
    .line 26
    iget-boolean v2, v0, Lx5/b;->m:Z

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    iput v3, v0, Lx5/b;->i:F

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    iget-boolean v6, v0, Lx5/b;->n:Z

    .line 34
    .line 35
    if-nez v6, :cond_3

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, v0, Lx5/b;->g:F

    .line 40
    .line 41
    mul-float/2addr v2, v2

    .line 42
    iget v6, v0, Lx5/b;->h:F

    .line 43
    .line 44
    mul-float/2addr v6, v6

    .line 45
    add-float/2addr v6, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v6, v3

    .line 48
    :goto_0
    iput v6, v0, Lx5/b;->j:F

    .line 49
    .line 50
    iput-boolean v4, v0, Lx5/b;->n:Z

    .line 51
    .line 52
    :cond_3
    iget v2, v0, Lx5/b;->j:F

    .line 53
    .line 54
    cmpl-float v6, v2, v3

    .line 55
    .line 56
    if-nez v6, :cond_4

    .line 57
    .line 58
    move v2, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/high16 v6, 0x43800000    # 256.0f

    .line 61
    .line 62
    mul-float/2addr v2, v6

    .line 63
    float-to-int v2, v2

    .line 64
    const v6, 0x8000

    .line 65
    .line 66
    .line 67
    const/16 v7, 0xf

    .line 68
    .line 69
    move v8, v5

    .line 70
    :goto_1
    shl-int/lit8 v9, v8, 0x1

    .line 71
    .line 72
    add-int/2addr v9, v6

    .line 73
    add-int/lit8 v10, v7, -0x1

    .line 74
    .line 75
    shl-int v7, v9, v7

    .line 76
    .line 77
    if-lt v2, v7, :cond_5

    .line 78
    .line 79
    add-int/2addr v8, v6

    .line 80
    sub-int/2addr v2, v7

    .line 81
    :cond_5
    shr-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    if-gtz v6, :cond_8

    .line 84
    .line 85
    int-to-float v2, v8

    .line 86
    const/high16 v6, 0x41800000    # 16.0f

    .line 87
    .line 88
    div-float/2addr v2, v6

    .line 89
    :goto_2
    iput v2, v0, Lx5/b;->i:F

    .line 90
    .line 91
    iget v6, v0, Lx5/b;->g:F

    .line 92
    .line 93
    cmpg-float v2, v2, v6

    .line 94
    .line 95
    if-gez v2, :cond_6

    .line 96
    .line 97
    iput v6, v0, Lx5/b;->i:F

    .line 98
    .line 99
    :cond_6
    iget v2, v0, Lx5/b;->i:F

    .line 100
    .line 101
    iget v6, v0, Lx5/b;->h:F

    .line 102
    .line 103
    cmpg-float v2, v2, v6

    .line 104
    .line 105
    if-gez v2, :cond_7

    .line 106
    .line 107
    iput v6, v0, Lx5/b;->i:F

    .line 108
    .line 109
    :cond_7
    :goto_3
    iput-boolean v4, v0, Lx5/b;->o:Z

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_8
    move v7, v10

    .line 113
    goto :goto_1

    .line 114
    :cond_9
    :goto_4
    iget v0, v0, Lx5/b;->i:F

    .line 115
    .line 116
    :goto_5
    const v2, 0x41aa6666    # 21.3f

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lx5/d;->f:F

    .line 124
    .line 125
    iget-boolean v0, v1, Lx5/c;->h:Z

    .line 126
    .line 127
    if-nez v0, :cond_b

    .line 128
    .line 129
    :cond_a
    move v0, v3

    .line 130
    goto :goto_6

    .line 131
    :cond_b
    iget-object v0, p0, Lx5/d;->b:Lx5/b;

    .line 132
    .line 133
    iget-boolean v2, v0, Lx5/b;->m:Z

    .line 134
    .line 135
    if-eqz v2, :cond_a

    .line 136
    .line 137
    iget v0, v0, Lx5/b;->g:F

    .line 138
    .line 139
    :goto_6
    const/high16 v2, 0x41f00000    # 30.0f

    .line 140
    .line 141
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Lx5/d;->g:F

    .line 146
    .line 147
    iget-boolean v0, v1, Lx5/c;->h:Z

    .line 148
    .line 149
    if-nez v0, :cond_d

    .line 150
    .line 151
    :cond_c
    move v0, v3

    .line 152
    goto :goto_7

    .line 153
    :cond_d
    iget-object v0, p0, Lx5/d;->b:Lx5/b;

    .line 154
    .line 155
    iget-boolean v6, v0, Lx5/b;->m:Z

    .line 156
    .line 157
    if-eqz v6, :cond_c

    .line 158
    .line 159
    iget v0, v0, Lx5/b;->h:F

    .line 160
    .line 161
    :goto_7
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lx5/d;->h:F

    .line 166
    .line 167
    iget-boolean v0, v1, Lx5/c;->i:Z

    .line 168
    .line 169
    if-nez v0, :cond_e

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_e
    iget-object v0, p0, Lx5/d;->b:Lx5/b;

    .line 173
    .line 174
    iget-boolean v1, v0, Lx5/b;->p:Z

    .line 175
    .line 176
    if-nez v1, :cond_10

    .line 177
    .line 178
    iget-boolean v1, v0, Lx5/b;->m:Z

    .line 179
    .line 180
    if-nez v1, :cond_f

    .line 181
    .line 182
    iput v3, v0, Lx5/b;->k:F

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_f
    iget-object v1, v0, Lx5/b;->b:[F

    .line 186
    .line 187
    aget v2, v1, v4

    .line 188
    .line 189
    aget v1, v1, v5

    .line 190
    .line 191
    sub-float/2addr v2, v1

    .line 192
    float-to-double v1, v2

    .line 193
    iget-object v3, v0, Lx5/b;->a:[F

    .line 194
    .line 195
    aget v6, v3, v4

    .line 196
    .line 197
    aget v3, v3, v5

    .line 198
    .line 199
    sub-float/2addr v6, v3

    .line 200
    float-to-double v5, v6

    .line 201
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    double-to-float v1, v1

    .line 206
    iput v1, v0, Lx5/b;->k:F

    .line 207
    .line 208
    :goto_8
    iput-boolean v4, v0, Lx5/b;->p:Z

    .line 209
    .line 210
    :cond_10
    iget v3, v0, Lx5/b;->k:F

    .line 211
    .line 212
    :goto_9
    iput v3, p0, Lx5/d;->i:F

    .line 213
    .line 214
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 20

    .line 1
    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-boolean v13, Lx5/d;->u:Z

    if-eqz v13, :cond_0

    :try_start_0
    sget-object v1, Lx5/d;->v:Ljava/lang/reflect/Method;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_0
    move v14, v11

    :goto_0
    iget v1, v10, Lx5/d;->t:I

    if-nez v1, :cond_1

    iget-boolean v1, v10, Lx5/d;->j:Z

    if-nez v1, :cond_1

    if-ne v14, v11, :cond_1

    return v12

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    div-int v8, v1, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v12

    :goto_1
    if-gt v9, v8, :cond_f

    if-ge v9, v8, :cond_2

    move v1, v11

    goto :goto_2

    :cond_2
    move v1, v12

    :goto_2
    sget-object v2, Lx5/d;->H:[F

    sget-object v3, Lx5/d;->G:[F

    sget-object v4, Lx5/d;->F:[F

    if-eqz v13, :cond_7

    if-ne v14, v11, :cond_3

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x14

    :try_start_1
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v6, v12

    :goto_3
    if-ge v6, v5, :cond_b

    sget-object v7, Lx5/d;->w:Ljava/lang/reflect/Method;

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v12, v16

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v12, Lx5/d;->I:[I

    aput v7, v12, v6

    const/4 v7, 0x2

    if-eqz v1, :cond_4

    sget-object v12, Lx5/d;->y:Ljava/lang/reflect/Method;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v11, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v11, v17

    invoke-virtual {v12, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_4

    :cond_4
    sget-object v11, Lx5/d;->B:Ljava/lang/reflect/Method;

    const/4 v12, 0x1

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v7, v16

    invoke-virtual {v11, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :goto_4
    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v6

    if-eqz v1, :cond_5

    sget-object v7, Lx5/d;->z:Ljava/lang/reflect/Method;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v12, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x1

    aput-object v11, v12, v17

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_5

    :cond_5
    sget-object v7, Lx5/d;->C:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v12, v16

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_5
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v6

    if-eqz v1, :cond_6

    sget-object v7, Lx5/d;->A:Ljava/lang/reflect/Method;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v11, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v11, v17

    invoke-virtual {v7, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_6

    :cond_6
    sget-object v7, Lx5/d;->x:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v12, v16

    invoke-virtual {v7, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_6
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    goto :goto_8

    :goto_9
    aput v5, v4, v6

    if-eqz v1, :cond_9

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    goto :goto_a

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    :goto_a
    aput v4, v3, v6

    if-eqz v1, :cond_a

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v3

    goto :goto_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    :goto_b
    aput v3, v2, v6

    :cond_b
    sget-object v3, Lx5/d;->F:[F

    sget-object v4, Lx5/d;->G:[F

    sget-object v5, Lx5/d;->H:[F

    sget-object v6, Lx5/d;->I:[I

    if-eqz v1, :cond_c

    :goto_c
    const/4 v7, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x1

    if-eq v15, v2, :cond_d

    sget v7, Lx5/d;->E:I

    shl-int v7, v2, v7

    sub-int/2addr v7, v2

    and-int v2, v15, v7

    sget v7, Lx5/d;->D:I

    if-eq v2, v7, :cond_d

    const/4 v2, 0x3

    if-eq v15, v2, :cond_d

    goto :goto_c

    :cond_d
    const/4 v7, 0x0

    :goto_d
    if-eqz v1, :cond_e

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    :goto_e
    move-wide v11, v1

    goto :goto_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    goto :goto_e

    :goto_f
    move-object/from16 v1, p0

    move v2, v14

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide v8, v11

    invoke-virtual/range {v1 .. v9}, Lx5/d;->b(I[F[F[F[IZJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v9, v19, 0x1

    move/from16 v8, v18

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_f
    move v0, v11

    return v0

    :goto_10
    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lx5/d;->k:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lx5/d;->l:Lx5/c;

    .line 7
    .line 8
    iget-boolean v1, v0, Lx5/c;->g:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :goto_0
    move v1, v3

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget v1, v0, Lx5/c;->c:F

    .line 18
    .line 19
    cmpl-float v4, v1, v2

    .line 20
    .line 21
    if-nez v4, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lx5/d;->c()V

    .line 25
    .line 26
    .line 27
    iget v4, p0, Lx5/d;->d:F

    .line 28
    .line 29
    iget v5, p0, Lx5/d;->n:F

    .line 30
    .line 31
    mul-float/2addr v5, v1

    .line 32
    sub-float/2addr v4, v5

    .line 33
    iget v5, p0, Lx5/d;->e:F

    .line 34
    .line 35
    iget v6, p0, Lx5/d;->o:F

    .line 36
    .line 37
    mul-float/2addr v6, v1

    .line 38
    sub-float/2addr v5, v6

    .line 39
    iget v1, p0, Lx5/d;->p:F

    .line 40
    .line 41
    iget v6, p0, Lx5/d;->f:F

    .line 42
    .line 43
    mul-float/2addr v1, v6

    .line 44
    iget v6, p0, Lx5/d;->r:F

    .line 45
    .line 46
    iget v7, p0, Lx5/d;->g:F

    .line 47
    .line 48
    mul-float/2addr v6, v7

    .line 49
    iget v7, p0, Lx5/d;->s:F

    .line 50
    .line 51
    iget v8, p0, Lx5/d;->h:F

    .line 52
    .line 53
    mul-float/2addr v7, v8

    .line 54
    iget v8, p0, Lx5/d;->q:F

    .line 55
    .line 56
    iget v9, p0, Lx5/d;->i:F

    .line 57
    .line 58
    add-float/2addr v8, v9

    .line 59
    iput v4, v0, Lx5/c;->a:F

    .line 60
    .line 61
    iput v5, v0, Lx5/c;->b:F

    .line 62
    .line 63
    cmpl-float v4, v1, v2

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    move v1, v3

    .line 68
    :cond_3
    iput v1, v0, Lx5/c;->c:F

    .line 69
    .line 70
    cmpl-float v1, v6, v2

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    move v6, v3

    .line 75
    :cond_4
    iput v6, v0, Lx5/c;->d:F

    .line 76
    .line 77
    cmpl-float v1, v7, v2

    .line 78
    .line 79
    if-nez v1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    move v3, v7

    .line 83
    :goto_2
    iput v3, v0, Lx5/c;->e:F

    .line 84
    .line 85
    iput v8, v0, Lx5/c;->f:F

    .line 86
    .line 87
    iget-object v1, p0, Lx5/d;->k:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v2, p0, Lx5/d;->b:Lx5/b;

    .line 90
    .line 91
    iget-object v3, p0, Lx5/d;->a:Lx5/a;

    .line 92
    .line 93
    invoke-interface {v3, v1, v0, v2}, Lx5/a;->setPositionAndScale(Ljava/lang/Object;Lx5/c;Lx5/b;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method
