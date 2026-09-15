.class public abstract Landroidx/core/view/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:F

.field public final c:Landroid/view/animation/Interpolator;

.field public final d:J


# direct methods
.method public constructor <init>(ILandroid/view/animation/DecelerateInterpolator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/view/c2;->a:I

    iput-object p2, p0, Landroidx/core/view/c2;->c:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroidx/core/view/c2;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/view/c2;->d:J

    return-wide v0
.end method

.method public b()F
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/c2;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/core/view/c2;->b:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/core/view/c2;->b:F

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/c2;->a:I

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/c2;->b:F

    return-void
.end method
