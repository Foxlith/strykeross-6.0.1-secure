.class public Linet/ipaddr/mac/MACAddressSection;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/AddressSection;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/mac/MACAddressSection$MACStringOptions;,
        Linet/ipaddr/mac/MACAddressSection$MACAddressCache;,
        Linet/ipaddr/mac/MACAddressSection$MACStringCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressDivisionGrouping;",
        "Linet/ipaddr/AddressSection;",
        "Ljava/lang/Iterable<",
        "Linet/ipaddr/mac/MACAddressSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_VALUES:[Ljava/math/BigInteger;

.field private static final MAX_VALUES_LONG:[J

.field private static creators:[[Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final addressSegmentIndex:I

.field public final extended:Z

.field private transient sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation
.end field

.field private transient stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Linet/ipaddr/mac/MACAddressSection;->MAX_VALUES_LONG:[J

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x3

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x7

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v0

    sput-object v2, Linet/ipaddr/mac/MACAddressSection;->MAX_VALUES:[Ljava/math/BigInteger;

    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v1, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    sput-object v0, Linet/ipaddr/mac/MACAddressSection;->creators:[[Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    return-void

    :array_0
    .array-data 8
        0x0
        0xff
        0xffff
        0xffffff
        0xffffffffL
        0xffffffffffL
        0xffffffffffffL
        0xffffffffffffffL
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Linet/ipaddr/mac/MACAddressSection;-><init>(JIZ)V

    return-void
.end method

.method public constructor <init>(JIZ)V
    .locals 8

    .line 2
    const/16 v0, 0x8

    const/4 v1, 0x6

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v2, v2, [Linet/ipaddr/mac/MACAddressSegment;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;Z)V

    if-ltz p3, :cond_4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-gt p3, v0, :cond_4

    if-nez p4, :cond_3

    const-wide v0, 0xffffffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p3, Linet/ipaddr/AddressValueException;

    invoke-direct {p3, p1, p2}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;JJILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    iput p3, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iput-boolean p4, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    return-void

    :cond_4
    new-instance p1, Linet/ipaddr/AddressPositionException;

    invoke-direct {p1, p3}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw p1
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0, v0}, Linet/ipaddr/mac/MACAddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IZ)V
    .locals 11

    .line 5
    const/16 v0, 0x8

    const/4 v1, 0x6

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sub-int/2addr v2, p3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {p0, v2, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;Z)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v4 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSegments([Linet/ipaddr/AddressSegment;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    if-ltz p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-gt p3, v0, :cond_2

    iput p3, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iput-boolean p4, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    return-void

    :cond_2
    new-instance p1, Linet/ipaddr/AddressPositionException;

    invoke-direct {p1, p3}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw p1
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressSegment;)V
    .locals 2

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/mac/MACAddressSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;)V

    iput v1, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iput-boolean v1, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/mac/MACAddressSegment;IZ)V
    .locals 2

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Linet/ipaddr/mac/MACAddressSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-void
.end method

.method public constructor <init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V
    .locals 2

    .line 8
    if-eqz p1, :cond_0

    invoke-virtual {p2}, [Linet/ipaddr/mac/MACAddressSegment;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/format/standard/AddressDivision;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;)V

    iput p3, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iput-boolean p4, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    if-ltz p3, :cond_4

    const/16 p1, 0x8

    const/4 v0, 0x6

    if-eqz p4, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-gt p3, v1, :cond_4

    array-length v1, p2

    add-int/2addr p3, v1

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    if-gt p3, p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Linet/ipaddr/AddressValueException;

    array-length p2, p2

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Linet/ipaddr/AddressValueException;-><init>(J)V

    throw p1

    :cond_4
    new-instance p1, Linet/ipaddr/AddressPositionException;

    invoke-direct {p1, p3}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 9
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIZ)V

    return-void
.end method

.method public constructor <init>([BIIIIZZ)V
    .locals 12

    .line 10
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    const/4 v3, 0x0

    if-ltz p4, :cond_0

    move/from16 v4, p4

    goto :goto_0

    :cond_0
    sub-int v4, p3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    new-array v4, v4, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {p0, v4, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;Z)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, v3

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v4 .. v11}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toSegments([Linet/ipaddr/AddressSegment;[BIIIILinet/ipaddr/AddressNetwork;Ljava/lang/Integer;)[Linet/ipaddr/AddressSegment;

    if-ltz v1, :cond_4

    if-eqz v2, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    :goto_1
    if-gt v1, v4, :cond_4

    iput v1, v0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iput-boolean v2, v0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    move-object v1, p1

    array-length v2, v1

    array-length v3, v3

    if-ne v2, v3, :cond_3

    if-eqz p7, :cond_2

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :cond_2
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->setBytes([B)V

    :cond_3
    return-void

    :cond_4
    new-instance v2, Linet/ipaddr/AddressPositionException;

    invoke-direct {v2, v1}, Linet/ipaddr/AddressPositionException;-><init>(I)V

    throw v2
.end method

.method public constructor <init>([BIIZZ)V
    .locals 8

    .line 11
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIIIZZ)V

    return-void
.end method

.method public constructor <init>([BIZ)V
    .locals 8

    .line 12
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/mac/MACAddressSection;-><init>([BIIIIZZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/mac/MACAddressSegment;)V
    .locals 3

    .line 13
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Linet/ipaddr/mac/MACAddressSection;-><init>([Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/mac/MACAddressSegment;IZ)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;-><init>(Z[Linet/ipaddr/mac/MACAddressSegment;IZ)V

    return-void
.end method

.method public static synthetic A(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$28(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic B(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$25(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$32(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Linet/ipaddr/mac/MACAddressSection;ZI)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$getLowestOrHighestSection$1(ZI)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$6(Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(ZLinet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Linet/ipaddr/mac/MACAddressSection;->lambda$removePrefix$3(ZLinet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Linet/ipaddr/mac/MACAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$27(Linet/ipaddr/mac/MACAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic H(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$21(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$34(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$43(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$42(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$22(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Linet/ipaddr/mac/MACAddressSection;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$increment$46()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic N(Linet/ipaddr/mac/MACAddressSection;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$increment$47()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$9(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$18(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic Q(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$10(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic R(Linet/ipaddr/mac/MACAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$17(Linet/ipaddr/mac/MACAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic S(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$29(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$33(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic U(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$26(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$19(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$13(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic X(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$20(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$41(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$toOUIPrefixBlock$0(Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$14(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Linet/ipaddr/mac/MACAddress;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$37(Linet/ipaddr/mac/MACAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$5(Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private getCountImpl(I)Ljava/math/BigInteger;
    .locals 7

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSegment;->getValueCount()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/mac/MACAddressSegment;->getValueCount()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ne p1, v3, :cond_3

    invoke-virtual {p0, v2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getValueCount()I

    move-result p1

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    const-wide v4, 0x7fffffffffffffL

    cmp-long p1, v0, v4

    if-gtz p1, :cond_2

    mul-long/2addr v0, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private getLongValue(Z)J
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    shl-long/2addr v1, v5

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v4

    :goto_1
    int-to-long v4, v4

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getLowestOrHighestSection(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 5

    invoke-static {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSingleLowestOrHighestSection(Linet/ipaddr/AddressSegmentSeries;)Linet/ipaddr/AddressSegmentSeries;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    if-nez v0, :cond_a

    iget-object v1, p0, Linet/ipaddr/mac/MACAddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :goto_0
    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    goto :goto_1

    :cond_0
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :goto_1
    if-nez v0, :cond_a

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linet/ipaddr/mac/MACAddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    new-instance v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    invoke-direct {v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    iput-object v1, p0, Linet/ipaddr/mac/MACAddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    if-nez v0, :cond_4

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    goto :goto_4

    :cond_5
    iget-object v0, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    if-nez v0, :cond_4

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/mac/h;

    invoke-direct {v1, p0, p1, v2}, Linet/ipaddr/mac/h;-><init>(Linet/ipaddr/mac/MACAddressSection;ZI)V

    invoke-static {p0, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createSingle(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/IntFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    goto :goto_6

    :cond_7
    :goto_5
    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    :goto_6
    if-eqz p1, :cond_8

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_7

    :cond_8
    iget-object p1, p0, Linet/ipaddr/mac/MACAddressSection;->sectionCache:Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    :cond_9
    :goto_7
    monitor-exit p0

    goto :goto_9

    :goto_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_a
    :goto_9
    return-object v0
.end method

.method private static getMaxValue(I)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Linet/ipaddr/mac/MACAddressSection;->MAX_VALUES:[Ljava/math/BigInteger;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getMaxValueLong(I)J
    .locals 3

    sget-object v0, Linet/ipaddr/mac/MACAddressSection;->MAX_VALUES_LONG:[J

    aget-wide v1, v0, p0

    return-wide v1
.end method

.method private getSegmentCreator()Linet/ipaddr/AddressNetwork$AddressSegmentCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$15(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$45(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic j(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$31(Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Linet/ipaddr/mac/MACAddressSection;)[Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsIterator$7()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$12(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getLowestOrHighestSection$1(ZI)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getLower()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->getUpper()Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private synthetic lambda$increment$46()J
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/mac/MACAddressSection;->getMaxValueLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$increment$47()Ljava/math/BigInteger;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/mac/MACAddressSection;->getMaxValue(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$prefixIterator$29(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$30(Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$31(Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$4(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$5(Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$prefixIterator$6(Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;->prefixIterator(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$prefixSpliterator$32(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddress;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$33(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x2

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$34(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$35(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$36(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$37(Linet/ipaddr/mac/MACAddress;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$38(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$prefixSpliterator$39(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddressSection;

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$40(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x3

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$41(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$42(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$43(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->prefixBlockIterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static synthetic lambda$prefixSpliterator$44(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$prefixSpliterator$45(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longPrefixCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$removePrefix$3(ZLinet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    invoke-virtual {p1, p2, p3, p0}, Linet/ipaddr/mac/MACAddressSegment;->setPrefixedSegment(Ljava/lang/Integer;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$reverseBits$2(ZI)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p2

    invoke-virtual {p2, p1}, Linet/ipaddr/mac/MACAddressSegment;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$segmentsIterator$7()[Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegments()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$segmentsIterator$8(I)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSegment;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$segmentsSpliterator$10(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x1

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$11(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$12(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$13(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$segmentsSpliterator$14(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddress;

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$15(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x5

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$16(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->segmentsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$segmentsSpliterator$17(Linet/ipaddr/mac/MACAddress;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$segmentsSpliterator$18(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$segmentsSpliterator$9(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddressSection;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$19(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedSection([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddressSection;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$20(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$spliterator$21(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$22(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$spliterator$23(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$spliterator$24(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    invoke-static {p2, p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object p0

    check-cast p0, Linet/ipaddr/mac/MACAddress;

    return-object p0
.end method

.method private static synthetic lambda$spliterator$25(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 7

    new-instance v1, Linet/ipaddr/mac/f;

    const/4 v0, 0x4

    invoke-direct {v1, p0, p1, v0}, Linet/ipaddr/mac/f;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;I)V

    invoke-interface {p4}, Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;->getAddressItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddress;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    move-object v0, p4

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->split(Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;Ljava/util/function/Function;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;[Linet/ipaddr/AddressSegment;IILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$spliterator$26(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddress;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$spliterator$27(Linet/ipaddr/mac/MACAddress;)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/Address;->getCount()Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$spliterator$28(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    invoke-static {p1, p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->longCount(Linet/ipaddr/AddressSection;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$toOUIPrefixBlock$0(Linet/ipaddr/mac/MACAddressSegment;Linet/ipaddr/mac/MACAddressSegment;Ljava/lang/Integer;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static synthetic m(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$11(ZZLinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$24(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(ILinet/ipaddr/mac/MACAddressSection;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$spliterator$23(ILinet/ipaddr/mac/MACAddressSection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic p(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$4(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private prefixIterator(Z)Ljava/util/Iterator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isSinglePrefixBlock()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v3

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    new-instance v6, Linet/ipaddr/mac/e;

    const/4 v4, 0x3

    invoke-direct {v6, v4, p0}, Linet/ipaddr/mac/e;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    new-instance p1, Linet/ipaddr/mac/i;

    const/4 v4, 0x2

    invoke-direct {p1, p0, v0, v4}, Linet/ipaddr/mac/i;-><init>(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)V

    :goto_1
    move-object v10, p1

    goto :goto_2

    :cond_3
    new-instance p1, Linet/ipaddr/mac/i;

    invoke-direct {p1, p0, v0, v4}, Linet/ipaddr/mac/i;-><init>(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)V

    goto :goto_1

    :goto_2
    move-object v4, v1

    invoke-static/range {v3 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-static {v2, p0, v1, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic q(ILinet/ipaddr/mac/MACAddressSection;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p1, p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsIterator$8(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$40(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;IILinet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;)Z

    move-result p0

    return p0
.end method

.method private removePrefix(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    new-instance v2, Linet/ipaddr/mac/g;

    invoke-direct {v2, p1}, Linet/ipaddr/mac/g;-><init>(Z)V

    invoke-static {p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->removePrefix(Linet/ipaddr/AddressSection;[Linet/ipaddr/AddressSegment;ILinet/ipaddr/format/standard/AddressDivisionGrouping$SegPrefFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object p1
.end method

.method private replace(IILinet/ipaddr/mac/MACAddressSection;IIZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 15

    .line 2
    move-object v9, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    sub-int v1, v10, p1

    sub-int v13, v12, p4

    if-ltz v1, :cond_b

    if-ltz v13, :cond_b

    if-ltz p1, :cond_b

    if-ltz p4, :cond_b

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v2

    if-gt v12, v2, :cond_b

    if-gt v10, v0, :cond_b

    sub-int v14, v13, v1

    add-int v2, v0, v14

    iget v3, v9, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v3, v2

    const/16 v4, 0x8

    if-gt v3, v4, :cond_a

    if-nez v13, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v3, v12, 0x3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v3, p1, 0x3

    if-gt v2, v3, :cond_2

    :cond_0
    return-object v9

    :cond_1
    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v9

    :cond_2
    if-ne v0, v1, :cond_4

    iget v0, v9, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget v1, v11, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    if-ne v0, v1, :cond_4

    iget-boolean v0, v9, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    iget-boolean v1, v11, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-object v11

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v6

    const/4 v8, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->replace(Linet/ipaddr/AddressSection;IILinet/ipaddr/AddressSection;IILinet/ipaddr/format/standard/AddressCreator;ZZ)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    shl-int/lit8 v3, p1, 0x3

    if-nez p6, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    if-gt v4, v5, :cond_6

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v4, p4, 0x3

    sub-int/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v4, v10, 0x3

    if-gt v2, v4, :cond_7

    shl-int/lit8 v1, v13, 0x3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v2, v14, 0x3

    goto :goto_0

    :cond_8
    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v3, v12, 0x3

    if-gt v1, v3, :cond_9

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v3, p4, 0x3

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    :goto_0
    add-int/2addr v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    return-object v0

    :cond_a
    new-instance v0, Linet/ipaddr/AddressValueException;

    iget v1, v9, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v1, v2

    invoke-direct {v0, p0, v11, v1}, Linet/ipaddr/AddressValueException;-><init>(Linet/ipaddr/format/AddressItem;Linet/ipaddr/format/AddressItem;I)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static synthetic s(ILinet/ipaddr/mac/MACAddress;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$38(ILinet/ipaddr/mac/MACAddress;)J

    move-result-wide p0

    return-wide p0
.end method

.method private setPrefixLength(IZZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 9

    .line 7
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v0

    if-le p1, v0, :cond_2

    iget-boolean v1, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    if-gt p1, v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v1

    :goto_3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v4

    if-eqz v3, :cond_5

    move p3, v2

    goto :goto_5

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, p1, :cond_6

    move p3, v1

    goto :goto_4

    :cond_6
    move p3, v2

    :goto_4
    if-nez p3, :cond_7

    if-nez v4, :cond_7

    return-object p0

    :cond_7
    :goto_5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v8

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v5}, [Linet/ipaddr/mac/MACAddressSegment;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Linet/ipaddr/mac/MACAddressSegment;

    new-instance p2, Linet/ipaddr/ipv4/j;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move v1, p1

    move v3, v6

    move v4, v8

    move-object v5, v7

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object p2

    check-cast p2, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {v7, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p2

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object p2

    :cond_8
    if-nez p3, :cond_9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toPrefixBlock()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {v5}, [Linet/ipaddr/mac/MACAddressSegment;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Linet/ipaddr/mac/MACAddressSegment;

    move v3, v2

    :goto_7
    array-length v5, p3

    if-ge v3, v5, :cond_c

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v5, p1, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_a

    const/4 v6, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v8, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v6

    :goto_8
    aget-object v8, p3, v3

    invoke-virtual {v8, v6, v5, p2}, Linet/ipaddr/mac/MACAddressSegment;->setPrefixedSegment(Ljava/lang/Integer;Ljava/lang/Integer;Z)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v6

    aput-object v6, p3, v3

    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    add-int/lit8 v3, v3, 0x1

    array-length v5, p3

    if-ge v3, v5, :cond_b

    const/16 p2, 0xff

    invoke-virtual {v7, v2, p2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p2

    array-length v0, p3

    invoke-static {p3, v3, v0, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_9

    :cond_b
    add-int/2addr v3, v1

    goto :goto_7

    :cond_c
    :goto_9
    invoke-virtual {v7, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p2

    goto :goto_6

    :cond_d
    new-instance p2, Linet/ipaddr/PrefixLenException;

    invoke-direct {p2, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw p2
.end method

.method public static synthetic t(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$44(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p0

    return p0
.end method

.method public static toNormalizedString(Linet/ipaddr/IPAddressSection$IPStringOptions;Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;Linet/ipaddr/format/standard/AddressDivisionGrouping;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Linet/ipaddr/mac/MACAddressSection;->toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toString(Linet/ipaddr/format/string/AddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;",
            ")",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "Linet/ipaddr/format/string/AddressStringDivisionSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$36(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$segmentsSpliterator$16(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Linet/ipaddr/mac/MACAddressSection;ZI)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$reverseBits$2(ZI)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$39(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;[Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixIterator$30(Ljava/lang/Integer;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->lambda$prefixSpliterator$35(ZZLinet/ipaddr/mac/MACAddress;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixBySegment(ZZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixBySegment(ZZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getAdjustedPrefix(ZIZ)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic adjustPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public adjustPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 6
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getAdjustedPrefix(IZZ)I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-direct {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->removePrefix(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public append(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;
    .locals 6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public appendToPrefix(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;
    .locals 8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->append(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x3

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3, p1}, Linet/ipaddr/mac/MACAddressSection;->insert(ILinet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    const/4 v7, 0x1

    move v2, v3

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;IIZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->applyPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic applyPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->applyPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public applyPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public assignPrefixLength(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_3

    iget-boolean v1, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0

    :cond_3
    :goto_1
    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-void

    :cond_4
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Linet/ipaddr/PrefixLenException;-><init>(I)V

    throw v0
.end method

.method public contains(Linet/ipaddr/AddressSection;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->contains(Linet/ipaddr/mac/MACAddressSection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Linet/ipaddr/mac/MACAddressSection;)Z
    .locals 4

    .line 2
    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget v1, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    invoke-virtual {p1, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    invoke-virtual {v1, v3}, Linet/ipaddr/mac/MACAddressSegment;->contains(Linet/ipaddr/mac/MACAddressSegment;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/mac/MACAddressSection;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    iget v1, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget v3, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v1

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, p0}, Linet/ipaddr/mac/MACAddressSection;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget-boolean v1, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 11

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Linet/ipaddr/mac/MACAddressSection;->creators:[[Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    aget-object v2, v2, p2

    aget-object v2, v2, p1

    move v3, p2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move-object v10, v3

    move v3, v2

    move-object v2, v10

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Linet/ipaddr/mac/MACAddressSection$1;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v6

    iget-object v7, v0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->cache:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;

    move-object v4, v2

    move-object v5, p0

    move v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Linet/ipaddr/mac/MACAddressSection$1;-><init>(Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/mac/MACAddressNetwork;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;IZ)V

    if-eqz v1, :cond_3

    sget-object p2, Linet/ipaddr/mac/MACAddressSection;->creators:[[Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    aget-object p2, p2, v3

    aput-object v2, p2, p1

    :cond_3
    return-object v2
.end method

.method public getBitCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getBitsPerSegment()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getBlockCount(I)Ljava/math/BigInteger;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getCountImpl(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getByteCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    return v0
.end method

.method public getBytesImpl(Z)[B
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v3

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getBytesPerSegment()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCountImpl()Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getCountImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/standard/AddressDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getDivision(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getDivision(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method

.method public getDottedGrouping()Linet/ipaddr/format/standard/AddressDivisionGrouping;
    .locals 11

    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/2addr v0, v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    ushr-int/2addr v0, v3

    new-array v0, v0, [Linet/ipaddr/format/standard/AddressDivision;

    move v3, v5

    :goto_0
    move v7, v3

    goto :goto_1

    :cond_0
    ushr-int/lit8 v0, v1, 0x1

    add-int/2addr v0, v3

    new-array v0, v0, [Linet/ipaddr/format/standard/AddressDivision;

    invoke-virtual {p0, v5}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v6

    new-instance v7, Linet/ipaddr/format/standard/AddressBitsDivision;

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v8

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v6

    invoke-direct {v7, v8, v6, v2, v4}, Linet/ipaddr/format/standard/AddressBitsDivision;-><init>(IIII)V

    aput-object v7, v0, v5

    goto :goto_0

    :goto_1
    add-int/lit8 v5, v7, 0x1

    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v7}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v6

    add-int/lit8 v8, v7, 0x2

    invoke-virtual {p0, v5}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v9

    invoke-virtual {v6}, Linet/ipaddr/format/standard/AddressDivision;->isMultiple()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v9}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    add-int/lit8 v1, v7, 0x1

    const-string v10, "ipaddress.error.invalid.joined.ranges"

    move-object v5, v0

    move-object v8, v9

    move v9, v1

    invoke-direct/range {v5 .. v10}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;ILinet/ipaddr/format/AddressItem;ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    new-instance v5, Linet/ipaddr/format/standard/AddressBitsDivision;

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v10

    shl-int/2addr v7, v10

    invoke-virtual {v9}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v6}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v10

    shl-int/2addr v6, v10

    invoke-virtual {v9}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v9

    or-int/2addr v6, v9

    invoke-direct {v5, v7, v6, v2, v4}, Linet/ipaddr/format/standard/AddressBitsDivision;-><init>(IIII)V

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v0, v3

    move v3, v6

    move v7, v8

    goto :goto_1

    :cond_3
    if-ge v7, v1, :cond_4

    invoke-virtual {p0, v7}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    new-instance v5, Linet/ipaddr/format/standard/AddressBitsDivision;

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSegment;->getSegmentValue()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v7

    shl-int/2addr v6, v7

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressSegment;->getUpperSegmentValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v7

    shl-int/2addr v1, v7

    invoke-direct {v5, v6, v1, v2, v4}, Linet/ipaddr/format/standard/AddressBitsDivision;-><init>(IIII)V

    aput-object v5, v0, v3

    :cond_4
    iget-object v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    if-nez v1, :cond_5

    new-instance v1, Linet/ipaddr/format/standard/AddressDivisionGrouping;

    invoke-direct {v1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;)V

    goto :goto_3

    :cond_5
    new-instance v2, Linet/ipaddr/mac/MACAddressSection$2;

    invoke-direct {v2, p0, v0, v1}, Linet/ipaddr/mac/MACAddressSection$2;-><init>(Linet/ipaddr/mac/MACAddressSection;[Linet/ipaddr/format/standard/AddressDivision;Ljava/lang/Integer;)V

    move-object v1, v2

    :goto_3
    return-object v1
.end method

.method public getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;
    .locals 1

    invoke-static {}, Linet/ipaddr/Address;->defaultIpv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getIterable()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLower()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLower()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getLowestOrHighestSection(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getLowestOrHighest(Linet/ipaddr/mac/MACAddress;Z)Linet/ipaddr/mac/MACAddress;
    .locals 6

    invoke-direct {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getLowestOrHighestSection(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p1, Linet/ipaddr/mac/MACAddress;->sectionCache:Linet/ipaddr/mac/MACAddressSection$MACAddressCache;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    :goto_0
    check-cast v1, Linet/ipaddr/mac/MACAddress;

    goto :goto_1

    :cond_1
    iget-object v1, v1, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_0

    :goto_1
    if-nez v1, :cond_9

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Linet/ipaddr/mac/MACAddress;->sectionCache:Linet/ipaddr/mac/MACAddressSection$MACAddressCache;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    move v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    if-eqz v5, :cond_4

    new-instance v2, Linet/ipaddr/mac/MACAddressSection$MACAddressCache;

    invoke-direct {v2}, Linet/ipaddr/mac/MACAddressSection$MACAddressCache;-><init>()V

    iput-object v2, p1, Linet/ipaddr/mac/MACAddress;->sectionCache:Linet/ipaddr/mac/MACAddressSection$MACAddressCache;

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_4
    if-eqz p2, :cond_6

    iget-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    move-object v1, p1

    check-cast v1, Linet/ipaddr/mac/MACAddress;

    if-nez v1, :cond_5

    :goto_4
    move v3, v4

    :cond_5
    move v5, v3

    goto :goto_5

    :cond_6
    iget-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    move-object v1, p1

    check-cast v1, Linet/ipaddr/mac/MACAddress;

    if-nez v1, :cond_5

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    if-eqz p2, :cond_7

    iput-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->lower:Linet/ipaddr/AddressSegmentSeries;

    goto :goto_6

    :cond_7
    iput-object p1, v2, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;->upper:Linet/ipaddr/AddressSegmentSeries;

    :goto_6
    move-object v1, p1

    :cond_8
    monitor-exit p0

    :cond_9
    return-object v1

    :goto_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMaxSegmentValue()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public bridge synthetic getNetwork()Linet/ipaddr/AddressNetwork;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Linet/ipaddr/mac/MACAddressNetwork;
    .locals 1

    .line 2
    invoke-static {}, Linet/ipaddr/Address;->defaultMACNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getODISection()Linet/ipaddr/mac/MACAddressSection;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getOUISegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    iget v2, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v2, v0

    iget-boolean v3, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    invoke-virtual {p0, v2, v3}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v1
.end method

.method public getODISegmentCount()I
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getOUISegmentCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getOUISection()Linet/ipaddr/mac/MACAddressSection;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getOUISegmentCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v0, v0, 0x3

    if-le v3, v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v1
.end method

.method public getOUISegmentCount()I
    .locals 2

    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getPrefixCount(I)Ljava/math/BigInteger;
    .locals 9

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p1, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v2

    invoke-static {p1, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/mac/MACAddressSegment;->getValueCount()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ne v4, v0, :cond_2

    invoke-virtual {p0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSegment;->getPrefixValueCount(I)I

    move-result p1

    int-to-long v0, p1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    const-wide v2, 0x7fffffffffffffL

    cmp-long p1, v5, v2

    if-gtz p1, :cond_1

    mul-long/2addr v5, v0

    goto :goto_1

    :cond_1
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p1
.end method

.method public getPrefixCountImpl()Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixCount(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 4

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMinPrefixLengthForBlock()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-object v1

    :cond_0
    invoke-static {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getSection()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSection()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSection(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSection(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSection(II)Linet/ipaddr/AddressSection;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->getSection(II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection()Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 4
    return-object p0
.end method

.method public getSection(I)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->getSection(II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public getSection(II)Linet/ipaddr/mac/MACAddressSection;
    .locals 3

    .line 6
    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-static {p1, p2, p0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getSection(IILinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shl-int/lit8 v2, p1, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr p2, p1

    shl-int/lit8 p1, p2, 0x3

    if-le v2, p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public bridge synthetic getSegment(I)Linet/ipaddr/AddressSegment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public getSegment(I)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getDivision(I)Linet/ipaddr/format/standard/AddressDivision;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method

.method public getSegmentCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    return v0
.end method

.method public getSegmentStrings()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegments(IILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "-",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSegments(II[Linet/ipaddr/AddressSegment;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSegments(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Linet/ipaddr/mac/MACAddressSection;->getSegments(IILjava/util/Collection;)V

    return-void
.end method

.method public getSegments([Linet/ipaddr/AddressSegment;)V
    .locals 2

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    return-void
.end method

.method public bridge synthetic getSegments()[Linet/ipaddr/AddressSegment;
    .locals 1

    .line 5
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegments()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public getSegments()[Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    invoke-virtual {v0}, [Linet/ipaddr/format/AddressDivisionBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/mac/MACAddressSegment;

    return-object v0
.end method

.method public getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/mac/MACAddressSegment;

    return-object v0
.end method

.method public getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUpper()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public getUpper()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getLowestOrHighestSection(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public hasNoStringCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    invoke-direct {v0}, Linet/ipaddr/mac/MACAddressSection$MACStringCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->increment(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic increment(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->increment(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public increment(J)Linet/ipaddr/mac/MACAddressSection;
    .locals 15

    .line 3
    move-object v13, p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v13

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v8, Linet/ipaddr/mac/d;

    const/4 v0, 0x3

    invoke-direct {v8, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    move-wide/from16 v2, p1

    move-object v4, v9

    invoke-static/range {v2 .. v8}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->checkOverflow(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/util/function/Supplier;)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v6, v11

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v3

    new-instance v4, Linet/ipaddr/mac/d;

    const/4 v0, 0x4

    invoke-direct {v4, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    new-instance v5, Linet/ipaddr/mac/d;

    const/4 v0, 0x5

    invoke-direct {v5, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    move-object v0, p0

    move-wide/from16 v1, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->fastIncrement(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v4

    new-instance v5, Linet/ipaddr/mac/d;

    const/4 v0, 0x6

    invoke-direct {v5, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    new-instance v6, Linet/ipaddr/mac/d;

    const/4 v0, 0x7

    invoke-direct {v6, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v7, v11

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    :goto_1
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object v3, v9

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->increment(Linet/ipaddr/AddressSection;JLjava/math/BigInteger;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    :goto_2
    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    return-object v0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->upperLongValue()J

    move-result-wide v6

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    new-instance v10, Linet/ipaddr/ipv4/n;

    const/4 v0, 0x1

    invoke-direct {v10, p0, v0}, Linet/ipaddr/ipv4/n;-><init>(Linet/ipaddr/format/standard/AddressDivisionGrouping;I)V

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v10}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->checkOverflow(JJJJLjava/util/function/LongSupplier;)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->longValue()J

    move-result-wide v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->upperLongValue()J

    move-result-wide v8

    new-instance v10, Linet/ipaddr/mac/d;

    invoke-direct {v10, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    new-instance v12, Linet/ipaddr/mac/d;

    const/4 v0, 0x2

    invoke-direct {v12, v0, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v14, v11

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    move-object v14, v0

    :goto_4
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object v11, v12

    move-object v12, v14

    invoke-static/range {v0 .. v12}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->increment(Linet/ipaddr/AddressSection;JLinet/ipaddr/format/standard/AddressCreator;JJJLjava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->incrementBoundary(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic incrementBoundary(J)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->incrementBoundary(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public incrementBoundary(J)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->increment(J)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    goto :goto_0
.end method

.method public insert(ILinet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public isEUI64(Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->isEUI64(ZZ)Z

    move-result p1

    return p1
.end method

.method public isEUI64(ZZ)Z
    .locals 7

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    iget v2, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v0, v2

    const/16 v3, 0xfe

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x4

    if-gt v2, v4, :cond_3

    if-le v0, v6, :cond_2

    rsub-int/lit8 p2, v2, 0x3

    invoke-virtual {p0, p2}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p2

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    if-eqz p1, :cond_0

    move v3, v5

    :cond_0
    invoke-virtual {v0, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v5}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-eqz p2, :cond_5

    if-ne v0, v6, :cond_5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1, v5}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    return p1

    :cond_3
    if-eqz p2, :cond_5

    if-ne v2, v6, :cond_5

    if-le v0, v6, :cond_5

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p2

    if-eqz p1, :cond_4

    move v3, v5

    :cond_4
    invoke-virtual {p2, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    return p1

    :cond_5
    return p2

    :cond_6
    return v1
.end method

.method public isEntireAddress(Z)Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/mac/MACAddressSection;->extended:Z

    return v0
.end method

.method public isPrefixed()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-static {v1, p0, v0, v3, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddress;",
            "Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;",
            ")",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->segmentsIterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-static {v0, p1, p2, v2, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public longValue()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getLongValue(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public prefixBlockIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixBlockStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->prefixBlockSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public prefixEquals(Linet/ipaddr/AddressSection;)Z
    .locals 2

    instance-of v0, p1, Linet/ipaddr/mac/MACAddressSection;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    iget v1, p1, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->prefixEquals(Linet/ipaddr/AddressSection;Linet/ipaddr/AddressSection;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public prefixIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->prefixIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixIterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Ljava/util/Iterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddress;",
            "Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;",
            "Z)",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    .line 2
    move-object v0, p0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    move-object v4, p1

    move-object/from16 v5, p2

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isSinglePrefixBlock()Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v5

    invoke-static {v3, v4, v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v12

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v4, p1

    move-object/from16 v5, p2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    new-instance v9, Linet/ipaddr/mac/e;

    const/4 v3, 0x2

    invoke-direct {v9, v3, p0}, Linet/ipaddr/mac/e;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    const/4 v10, 0x0

    new-instance v3, Linet/ipaddr/mac/i;

    if-eqz p3, :cond_3

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Linet/ipaddr/mac/i;-><init>(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)V

    :goto_1
    move-object v13, v3

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v4}, Linet/ipaddr/mac/i;-><init>(Linet/ipaddr/mac/MACAddressSection;Ljava/lang/Integer;I)V

    goto :goto_1

    :goto_2
    move-object/from16 v7, p2

    invoke-static/range {v6 .. v13}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;IILjava/util/function/IntFunction;)Ljava/util/Iterator;

    move-result-object v3

    goto :goto_0

    :goto_3
    invoke-static {v2, p1, v5, v3, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    :goto_4
    invoke-virtual/range {p0 .. p2}, Linet/ipaddr/mac/MACAddressSection;->iterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method public prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddress;",
            "Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;",
            "Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v6, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v1

    invoke-static {v6, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v4

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x2

    move-object v0, v8

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    if-eqz p3, :cond_1

    new-instance v0, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0x18

    invoke-direct {v10, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 v0, 0xa

    invoke-direct {v11, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0x16

    invoke-direct {v12, v6, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->spliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public prefixSpliterator(Z)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitCount()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v3

    invoke-static {v6, v0, v3}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getNetworkSegmentIndex(III)I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-static {v6, v0, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v4

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    const/16 v0, 0x16

    if-eqz p1, :cond_1

    new-instance p1, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x15

    invoke-direct {p1, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    :goto_0
    move-object v9, p1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Linet/ipaddr/ipv6/h;

    invoke-direct {p1, v0}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Linet/ipaddr/ipv6/h;

    const/16 v1, 0x17

    invoke-direct {p1, v1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/google/android/material/color/utilities/o;

    invoke-direct {v10, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 p1, 0x8

    invoke-direct {v11, p1}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 p1, 0x14

    invoke-direct {v12, v6, p1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public prefixStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->prefixSpliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removePrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removePrefixLength(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public removePrefixLength()Linet/ipaddr/mac/MACAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->removePrefix(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILinet/ipaddr/mac/MACAddressSection;II)Linet/ipaddr/mac/MACAddressSection;
    .locals 7

    .line 1
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;IIZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public replace(ILinet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddressSection;
    .locals 7

    .line 3
    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    add-int v3, v0, p1

    const/4 v5, 0x0

    invoke-virtual {p2}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/mac/MACAddressSection;->replace(IILinet/ipaddr/mac/MACAddressSection;II)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressComponent;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reverseBits(Z)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->reverseBits(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public reverseBits(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 3

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    new-instance v1, Linet/ipaddr/mac/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Linet/ipaddr/mac/h;-><init>(Linet/ipaddr/mac/MACAddressSection;ZI)V

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseBits(ZLinet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object p1

    check-cast p1, Linet/ipaddr/mac/MACAddressSection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object p1
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressComponent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytes()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytes()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytes()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytes()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytes()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseSegments()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytesPerSegment()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseBytesPerSegment()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseBytesPerSegment()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseBytesPerSegment()Linet/ipaddr/mac/MACAddressSection;
    .locals 0

    .line 3
    return-object p0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseSegments()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverseSegments()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->reverseSegments()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public reverseSegments()Linet/ipaddr/mac/MACAddressSection;
    .locals 3

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    new-instance v2, Linet/ipaddr/mac/e;

    invoke-direct {v2, v1, p0}, Linet/ipaddr/mac/e;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->reverseSegments(Linet/ipaddr/AddressSection;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/function/IntFunction;Z)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public segmentsIterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-direct {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCreator()Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v2, Linet/ipaddr/mac/d;

    invoke-direct {v2, v3, p0}, Linet/ipaddr/mac/d;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    :goto_0
    new-instance v5, Linet/ipaddr/mac/e;

    invoke-direct {v5, v3, p0}, Linet/ipaddr/mac/e;-><init>(ILinet/ipaddr/mac/MACAddressSection;)V

    invoke-static {v0, v1, v2, v5, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->segmentsIterator(ILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/Supplier;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->withoutPrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    const/4 v2, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p0

    move-object v2, v0

    :goto_0
    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x5

    move-object v0, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/mac/j;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Linet/ipaddr/mac/j;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0x1b

    invoke-direct {v10, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 v0, 0xd

    invoke-direct {v11, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0x19

    invoke-direct {v12, v6, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public segmentsSpliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddress;",
            "Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;",
            ")",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->withoutPrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move-object v7, p1

    move-object v2, v0

    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x4

    move-object v0, v8

    move-object v1, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/ipv6/h;

    const/16 p1, 0x1d

    invoke-direct {v9, p1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 p1, 0x1a

    invoke-direct {v10, p1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 p1, 0xc

    invoke-direct {v11, p1}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 p1, 0x18

    invoke-direct {v12, v6, p1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public segmentsStream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "[",
            "Linet/ipaddr/mac/MACAddressSegment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->segmentsSpliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSection;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(I)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPrefixLength(IZ)Linet/ipaddr/AddressSegmentSeries;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(I)Linet/ipaddr/mac/MACAddressSection;
    .locals 2

    .line 5
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public setPrefixLength(IZ)Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/mac/MACAddressSection;->setPrefixLength(IZZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->withoutPrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, v0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v7, p0

    move-object v2, v0

    :goto_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x1

    move-object v0, v8

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/ipv6/h;

    const/16 v0, 0x18

    invoke-direct {v9, v0}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 v0, 0x17

    invoke-direct {v10, v0}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 v0, 0x9

    invoke-direct {v11, v0}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 v0, 0x15

    invoke-direct {v12, v6, v0}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator(Linet/ipaddr/mac/MACAddress;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/mac/MACAddress;",
            "Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;",
            ")",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "Linet/ipaddr/mac/MACAddress;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v6

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/mac/MACAddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/mac/MACAddress;->withoutPrefixLength()Linet/ipaddr/mac/MACAddress;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move-object v7, p1

    move-object v2, v0

    add-int/lit8 v3, v6, -0x1

    new-instance v8, Linet/ipaddr/mac/c;

    const/4 v5, 0x3

    move-object v0, v8

    move-object v1, p2

    move v4, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/mac/c;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;Ljava/lang/Integer;III)V

    new-instance v9, Linet/ipaddr/ipv6/h;

    const/16 p1, 0x1c

    invoke-direct {v9, p1}, Linet/ipaddr/ipv6/h;-><init>(I)V

    new-instance v10, Lcom/google/android/material/color/utilities/o;

    const/16 p1, 0x19

    invoke-direct {v10, p1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    new-instance v11, Linet/ipaddr/format/util/h;

    const/16 p1, 0xb

    invoke-direct {v11, p1}, Linet/ipaddr/format/util/h;-><init>(I)V

    new-instance v12, Linet/ipaddr/ipv4/v;

    const/16 p1, 0x17

    invoke-direct {v12, v6, p1}, Linet/ipaddr/ipv4/v;-><init>(II)V

    invoke-static/range {v7 .. v12}, Linet/ipaddr/format/AddressDivisionGroupingBase;->createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 4
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Linet/ipaddr/mac/MACAddressSection;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->spliterator()Linet/ipaddr/format/util/AddressComponentSpliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->canonicalParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->canonicalString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toColonDelimitedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCompressedString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->compressedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->compressedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->compressedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toDashedString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toCanonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDottedString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->dottedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getDottedGrouping()Linet/ipaddr/format/standard/AddressDivisionGrouping;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v1

    sget-object v2, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->dottedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-static {v2, v0}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;Linet/ipaddr/format/standard/AddressDivisionGrouping;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->dottedString:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public toEUI64(Z)Linet/ipaddr/mac/MACAddressSection;
    .locals 9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->isExtended()Z

    move-result v1

    const/16 v2, 0xfe

    const/16 v3, 0xff

    const/4 v4, 0x3

    if-nez v1, :cond_5

    iget v1, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v1

    iget v6, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int v7, v6, v0

    if-lt v7, v4, :cond_4

    if-le v6, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v1, v6}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v6

    iget v7, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    const/4 v8, 0x0

    if-ge v7, v4, :cond_1

    rsub-int/lit8 v7, v7, 0x3

    invoke-virtual {p0, v8, v7, v6, v8}, Linet/ipaddr/mac/MACAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    move v8, v7

    :cond_1
    invoke-virtual {v1, v3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    aput-object v3, v6, v8

    add-int/lit8 v7, v8, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v3

    :goto_0
    aput-object v3, v6, v7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    if-le v0, v8, :cond_3

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {p0, v8, v0, v6, v2}, Linet/ipaddr/mac/MACAddressSection;->getSegments(II[Linet/ipaddr/AddressSegment;I)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v2, v8, 0x3

    if-le v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v0

    shl-int/2addr v0, v5

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_3
    iget v0, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    invoke-virtual {v1, v6, v0, v5}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0

    :cond_4
    :goto_1
    return-object p0

    :cond_5
    iget v1, p0, Linet/ipaddr/mac/MACAddressSection;->addressSegmentIndex:I

    add-int/2addr v0, v1

    const-string v5, "ipaddress.mac.error.not.eui.convertible"

    const/4 v6, 0x4

    if-gt v1, v4, :cond_a

    if-le v0, v6, :cond_8

    rsub-int/lit8 v0, v1, 0x3

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    if-eqz p1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v1, v2}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {p1, p0, v5}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p1

    :cond_8
    if-ne v0, v6, :cond_d

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p1

    invoke-virtual {p1, v3}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {p1, p0, v5}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p1

    :cond_a
    if-ne v1, v6, :cond_d

    if-le v0, v6, :cond_d

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v0

    if-eqz p1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {v0, v2}, Linet/ipaddr/mac/MACAddressSegment;->matches(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {p1, p0, v5}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_2
    return-object p0
.end method

.method public toEUI64IPv6()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getIPv6Network()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSection(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toHexString(Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    if-eqz p1, :cond_0

    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/mac/MACAddressSection;->toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexStringPrefixed:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Linet/ipaddr/mac/MACAddressSection;->stringCache:Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    iput-object v0, p1, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringCache;->hexString:Ljava/lang/String;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public toHexString(ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->isDualString()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexPrefixedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    goto :goto_0

    :cond_0
    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    :goto_0
    invoke-static {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;->toParams(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getLower()Linet/ipaddr/mac/MACAddressSection;

    move-result-object p2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getUpper()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->toNormalizedStringRange(Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;Linet/ipaddr/format/string/AddressStringDivisionSeries;Linet/ipaddr/format/string/AddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexPrefixedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    goto :goto_1

    :cond_2
    sget-object p1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->hexParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    :goto_1
    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toNormalizedString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->normalizedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->normalizedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->normalizedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p1, p0}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;Linet/ipaddr/format/standard/AddressDivisionGrouping;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toOUIPrefixBlock()Linet/ipaddr/mac/MACAddressSection;
    .locals 14

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getOUISegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentCount()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    shl-int/lit8 v3, v0, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getSegment(I)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v4, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v7

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegments()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v9

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v10

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v11

    new-instance v13, Linet/ipaddr/ipv4/g0;

    const/4 v2, 0x3

    invoke-direct {v13, v2, v1}, Linet/ipaddr/ipv4/g0;-><init>(ILjava/io/Serializable;)V

    move v8, v3

    move-object v12, v0

    invoke-static/range {v7 .. v13}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v0

    :cond_4
    return-object p0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toPrefixBlock()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toPrefixBlock()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toPrefixBlock()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public toPrefixBlock()Linet/ipaddr/mac/MACAddressSection;
    .locals 9

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBitsPerSegment()I

    move-result v4

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getBytesPerSegment()I

    move-result v5

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getSegmentsInternal()[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v5, v4}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getHostSegmentIndex(III)I

    move-result v2

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v3

    aget-object v6, v1, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Linet/ipaddr/mac/MACAddressSegment;->isPrefixBlock(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v8

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, [Linet/ipaddr/mac/MACAddressSegment;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Linet/ipaddr/mac/MACAddressSegment;

    new-instance v7, Linet/ipaddr/ipv4/j;

    const/16 v1, 0xd

    invoke-direct {v7, v1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    move-object v1, v2

    move v2, v3

    move-object v3, v6

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->setPrefixedSegments(Linet/ipaddr/AddressNetwork;I[Linet/ipaddr/AddressSegment;IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/util/function/BiFunction;)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    check-cast v1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {v8, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v1

    invoke-virtual {v1, v0}, Linet/ipaddr/mac/MACAddressSection;->assignPrefixLength(Ljava/lang/Integer;)V

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public toSpaceDelimitedString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->hasNoStringCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->spaceDelimitedString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->getStringCache()Linet/ipaddr/mac/MACAddressSection$MACStringCache;

    move-result-object v0

    sget-object v1, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->spaceDelimitedParams:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

    invoke-virtual {p0, v1}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/mac/MACAddressSection$MACStringCache;->spaceDelimitedString:Ljava/lang/String;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->toNormalizedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperLongValue()J
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->getLongValue(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->withoutPrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withoutPrefixLength()Linet/ipaddr/AddressSegmentSeries;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection;->withoutPrefixLength()Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method

.method public withoutPrefixLength()Linet/ipaddr/mac/MACAddressSection;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linet/ipaddr/mac/MACAddressSection;->removePrefixLength(Z)Linet/ipaddr/mac/MACAddressSection;

    move-result-object v0

    return-object v0
.end method
