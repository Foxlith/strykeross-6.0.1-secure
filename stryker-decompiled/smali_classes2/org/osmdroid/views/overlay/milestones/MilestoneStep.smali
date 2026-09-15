.class public Lorg/osmdroid/views/overlay/milestones/MilestoneStep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mObject:Ljava/lang/Object;

.field private final mOrientation:D

.field private final mX:J

.field private final mY:J


# direct methods
.method public constructor <init>(JJD)V
    .locals 8

    .line 1
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;-><init>(JJDLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JJDLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mX:J

    iput-wide p3, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mY:J

    iput-wide p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mOrientation:D

    iput-object p7, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrientation()D
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mOrientation:D

    return-wide v0
.end method

.method public getX()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mX:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mY:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mX:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mY:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mOrientation:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
