.class Linet/ipaddr/IPAddressSection$SeriesStack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeriesStack"
.end annotation


# instance fields
.field capacity:I

.field currentSegment:I

.field indexPairs:[I

.field lower:Linet/ipaddr/IPAddressSegmentSeries;

.field previousSegmentBits:I

.field seriesPairs:[Linet/ipaddr/IPAddressSegmentSeries;

.field stackSize:I

.field top:I

.field upper:Linet/ipaddr/IPAddressSegmentSeries;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->capacity:I

    return-void
.end method


# virtual methods
.method public pop()Z
    .locals 5

    iget v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->seriesPairs:[Linet/ipaddr/IPAddressSegmentSeries;

    iget-object v2, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->indexPairs:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    iput v4, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->currentSegment:I

    aget-object v3, v1, v3

    iput-object v3, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->upper:Linet/ipaddr/IPAddressSegmentSeries;

    add-int/lit8 v0, v0, -0x2

    aget v2, v2, v0

    iput v2, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->previousSegmentBits:I

    aget-object v1, v1, v0

    iput-object v1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->lower:Linet/ipaddr/IPAddressSegmentSeries;

    iput v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    const/4 v0, 0x1

    return v0
.end method

.method public push(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;II)V
    .locals 3

    iget v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    iget v1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->stackSize:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSection$SeriesStack;->resize()V

    :cond_0
    iget-object v1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->seriesPairs:[Linet/ipaddr/IPAddressSegmentSeries;

    iget-object v2, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->indexPairs:[I

    aput-object p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    aput p3, v2, v0

    aput-object p2, v1, p1

    add-int/lit8 v0, v0, 0x2

    aput p4, v2, p1

    iput v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    return-void
.end method

.method public resize()V
    .locals 6

    iget v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->stackSize:I

    if-nez v0, :cond_0

    iget v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->capacity:I

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    new-array v1, v0, [Linet/ipaddr/IPAddressSegmentSeries;

    new-array v2, v0, [I

    iget v3, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    if-lez v3, :cond_1

    iget-object v4, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->seriesPairs:[Linet/ipaddr/IPAddressSegmentSeries;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->indexPairs:[I

    iget v4, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->top:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->seriesPairs:[Linet/ipaddr/IPAddressSegmentSeries;

    iput-object v2, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->indexPairs:[I

    iput v0, p0, Linet/ipaddr/IPAddressSection$SeriesStack;->stackSize:I

    return-void
.end method
