.class public Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(DZLandroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;-><init>(DZ)V

    iput-object p4, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPath:Landroid/graphics/Path;

    iput-object p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestonePathDisplayer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
