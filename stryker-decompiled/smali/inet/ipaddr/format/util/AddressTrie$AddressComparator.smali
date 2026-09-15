.class public Linet/ipaddr/format/util/AddressTrie$AddressComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/Address;->getSegmentCount()I

    move-result v1

    invoke-interface {p1}, Linet/ipaddr/AddressSegmentSeries;->getBitsPerSegment()I

    move-result v2

    rsub-int/lit8 v3, v2, 0x20

    move v4, v0

    move v5, v4

    :goto_0
    invoke-interface {p1, v4}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v6

    invoke-interface {p2, v4}, Linet/ipaddr/AddressSegmentSeries;->getSegment(I)Linet/ipaddr/AddressSegment;

    move-result-object v7

    invoke-static {p1, v5, v6}, Linet/ipaddr/format/util/AddressTrie;->access$000(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2, v5, v7}, Linet/ipaddr/format/util/AddressTrie;->access$000(Linet/ipaddr/AddressSegmentSeries;ILinet/ipaddr/AddressSegment;)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v9, v8, :cond_4

    invoke-static {v6, v7, v9, v3}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result p1

    if-lt p1, v9, :cond_3

    if-ne v9, v8, :cond_1

    return v0

    :cond_1
    invoke-interface {v6, v9}, Linet/ipaddr/AddressSegment;->isOneBit(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move v10, v11

    :cond_2
    return v10

    :cond_3
    :goto_1
    invoke-interface {v6}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p1

    invoke-interface {v7}, Linet/ipaddr/AddressSegment;->getSegmentValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_4
    invoke-static {v6, v7, v8, v3}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v9

    if-lt v9, v8, :cond_3

    if-ge v8, v2, :cond_6

    invoke-interface {v7, v8}, Linet/ipaddr/AddressSegment;->isOneBit(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v10, v11

    :goto_2
    return v10

    :cond_6
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_c

    return v11

    :cond_7
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8, v3}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v12, v9, :cond_3

    if-ge v8, v2, :cond_9

    invoke-interface {v6, v8}, Linet/ipaddr/AddressSegment;->isOneBit(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move v10, v11

    :cond_8
    return v10

    :cond_9
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_c

    return v10

    :cond_a
    invoke-static {v6, v7, v2, v3}, Linet/ipaddr/format/util/AddressTrie;->access$100(Linet/ipaddr/AddressSegment;Linet/ipaddr/AddressSegment;II)I

    move-result v8

    if-ge v8, v2, :cond_b

    goto :goto_1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v1, :cond_c

    return v0

    :cond_c
    add-int/2addr v5, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/Address;

    check-cast p2, Linet/ipaddr/Address;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/format/util/AddressTrie$AddressComparator;->compare(Linet/ipaddr/Address;Linet/ipaddr/Address;)I

    move-result p1

    return p1
.end method
