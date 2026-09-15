.class public final Lcom/stryker/terminal/ui/customize/ColorItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;


# instance fields
.field private colorName:Ljava/lang/String;

.field private colorType:I

.field private colorValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "colorValue"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    iput-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorValue:Ljava/lang/String;

    sget-object p1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$array;->color_item_names:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    add-int/lit8 p2, p2, 0x3

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getColorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorType()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    return v0
.end method

.method public final getColorValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public isContentTheSameAs(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->isSameModelAs(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSameModelAs(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/stryker/terminal/ui/customize/ColorItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stryker/terminal/ui/customize/ColorItem;

    iget-object v0, p1, Lcom/stryker/terminal/ui/customize/ColorItem;->colorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorName:Ljava/lang/String;

    invoke-static {v0, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/stryker/terminal/ui/customize/ColorItem;->colorValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorValue:Ljava/lang/String;

    invoke-static {v0, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    iget v0, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final setColorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorName:Ljava/lang/String;

    return-void
.end method

.method public final setColorType(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorType:I

    return-void
.end method

.method public final setColorValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItem;->colorValue:Ljava/lang/String;

    return-void
.end method
