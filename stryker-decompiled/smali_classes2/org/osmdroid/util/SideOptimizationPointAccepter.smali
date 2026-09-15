.class public Lorg/osmdroid/util/SideOptimizationPointAccepter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# static fields
.field private static final STATUS_DIFFERENT:I = 0x0

.field private static final STATUS_SAME_X:I = 0x1

.field private static final STATUS_SAME_Y:I = 0x2


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private mMax:J

.field private mMin:J

.field private final mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private final mStartPoint:Lorg/osmdroid/util/PointL;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/PointAccepter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iput-object p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    return-void
.end method

.method private addToAccepter(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    return-void
.end method

.method private flushSides()V
    .locals 11

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v9, v3

    move-wide v3, v5

    move-wide v5, v9

    :goto_0
    iget-wide v7, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_2

    invoke-direct {p0, v7, v8, v1, v2}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_2
    iget-wide v3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_3
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-direct {p0, v3, v4, v1, v2}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide v9, v3

    move-wide v3, v5

    move-wide v5, v9

    :goto_1
    iget-wide v7, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_6

    invoke-direct {p0, v1, v2, v7, v8}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_6
    iget-wide v3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_7
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 5

    iget-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_2

    iget-wide v3, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    return-void

    :cond_2
    cmp-long v1, v1, p1

    if-nez v1, :cond_5

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v0, p3

    if-lez v0, :cond_3

    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    :cond_3
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_1

    :cond_5
    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_8

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_6

    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    :cond_6
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    goto/16 :goto_0
.end method

.method public end()V
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->end()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    return-void
.end method
