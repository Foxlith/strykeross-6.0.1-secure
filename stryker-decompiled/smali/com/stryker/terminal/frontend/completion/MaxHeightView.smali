.class public final Lcom/stryker/terminal/frontend/completion/MaxHeightView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final getMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    if-lez v0, :cond_6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    if-gt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    if-gt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    :cond_3
    :goto_1
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    iget v1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    if-gt p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move p2, v1

    :cond_5
    :goto_2
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/stryker/terminal/frontend/completion/MaxHeightView;->maxHeight:I

    return-void
.end method
