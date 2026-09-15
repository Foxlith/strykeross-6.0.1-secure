.class public abstract Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFollowTrajectory:Z

.field private final mInitialOrientation:D


# direct methods
.method public constructor <init>(DZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mInitialOrientation:D

    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mFollowTrajectory:Z

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mInitialOrientation:D

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->mFollowTrajectory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getOrientation()D

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    double-to-float v0, v0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getX()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getY()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getX()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getY()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawBegin(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawEnd(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
