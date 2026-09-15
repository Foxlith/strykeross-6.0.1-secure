.class final Lcom/google/android/material/carousel/KeylineState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/KeylineState$Keyline;,
        Lcom/google/android/material/carousel/KeylineState$Builder;
    }
.end annotation


# instance fields
.field private final firstFocalKeylineIndex:I

.field private final itemSize:F

.field private final keylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation
.end field

.field private final lastFocalKeylineIndex:I


# direct methods
.method private constructor <init>(FLjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iput p3, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    iput p4, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return-void
.end method

.method public synthetic constructor <init>(FLjava/util/List;IILcom/google/android/material/carousel/KeylineState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-void
.end method

.method public static lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-static {v4, v5, p2}, Lcom/google/android/material/carousel/KeylineState$Keyline;->lerp(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;F)Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result p1

    invoke-static {v1, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p1

    new-instance p2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result p0

    invoke-direct {p2, p0, v2, v0, p1}, Lcom/google/android/material/carousel/KeylineState;-><init>(FLjava/util/List;II)V

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same number of keylines."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Keylines being linearly interpolated must have the same item size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reverse(Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineState;
    .locals 10

    new-instance v0, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v6, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v6, v3

    add-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v7

    if-lt v2, v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v7

    if-gt v2, v7, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v9, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    invoke-virtual {v0, v6, v8, v9, v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr v1, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method public getFirstFocalKeylineIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->firstFocalKeylineIndex:I

    return v0
.end method

.method public getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method public getItemSize()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->itemSize:F

    return v0
.end method

.method public getKeylines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState$Keyline;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    return-object v0
.end method

.method public getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    iget v1, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method

.method public getLastFocalKeylineIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/carousel/KeylineState;->lastFocalKeylineIndex:I

    return v0
.end method

.method public getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineState;->keylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    return-object v0
.end method
