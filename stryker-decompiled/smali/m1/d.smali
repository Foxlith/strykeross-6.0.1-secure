.class public final Lm1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lm1/d;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v11, Lm1/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const-wide/16 v6, -0x1

    .line 9
    .line 10
    const-wide/16 v8, -0x1

    .line 11
    .line 12
    sget-object v10, Lx4/q;->a:Lx4/q;

    .line 13
    .line 14
    move-object v0, v11

    .line 15
    invoke-direct/range {v0 .. v10}, Lm1/d;-><init>(IZZZZJJLjava/util/Set;)V

    .line 16
    .line 17
    .line 18
    sput-object v11, Lm1/d;->i:Lm1/d;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(IZZZZJJLjava/util/Set;)V
    .locals 1

    .line 1
    const-string v0, "requiredNetworkType"

    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v0, "contentUriTriggers"

    invoke-static {p10, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm1/d;->a:I

    iput-boolean p2, p0, Lm1/d;->b:Z

    iput-boolean p3, p0, Lm1/d;->c:Z

    iput-boolean p4, p0, Lm1/d;->d:Z

    iput-boolean p5, p0, Lm1/d;->e:Z

    iput-wide p6, p0, Lm1/d;->f:J

    iput-wide p8, p0, Lm1/d;->g:J

    iput-object p10, p0, Lm1/d;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lm1/d;

    invoke-static {v2, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lm1/d;

    iget-boolean v1, p0, Lm1/d;->b:Z

    iget-boolean v2, p1, Lm1/d;->b:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lm1/d;->c:Z

    iget-boolean v2, p1, Lm1/d;->c:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lm1/d;->d:Z

    iget-boolean v2, p1, Lm1/d;->d:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-boolean v1, p0, Lm1/d;->e:Z

    iget-boolean v2, p1, Lm1/d;->e:Z

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-wide v1, p0, Lm1/d;->f:J

    iget-wide v3, p1, Lm1/d;->f:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    :cond_6
    iget-wide v1, p0, Lm1/d;->g:J

    iget-wide v3, p1, Lm1/d;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    return v0

    :cond_7
    iget v1, p0, Lm1/d;->a:I

    iget v2, p1, Lm1/d;->a:I

    if-eq v1, v2, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lm1/d;->h:Ljava/util/Set;

    iget-object p1, p1, Lm1/d;->h:Ljava/util/Set;

    invoke-static {v0, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_9
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lm1/d;->a:I

    invoke-static {v0}, Lo/i;->c(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lm1/d;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lm1/d;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lm1/d;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lm1/d;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lm1/d;->f:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lm1/d;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lm1/d;->h:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
