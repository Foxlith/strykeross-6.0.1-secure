.class final Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$expandable_fab_release(Ljava/lang/Long;Ljava/lang/Long;Lj5/a;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/a;"
    }
.end annotation


# instance fields
.field final synthetic $anticipateDuration:J

.field final synthetic $endRotationDegrees:F

.field final synthetic $globalDurationMs:Ljava/lang/Long;

.field final synthetic $onAnimationFinished:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field

.field final synthetic $showAntipateAnimations:Z

.field final synthetic this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/nambimobile/widgets/efab/ExpandableFab;JFZLj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/nambimobile/widgets/efab/ExpandableFab;",
            "JFZ",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$globalDurationMs:Ljava/lang/Long;

    iput-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iput-wide p3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$anticipateDuration:J

    iput p5, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$endRotationDegrees:F

    iput-boolean p6, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$showAntipateAnimations:Z

    iput-object p7, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$onAnimationFinished:Lj5/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->invoke()V

    sget-object v0, Lw4/h;->a:Lw4/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$showAntipateAnimations:Z

    iget-object v1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iget-object v2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$onAnimationFinished:Lj5/a;

    iget-object v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$globalDurationMs:Ljava/lang/Long;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getClosingAnimationDurationMs()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    iget-wide v5, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$anticipateDuration:J

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$1;->$endRotationDegrees:F

    invoke-static/range {v0 .. v5}, Lcom/nambimobile/widgets/efab/ExpandableFab;->access$closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V

    return-void
.end method
