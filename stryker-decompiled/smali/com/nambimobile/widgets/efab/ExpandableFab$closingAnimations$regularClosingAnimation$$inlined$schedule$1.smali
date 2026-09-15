.class public final Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $durationMs$inlined:J

.field final synthetic $onAnimationFinished$inlined:Lj5/a;

.field final synthetic $startingRotationDegrees$inlined:F

.field final synthetic this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/ExpandableFab;JFLj5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iput-wide p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$durationMs$inlined:J

    iput p4, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$startingRotationDegrees$inlined:F

    iput-object p5, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$onAnimationFinished$inlined:Lj5/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iget-wide v1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$durationMs$inlined:J

    iget v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$startingRotationDegrees$inlined:F

    const/4 v4, 0x0

    new-instance v5, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;

    iget-object v6, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$$inlined$schedule$1;->$onAnimationFinished$inlined:Lj5/a;

    invoke-direct {v5, v6}, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;-><init>(Lj5/a;)V

    invoke-static/range {v0 .. v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->access$manualIconAnimation(Lcom/nambimobile/widgets/efab/ExpandableFab;JFFLj5/a;)V

    return-void
.end method
