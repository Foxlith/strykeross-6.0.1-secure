.class public Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "SourceFile"


# instance fields
.field private mIndex:I

.field private mLatestOrientation:D

.field private mLatestX:J

.field private mLatestY:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    return-void
.end method

.method private innerAdd(JJI)V
    .locals 9

    new-instance v8, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    iget-wide v5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestOrientation:D

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {p0, v8}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    return-void
.end method


# virtual methods
.method public add(JJJJ)V
    .locals 6

    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->getOrientation(JJJJ)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestOrientation:D

    iget v5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->innerAdd(JJI)V

    iput-wide p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestX:J

    iput-wide p7, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestY:J

    return-void
.end method

.method public end()V
    .locals 6

    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    iget-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestX:J

    iget-wide v3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mLatestY:J

    iget v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    neg-int v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->innerAdd(JJI)V

    return-void
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneVertexLister;->mIndex:I

    return-void
.end method
