.class final Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFab;->closingAnimations$regularClosingAnimation(ZLcom/nambimobile/widgets/efab/ExpandableFab;Lj5/a;JF)V
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
.field final synthetic $onAnimationFinished:Lj5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;->$onAnimationFinished:Lj5/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;->invoke()V

    sget-object v0, Lw4/h;->a:Lw4/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$closingAnimations$regularClosingAnimation$1$1;->$onAnimationFinished:Lj5/a;

    invoke-interface {v0}, Lj5/a;->invoke()Ljava/lang/Object;

    return-void
.end method
