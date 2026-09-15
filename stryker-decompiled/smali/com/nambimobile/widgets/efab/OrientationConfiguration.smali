.class public final Lcom/nambimobile/widgets/efab/OrientationConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private efab:Lcom/nambimobile/widgets/efab/ExpandableFab;

.field private fabOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nambimobile/widgets/efab/FabOption;",
            ">;"
        }
    .end annotation
.end field

.field private overlay:Lcom/nambimobile/widgets/efab/Overlay;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;

    invoke-direct {v0, p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;-><init>(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)V

    iput-object v0, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->fabOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->efab:Lcom/nambimobile/widgets/efab/ExpandableFab;

    return-object v0
.end method

.method public final getFabOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nambimobile/widgets/efab/FabOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->fabOptions:Ljava/util/List;

    return-object v0
.end method

.method public final getOverlay()Lcom/nambimobile/widgets/efab/Overlay;
    .locals 1

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->overlay:Lcom/nambimobile/widgets/efab/Overlay;

    return-object v0
.end method

.method public final synthetic setEfab$expandable_fab_release(Lcom/nambimobile/widgets/efab/ExpandableFab;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->efab:Lcom/nambimobile/widgets/efab/ExpandableFab;

    return-void
.end method

.method public final setFabOptionAnchor$expandable_fab_release(Lcom/nambimobile/widgets/efab/FabOption;I)V
    .locals 3

    .line 1
    const-string v0, "fabOption"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->fabOptions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-le v0, p2, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    check-cast v0, Landroidx/coordinatorlayout/widget/f;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :goto_0
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/f;->l:Landroid/view/View;

    .line 37
    .line 38
    iput-object v1, v0, Landroidx/coordinatorlayout/widget/f;->k:Landroid/view/View;

    .line 39
    .line 40
    iput p2, v0, Landroidx/coordinatorlayout/widget/f;->f:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getFabOptions()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    add-int/lit8 p2, p2, -0x1

    .line 48
    .line 49
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/nambimobile/widgets/efab/FabOption;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->getEfab()Lcom/nambimobile/widgets/efab/ExpandableFab;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-nez p2, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/ExpandableFab;->getFabOptionPosition()Lcom/nambimobile/widgets/efab/FabOptionPosition;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lcom/nambimobile/widgets/efab/FabOptionPosition;->getValue()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, v0, Landroidx/coordinatorlayout/widget/f;->d:I

    .line 76
    .line 77
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string p2, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_4
    :goto_3
    return-void
.end method

.method public final synthetic setFabOptions$expandable_fab_release(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->fabOptions:Ljava/util/List;

    return-void
.end method

.method public final synthetic setOverlay$expandable_fab_release(Lcom/nambimobile/widgets/efab/Overlay;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->overlay:Lcom/nambimobile/widgets/efab/Overlay;

    return-void
.end method
