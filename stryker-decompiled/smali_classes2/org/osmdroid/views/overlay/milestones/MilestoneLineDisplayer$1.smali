.class Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer$1;
.super Lorg/osmdroid/views/overlay/LineDrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;I)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer$1;->this$0:Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/LineDrawer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    invoke-super {p0}, Lorg/osmdroid/views/overlay/LineDrawer;->flush()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer$1;->this$0:Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->access$002(Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;Z)Z

    return-void
.end method
