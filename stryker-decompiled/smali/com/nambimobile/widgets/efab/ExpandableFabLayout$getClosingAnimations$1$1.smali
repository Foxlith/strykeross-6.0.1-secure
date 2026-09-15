.class final Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->getClosingAnimations(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)Landroid/animation/Animator;
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
.field final synthetic this$0:Lcom/nambimobile/widgets/efab/ExpandableFabLayout;


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFabLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;->invoke()V

    sget-object v0, Lw4/h;->a:Lw4/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->setEfabAnimationsFinished$expandable_fab_release(Z)V

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$getClosingAnimations$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFabLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->access$setState(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;Z)V

    return-void
.end method
