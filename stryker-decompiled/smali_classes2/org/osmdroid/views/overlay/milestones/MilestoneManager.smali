.class public Lorg/osmdroid/views/overlay/milestones/MilestoneManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private final mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

.field private final mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/milestones/MilestoneLister;Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(JJ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->drawBegin(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->getMilestones()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v2, p1, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mDisplayer:Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;->drawEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->end()V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->init()V

    return-void
.end method

.method public setDistances([D)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneManager;->mLister:Lorg/osmdroid/views/overlay/milestones/MilestoneLister;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->setDistances([D)V

    return-void
.end method
