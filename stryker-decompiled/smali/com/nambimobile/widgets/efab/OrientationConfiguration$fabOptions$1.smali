.class public final Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/OrientationConfiguration;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/nambimobile/widgets/efab/FabOption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nambimobile/widgets/efab/OrientationConfiguration;


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/OrientationConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->this$0:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge contains(Lcom/nambimobile/widgets/efab/FabOption;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/FabOption;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->contains(Lcom/nambimobile/widgets/efab/FabOption;)Z

    move-result p1

    return p1
.end method

.method public bridge getSize()I
    .locals 1

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/nambimobile/widgets/efab/FabOption;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/FabOption;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->indexOf(Lcom/nambimobile/widgets/efab/FabOption;)I

    move-result p1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/nambimobile/widgets/efab/FabOption;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/FabOption;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->lastIndexOf(Lcom/nambimobile/widgets/efab/FabOption;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(I)Lcom/nambimobile/widgets/efab/FabOption;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->removeAt(I)Lcom/nambimobile/widgets/efab/FabOption;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->remove(I)Lcom/nambimobile/widgets/efab/FabOption;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/nambimobile/widgets/efab/FabOption;)Z
    .locals 5

    .line 3
    const-string v0, "element"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-static {p1, v3}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lv1/f;->V()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return v1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/nambimobile/widgets/efab/FabOption;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {p0, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->remove(Lcom/nambimobile/widgets/efab/FabOption;)Z

    move-result p1

    return p1
.end method

.method public removeAt(I)Lcom/nambimobile/widgets/efab/FabOption;
    .locals 4

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "super.removeAt(index)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->this$0:Lcom/nambimobile/widgets/efab/OrientationConfiguration;

    check-cast v0, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->size()I

    move-result v2

    if-ne p1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "this[index - 1]"

    :goto_0
    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-virtual {v1, v2, p1}, Lcom/nambimobile/widgets/efab/OrientationConfiguration;->setFabOptionAnchor$expandable_fab_release(Lcom/nambimobile/widgets/efab/FabOption;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "this[index]"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/nambimobile/widgets/efab/FabOption;->getLabel()Lcom/nambimobile/widgets/efab/Label;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lcom/nambimobile/widgets/efab/OrientationConfiguration$fabOptions$1;->getSize()I

    move-result v0

    return v0
.end method
