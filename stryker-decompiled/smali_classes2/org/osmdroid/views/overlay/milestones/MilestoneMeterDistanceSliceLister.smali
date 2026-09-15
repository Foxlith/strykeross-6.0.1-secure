.class public Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;
    }
.end annotation


# instance fields
.field private mDistance:D

.field private mIndex:I

.field private mNbMetersEnd:D

.field private mNbMetersStart:D

.field private mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;-><init>()V

    return-void
.end method


# virtual methods
.method public add(JJJJ)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v2, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_ENDED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->getDistance(I)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-wide/from16 v5, p1

    long-to-double v13, v5

    move-wide/from16 v11, p3

    long-to-double v9, v11

    move-wide/from16 v7, p5

    long-to-double v5, v7

    move-object v15, v2

    move-wide/from16 v16, v3

    move-wide/from16 v1, p7

    long-to-double v3, v1

    move-wide v7, v13

    move-wide/from16 v18, v9

    move-wide v11, v5

    move-wide v5, v13

    move-wide v13, v3

    invoke-static/range {v7 .. v14}, Lorg/osmdroid/util/Distance;->getSquaredDistanceToPoint(DDDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double v3, v3, v16

    invoke-static/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->getOrientation(JJJJ)D

    move-result-wide v20

    iget-object v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v8, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    const-wide v22, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-ne v7, v8, :cond_4

    iget-wide v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v7, v9

    cmpl-double v11, v7, v16

    if-lez v11, :cond_2

    add-double v9, v9, v16

    iput-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    return-void

    :cond_2
    sget-object v11, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v11, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    add-double/2addr v9, v7

    iput-wide v9, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double v16, v16, v7

    mul-double v9, v20, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    mul-double/2addr v11, v3

    add-double/2addr v5, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    mul-double/2addr v9, v3

    add-double v12, v9, v18

    new-instance v14, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v8, v5

    double-to-long v10, v12

    const/16 v18, 0x0

    move-object v7, v14

    move-wide/from16 v24, v12

    move-wide/from16 v12, v20

    move-object v1, v14

    move-object/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    iget-wide v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iget-wide v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    cmpl-double v1, v1, v7

    if-nez v1, :cond_3

    move-object v1, v15

    iput-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    return-void

    :cond_3
    move-object v1, v15

    move-wide v13, v5

    move-wide/from16 v9, v24

    goto :goto_0

    :cond_4
    move-object v1, v15

    move-wide v13, v5

    move-wide/from16 v9, v18

    :goto_0
    iget-object v2, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    sget-object v5, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_STARTED:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    if-ne v2, v5, :cond_6

    iget-wide v5, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    iget-wide v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    sub-double/2addr v5, v7

    cmpl-double v2, v5, v16

    if-lez v2, :cond_5

    add-double v7, v7, v16

    iput-wide v7, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    new-instance v1, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    const/16 v22, 0x0

    move-object v15, v1

    move-wide/from16 v16, p5

    move-wide/from16 v18, p7

    invoke-direct/range {v15 .. v22}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    return-void

    :cond_5
    iput-object v1, v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    mul-double v22, v22, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v5

    mul-double/2addr v1, v3

    add-double/2addr v1, v13

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    mul-double/2addr v7, v3

    add-double/2addr v7, v9

    new-instance v3, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    double-to-long v1, v1

    double-to-long v4, v7

    const/4 v6, 0x0

    move-object/from16 p1, v3

    move-wide/from16 p2, v1

    move-wide/from16 p4, v4

    move-wide/from16 p6, v20

    move-object/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    :cond_6
    return-void
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mIndex:I

    sget-object v0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;->STEP_INIT:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mStep:Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister$Step;

    return-void
.end method

.method public setMeterDistanceSlice(DD)V
    .locals 0

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersStart:D

    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneMeterDistanceSliceLister;->mNbMetersEnd:D

    return-void
.end method
