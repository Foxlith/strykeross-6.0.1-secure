.class public final Ld3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk3/a;

.field public b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:J

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:F

.field public final t:Landroidx/activity/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ld3/e;->c:Landroid/os/Handler;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ld3/e;->d:F

    iput v0, p0, Ld3/e;->e:F

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ld3/e;->t:Landroidx/activity/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Ld3/e;->h:I

    if-lez v0, :cond_0

    iget v1, p0, Ld3/e;->i:I

    if-lez v1, :cond_0

    iget v2, p0, Ld3/e;->f:I

    if-lez v2, :cond_0

    iget v3, p0, Ld3/e;->g:I

    if-lez v3, :cond_0

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Ld3/e;->d:F

    int-to-float v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Ld3/e;->e:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ld3/e;->e:F

    iput v0, p0, Ld3/e;->d:F

    :goto_0
    return-void
.end method

.method public final b(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/e;->a:Lk3/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lg3/b;

    invoke-direct {v1, p1, p2, p3, p4}, Lg3/b;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lk3/a;->t(Lg3/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
