.class final synthetic Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addFabOption$fabOption$1$1;
.super Lkotlin/jvm/internal/i;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->addFabOption(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/i;",
        "Lj5/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const-class v3, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;

    .line 3
    .line 4
    const-string v4, "defaultFabOptionOnClickBehavior"

    .line 5
    .line 6
    const-string v5, "defaultFabOptionOnClickBehavior()Z"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/h;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout$addFabOption$fabOption$1$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;

    invoke-static {v0}, Lcom/nambimobile/widgets/efab/ExpandableFabLayout;->access$defaultFabOptionOnClickBehavior(Lcom/nambimobile/widgets/efab/ExpandableFabLayout;)Z

    move-result v0

    return v0
.end method
