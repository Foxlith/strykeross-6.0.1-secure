.class public final Landroidx/dynamicanimation/animation/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/a;


# static fields
.field public static final p:Landroidx/dynamicanimation/animation/e;

.field public static final q:Landroidx/dynamicanimation/animation/e;

.field public static final r:Landroidx/dynamicanimation/animation/e;

.field public static final s:Landroidx/dynamicanimation/animation/e;

.field public static final t:Landroidx/dynamicanimation/animation/e;

.field public static final u:Landroidx/dynamicanimation/animation/e;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Landroidx/dynamicanimation/animation/j;

.field public f:Z

.field public final g:F

.field public final h:F

.field public i:J

.field public final j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Landroidx/dynamicanimation/animation/l;

.field public n:F

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "scaleX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->p:Landroidx/dynamicanimation/animation/e;

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "scaleY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->q:Landroidx/dynamicanimation/animation/e;

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "rotation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->r:Landroidx/dynamicanimation/animation/e;

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "rotationX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->s:Landroidx/dynamicanimation/animation/e;

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "rotationY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->t:Landroidx/dynamicanimation/animation/e;

    new-instance v0, Landroidx/dynamicanimation/animation/e;

    const-string v1, "alpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/k;->u:Landroidx/dynamicanimation/animation/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/j;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/dynamicanimation/animation/k;->a:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, Landroidx/dynamicanimation/animation/k;->b:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/k;->c:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 16
    .line 17
    iput v0, p0, Landroidx/dynamicanimation/animation/k;->g:F

    .line 18
    .line 19
    const v2, -0x800001

    .line 20
    .line 21
    .line 22
    iput v2, p0, Landroidx/dynamicanimation/animation/k;->h:F

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    iput-wide v2, p0, Landroidx/dynamicanimation/animation/k;->i:J

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Landroidx/dynamicanimation/animation/k;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Landroidx/dynamicanimation/animation/k;->l:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/dynamicanimation/animation/k;->d:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/dynamicanimation/animation/k;->e:Landroidx/dynamicanimation/animation/j;

    .line 45
    .line 46
    sget-object p1, Landroidx/dynamicanimation/animation/k;->r:Landroidx/dynamicanimation/animation/e;

    .line 47
    .line 48
    if-eq p2, p1, :cond_4

    .line 49
    .line 50
    sget-object p1, Landroidx/dynamicanimation/animation/k;->s:Landroidx/dynamicanimation/animation/e;

    .line 51
    .line 52
    if-eq p2, p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Landroidx/dynamicanimation/animation/k;->t:Landroidx/dynamicanimation/animation/e;

    .line 55
    .line 56
    if-ne p2, p1, :cond_0

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/k;->u:Landroidx/dynamicanimation/animation/e;

    .line 60
    .line 61
    const/high16 v2, 0x3b800000    # 0.00390625f

    .line 62
    .line 63
    if-ne p2, p1, :cond_2

    .line 64
    .line 65
    :cond_1
    :goto_0
    iput v2, p0, Landroidx/dynamicanimation/animation/k;->j:F

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    sget-object p1, Landroidx/dynamicanimation/animation/k;->p:Landroidx/dynamicanimation/animation/e;

    .line 69
    .line 70
    if-eq p2, p1, :cond_1

    .line 71
    .line 72
    sget-object p1, Landroidx/dynamicanimation/animation/k;->q:Landroidx/dynamicanimation/animation/e;

    .line 73
    .line 74
    if-ne p2, p1, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    .line 79
    :goto_1
    iput p1, p0, Landroidx/dynamicanimation/animation/k;->j:F

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    :goto_2
    const p1, 0x3dcccccd    # 0.1f

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :goto_3
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 88
    .line 89
    iput v0, p0, Landroidx/dynamicanimation/animation/k;->n:F

    .line 90
    .line 91
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/k;->o:Z

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/k;->e:Landroidx/dynamicanimation/animation/j;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/dynamicanimation/animation/k;->d:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/j;->setValue(Ljava/lang/Object;F)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/k;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    :goto_1
    if-ltz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/k;->m:Landroidx/dynamicanimation/animation/l;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/dynamicanimation/animation/l;->b:D

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmpl-double v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/k;->f:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/k;->o:Z

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 30
    .line 31
    const-string v1, "Animations may only be started on the main thread"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    const-string v1, "Spring animations can only come to an end when there is damping"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
