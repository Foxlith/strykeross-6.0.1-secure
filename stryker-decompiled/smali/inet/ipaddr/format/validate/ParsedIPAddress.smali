.class public Linet/ipaddr/format/validate/ParsedIPAddress;
.super Linet/ipaddr/format/validate/IPAddressParseData;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/IPAddressProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$Masker;,
        Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;,
        Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;,
        Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;,
        Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;,
        Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
    }
.end annotation


# static fields
.field private static final DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

.field private static final DEFAULT_NON_SEQUENTIAL_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

.field private static final DEFAULT_NON_SEQUENTIAL_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

.field private static final DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

.field private static final EXTENDED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

.field private static final EXTENDED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

.field private static final FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

.field private static final FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

.field private static final HIGH_BIT:Ljava/math/BigInteger;

.field private static final HOST_MASK_EXTENDED:[Ljava/math/BigInteger;

.field private static final NETWORK_MASK_EXTENDED:[Ljava/math/BigInteger;

.field private static final ONE_EXTENDED:Ljava/math/BigInteger;

.field private static final ONE_SHIFTED:[Ljava/math/BigInteger;

.field private static final ONE_SHIFTED_EXTENDED:[Ljava/math/BigInteger;

.field private static final SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

.field private static final SEQUENTIAL_FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

.field private static final WRAPPED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

.field private static final WRAPPED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

.field private mixedMaskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

.field private final options:Linet/ipaddr/IPAddressStringParameters;

.field private final originator:Linet/ipaddr/HostIdentifierString;

.field private skipContains:Ljava/lang/Boolean;

.field private values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;-><init>(Z)V

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_NON_SEQUENTIAL_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    const/16 v0, 0x81

    new-array v3, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    new-array v0, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    const/16 v0, 0x41

    new-array v3, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->WRAPPED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    new-array v3, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->WRAPPED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    new-array v3, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    new-array v3, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    new-instance v3, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    invoke-direct {v3, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;-><init>(Z)V

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    new-instance v3, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    invoke-direct {v3, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;-><init>(Z)V

    sput-object v3, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_NON_SEQUENTIAL_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    new-array v2, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    sput-object v2, Linet/ipaddr/format/validate/ParsedIPAddress;->FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    new-array v0, v0, [Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->SEQUENTIAL_FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x9

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_EXTENDED:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->HIGH_BIT:Ljava/math/BigInteger;

    const/16 v0, 0x40

    new-array v1, v0, [Ljava/math/BigInteger;

    sput-object v1, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_SHIFTED:[Ljava/math/BigInteger;

    new-array v1, v0, [Ljava/math/BigInteger;

    sput-object v1, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_SHIFTED_EXTENDED:[Ljava/math/BigInteger;

    new-array v1, v0, [Ljava/math/BigInteger;

    sput-object v1, Linet/ipaddr/format/validate/ParsedIPAddress;->NETWORK_MASK_EXTENDED:[Ljava/math/BigInteger;

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->HOST_MASK_EXTENDED:[Ljava/math/BigInteger;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/IPAddressParseData;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->options:Linet/ipaddr/IPAddressStringParameters;

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->originator:Linet/ipaddr/HostIdentifierString;

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$1(ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$000(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->originator:Linet/ipaddr/HostIdentifierString;

    return-object p0
.end method

.method public static synthetic access$1200(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getIPv6AddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getIPv4AddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object p0

    return-object p0
.end method

.method private static allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">([TS;[TS;",
            "Linet/ipaddr/AddressNetwork$AddressSegmentCreator<",
            "TS;>;II)[TS;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-interface {p2, p3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object p0

    check-cast p0, [Linet/ipaddr/IPAddressSegment;

    if-lez p4, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public static bitwiseOrRange(JJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;
    .locals 8

    .line 1
    const-wide/16 v6, -0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedIPAddress;->bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    move-result-object p0

    return-object p0
.end method

.method public static bitwiseOrRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;
    .locals 15

    .line 2
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    return-object v0

    :cond_0
    if-gtz v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_10

    cmp-long v2, p4, p6

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    xor-long v2, p0, p2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_f

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    const-wide/16 v6, -0x1

    ushr-long v8, v6, v2

    and-long v10, p4, v8

    cmp-long v3, v10, v8

    if-eqz v3, :cond_f

    not-long v10, v10

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    const/16 v8, 0x3f

    if-ne v3, v8, :cond_2

    move-wide v9, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v3, 0x1

    ushr-long v9, v6, v9

    :goto_0
    and-long v11, p4, v9

    cmp-long v11, v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v11, :cond_3

    move v11, v13

    goto :goto_1

    :cond_3
    move v11, v12

    :goto_1
    cmp-long v14, p6, v6

    if-nez v14, :cond_5

    if-eqz v11, :cond_4

    if-le v3, v2, :cond_5

    :cond_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v14

    ushr-long/2addr v6, v14

    goto :goto_2

    :cond_5
    move-wide/from16 v6, p6

    :goto_2
    cmp-long v14, p0, v0

    if-nez v14, :cond_7

    cmp-long v6, p2, v6

    if-nez v6, :cond_7

    if-eqz v11, :cond_6

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    return-object v0

    :cond_6
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_NON_SEQUENTIAL_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    return-object v0

    :cond_7
    if-le v3, v2, :cond_b

    if-eqz v11, :cond_8

    if-ge v3, v8, :cond_8

    sub-long v0, p2, p0

    add-long/2addr v0, v4

    rsub-int/lit8 v2, v3, 0x40

    shl-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    move v12, v11

    :goto_3
    if-eqz v12, :cond_9

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->SEQUENTIAL_FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    goto :goto_4

    :cond_9
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->FULL_RANGE_OR_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    :goto_4
    aget-object v1, v0, v3

    if-nez v1, :cond_a

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;

    invoke-direct {v1, v3, v12}, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeBitwiseOrer;-><init>(IZ)V

    aput-object v1, v0, v3

    :cond_a
    return-object v1

    :cond_b
    if-nez v11, :cond_f

    not-long v6, v9

    and-long v6, p2, v6

    or-long/2addr v9, p0

    add-int/2addr v3, v13

    sub-int/2addr v8, v3

    shl-long v2, v4, v8

    :goto_5
    cmp-long v4, v2, v0

    if-eqz v4, :cond_e

    and-long v4, p4, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_d

    or-long v4, v6, v2

    cmp-long v8, v4, p2

    if-gtz v8, :cond_c

    move-wide v6, v4

    :cond_c
    not-long v4, v2

    and-long/2addr v4, v9

    cmp-long v8, v4, p0

    if-ltz v8, :cond_d

    move-wide v9, v4

    :cond_d
    ushr-long/2addr v2, v13

    goto :goto_5

    :cond_e
    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;

    invoke-direct {v0, v9, v10, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;-><init>(JJ)V

    return-object v0

    :cond_f
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    return-object v0

    :cond_10
    :goto_6
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_OR_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value > upper value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cacheSegmentMask(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static checkExpandedValues(Linet/ipaddr/IPAddressSection;II)Z
    .locals 3

    if-eqz p0, :cond_3

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressSection;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v2}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_1
    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->isMultiple()Z

    move-result v0

    :cond_2
    if-lt p1, p2, :cond_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private contains(Linet/ipaddr/format/validate/ParsedIPAddress;ZZ)Ljava/lang/Boolean;
    .locals 33

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v3

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v4

    invoke-virtual {v3}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v0

    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_1
    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v1, v0

    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_3
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_4
    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v2

    invoke-virtual {v3}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv4()Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v7

    const/16 v8, 0xff

    const/4 v13, 0x4

    move v15, v9

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v7

    invoke-virtual {v7}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v7

    if-ne v9, v2, :cond_6

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    :goto_0
    if-ne v9, v3, :cond_7

    const/4 v13, 0x1

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    const v14, 0xffff

    const/16 v15, 0x10

    const/4 v11, 0x2

    move/from16 v32, v9

    move v9, v8

    move v8, v14

    move v14, v13

    move/from16 v13, v32

    :goto_2
    invoke-virtual {v7}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v18

    invoke-virtual/range {v17 .. v17}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v6

    if-nez v12, :cond_8

    add-int/lit8 v20, v13, -0x1

    move/from16 v23, v3

    move/from16 v21, v9

    move v10, v13

    move/from16 v22, v14

    move/from16 v3, v20

    const/4 v9, 0x0

    const/16 v19, 0x0

    :goto_3
    move v14, v10

    goto :goto_7

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10, v11, v15}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result v10

    move/from16 v21, v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v11, v15}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result v9

    move/from16 v23, v3

    move v3, v9

    move-object/from16 v19, v12

    move/from16 v22, v14

    :goto_4
    move/from16 v9, p2

    goto :goto_3

    :cond_9
    move/from16 v21, v9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v11, v15}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v11, v15}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result v9

    if-nez v17, :cond_b

    if-eqz v18, :cond_a

    invoke-virtual {v0, v12, v7, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->isPrefixSubnet(Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;[I)Z

    move-result v22

    if-eqz v22, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v23, v3

    move v3, v9

    move v10, v13

    move/from16 v22, v14

    const/16 v19, 0x0

    goto :goto_4

    :cond_b
    :goto_5
    move/from16 v23, v3

    move v3, v9

    move/from16 v22, v14

    if-nez p3, :cond_c

    const/4 v9, 0x1

    const/16 v19, 0x0

    :goto_6
    move v14, v10

    move v10, v13

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    move/from16 v9, p2

    goto :goto_6

    :goto_7
    move/from16 v24, v13

    if-eqz v6, :cond_f

    if-eqz v19, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v13, v0, :cond_f

    :cond_d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v11, v15}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getHostSegmentIndex(III)I

    move-result v0

    if-ge v0, v10, :cond_10

    if-nez v17, :cond_e

    if-eqz v18, :cond_10

    invoke-virtual {v1, v6, v7, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->isPrefixSubnet(Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;[I)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_e
    move v10, v0

    goto :goto_8

    :cond_f
    move-object/from16 v6, v19

    :cond_10
    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_9
    if-lt v11, v2, :cond_11

    if-lez v16, :cond_12

    :cond_11
    if-eqz v9, :cond_13

    if-le v0, v3, :cond_13

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_13
    move/from16 v17, v3

    const/16 v3, 0xa

    const-wide/16 v25, 0x0

    move/from16 p2, v9

    if-lez v16, :cond_14

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    goto :goto_a

    :cond_14
    const/4 v9, 0x2

    invoke-static {v11, v9, v4}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide v27

    invoke-static {v11, v3, v4}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide v29

    :goto_a
    if-lt v0, v14, :cond_15

    invoke-static {v15, v12, v0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v3

    move/from16 v31, v2

    int-to-long v2, v3

    and-long v27, v27, v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Linet/ipaddr/IPAddressNetwork;->getSegmentHostMask(I)I

    move-result v2

    int-to-long v2, v2

    or-long v29, v29, v2

    goto :goto_b

    :cond_15
    move/from16 v31, v2

    :goto_b
    if-le v0, v10, :cond_16

    int-to-long v2, v8

    move/from16 v18, v1

    goto :goto_d

    :cond_16
    if-lez v13, :cond_17

    move-wide/from16 v19, v25

    const/4 v2, 0x2

    goto :goto_c

    :cond_17
    const/4 v2, 0x2

    invoke-static {v1, v2, v5}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide v25

    const/16 v3, 0xa

    invoke-static {v1, v3, v5}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide v19

    :goto_c
    if-ne v0, v10, :cond_18

    invoke-static {v15, v6, v0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Linet/ipaddr/IPAddressNetwork;->getSegmentNetworkMask(I)I

    move-result v9

    move/from16 v18, v1

    int-to-long v1, v9

    and-long v25, v25, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Linet/ipaddr/IPAddressNetwork;->getSegmentHostMask(I)I

    move-result v1

    int-to-long v1, v1

    or-long v2, v19, v1

    goto :goto_d

    :cond_18
    move/from16 v18, v1

    move-wide/from16 v2, v19

    :goto_d
    cmp-long v1, v27, v25

    if-eqz p3, :cond_1a

    if-nez v1, :cond_19

    cmp-long v1, v29, v2

    if-eqz v1, :cond_1b

    :cond_19
    :goto_e
    move-object/from16 v1, p0

    goto :goto_11

    :cond_1a
    if-gtz v1, :cond_19

    cmp-long v1, v29, v2

    if-gez v1, :cond_1b

    goto :goto_e

    :cond_1b
    if-nez v21, :cond_1e

    if-lez v16, :cond_1d

    add-int/lit8 v16, v16, -0x1

    if-nez v16, :cond_1c

    const/16 v21, 0x1

    :cond_1c
    move-object/from16 v1, p0

    goto :goto_f

    :cond_1d
    move-object/from16 v1, p0

    invoke-virtual {v1, v11, v4}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed(I[I)Z

    move-result v2

    add-int/lit8 v11, v11, 0x1

    if-eqz v2, :cond_1f

    sub-int v2, v24, v31

    move/from16 v16, v2

    goto :goto_f

    :cond_1e
    move-object/from16 v1, p0

    add-int/lit8 v11, v11, 0x1

    :cond_1f
    :goto_f
    if-nez v22, :cond_21

    if-lez v13, :cond_20

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, p1

    move/from16 v3, v18

    if-nez v13, :cond_22

    const/16 v22, 0x1

    goto :goto_10

    :cond_20
    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v2, v3, v5}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed(I[I)Z

    move-result v9

    add-int/lit8 v3, v3, 0x1

    if-eqz v9, :cond_22

    sub-int v13, v24, v23

    goto :goto_10

    :cond_21
    move-object/from16 v2, p1

    move/from16 v3, v18

    add-int/lit8 v3, v3, 0x1

    :cond_22
    :goto_10
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p2

    move v1, v3

    move/from16 v3, v17

    move/from16 v2, v31

    goto/16 :goto_9

    :goto_11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_12
    return-object v0
.end method

.method public static createAllAddress(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p0 .. p0}, Linet/ipaddr/IPAddress;->getSegmentCount(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    move-object v12, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v12, :cond_1

    move v13, v1

    goto :goto_1

    :cond_1
    move v13, v0

    :goto_1
    invoke-static/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v15

    invoke-virtual {v15, v10}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    move v5, v0

    :goto_2
    if-ge v5, v10, :cond_3

    if-eqz v13, :cond_2

    invoke-interface {v12, v5}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->cacheSegmentMask(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v5, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(ILinet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move v3, v5

    move/from16 v17, v5

    move-object/from16 v5, v16

    move-object v11, v6

    move-object v6, v15

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->createFullRangeSegment(Linet/ipaddr/IPAddress$IPVersion;IIILjava/lang/Integer;Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v11, v17

    add-int/lit8 v5, v17, 0x1

    move-object v6, v11

    goto :goto_2

    :cond_3
    move-object v11, v6

    invoke-virtual {v15, v11, v9, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal([Linet/ipaddr/AddressSegment;Linet/ipaddr/HostIdentifierString;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object v0

    :goto_4
    check-cast v0, Linet/ipaddr/IPAddress;

    return-object v0

    :cond_4
    invoke-virtual/range {p3 .. p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v11

    invoke-virtual {v11, v10}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/AddressSegment;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    move v6, v0

    :goto_5
    if-ge v6, v10, :cond_6

    if-eqz v13, :cond_5

    invoke-interface {v12, v6}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->cacheSegmentMask(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    const/4 v1, 0x0

    const v2, 0xffff

    invoke-static {v6, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(ILinet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move v3, v6

    move/from16 v17, v6

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->createFullRangeSegment(Linet/ipaddr/IPAddress$IPVersion;IIILjava/lang/Integer;Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v15, v17

    add-int/lit8 v6, v17, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v11, v15, v0, v9, v14}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal([Linet/ipaddr/AddressSegment;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object v0

    goto :goto_4
.end method

.method private static createFullRangeSegment(Linet/ipaddr/IPAddress$IPVersion;IIILjava/lang/Integer;Ljava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Linet/ipaddr/IPAddress$IPVersion;",
            "III",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "***TS;>;)TS;"
        }
    .end annotation

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v1, p1

    int-to-long v9, v1

    move/from16 v2, p2

    int-to-long v11, v2

    int-to-long v13, v0

    invoke-virtual/range {p6 .. p6}, Linet/ipaddr/format/validate/ParsedAddressCreator;->getMaxValuePerSegment()I

    move-result v0

    int-to-long v7, v0

    move-wide v1, v9

    move-wide v3, v11

    move-wide v5, v13

    invoke-static/range {v1 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v9, v10, v13, v14}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v11, v12, v13, v14}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v18, v0

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v8, "ipaddress.error.maskMismatch"

    move-object v1, v0

    move-wide v2, v9

    move-wide v4, v11

    move-wide v6, v13

    invoke-direct/range {v1 .. v8}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    throw v0

    :cond_1
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v17, v1

    move/from16 v18, v2

    :goto_0
    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    move/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p6

    invoke-static/range {v15 .. v23}, Linet/ipaddr/format/validate/ParsedIPAddress;->createRangeSeg(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZLinet/ipaddr/format/validate/AddressParseData;ILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method

.method private createIPv4Addresses(ZZZ)V
    .locals 57

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v12}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move-object v13, v0

    :goto_0
    if-eqz v13, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v7

    if-eqz v15, :cond_2

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    if-nez v0, :cond_2

    new-array v0, v7, [Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    iput-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    :cond_2
    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getIPv4AddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v6

    rsub-int/lit8 v5, v7, 0x4

    const/4 v4, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {v6, v4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    move-object v3, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_41

    invoke-virtual {v6, v4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    iget-object v1, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-nez v1, :cond_4

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$1;

    invoke-direct {v1, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$1;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;)V

    iput-object v1, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    :cond_4
    move-object v2, v1

    if-gtz v5, :cond_5

    move v1, v12

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v11, v9, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    const/16 v17, -0x1

    move/from16 v18, v17

    move/from16 v19, v18

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v55, v1

    move-object v1, v0

    move/from16 v0, v55

    :goto_4
    if-ge v12, v7, :cond_35

    move-object/from16 v23, v1

    const/4 v1, 0x2

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    invoke-virtual {v8, v12, v1}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v10

    const/16 v1, 0xa

    move-object/from16 v34, v2

    invoke-virtual {v8, v12, v1}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v1

    move-object/from16 v35, v14

    if-nez v0, :cond_22

    add-int/lit8 v0, v7, -0x1

    if-ne v12, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v8, v12}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v24

    if-nez v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->is_inet_aton_joined()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v24, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    add-int/lit8 v25, v12, 0x1

    move/from16 v14, v25

    :goto_7
    if-ge v14, v7, :cond_9

    invoke-virtual {v8, v14}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v25

    if-eqz v25, :cond_8

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_9
    move v14, v0

    :goto_8
    if-eqz v14, :cond_21

    if-eqz v24, :cond_a

    rsub-int/lit8 v0, v5, 0x3

    shl-int/lit8 v0, v0, 0x3

    ushr-int v0, v17, v0

    int-to-long v1, v0

    goto :goto_9

    :cond_a
    add-int v19, v12, v5

    move/from16 v18, v12

    :goto_9
    rsub-int/lit8 v0, v7, 0x5

    const/16 v24, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-eqz v15, :cond_11

    const-wide/16 v25, 0x0

    move/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v14

    move-wide/from16 v7, v25

    const/4 v14, 0x0

    :goto_a
    if-gt v14, v5, :cond_b

    shl-long v7, v7, v24

    move/from16 v39, v5

    add-int v5, v4, v14

    invoke-interface {v13, v5}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    move/from16 v40, v4

    int-to-long v4, v5

    or-long/2addr v7, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v39

    move/from16 v4, v40

    const/16 v24, 0x8

    goto :goto_a

    :cond_b
    move/from16 v40, v4

    move/from16 v39, v5

    iget-object v4, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v4, v4, v12

    if-nez v4, :cond_e

    const/16 v4, 0x20

    if-ne v0, v4, :cond_c

    const-wide v4, 0xffffffffL

    :goto_b
    move-wide/from16 v30, v4

    goto :goto_c

    :cond_c
    shl-int v4, v17, v0

    not-int v4, v4

    int-to-long v4, v4

    goto :goto_b

    :goto_c
    move-wide/from16 v24, v10

    move-wide/from16 v26, v1

    move-wide/from16 v28, v7

    invoke-static/range {v24 .. v31}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static/range {v34 .. v34}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v5

    if-nez v5, :cond_d

    new-instance v5, Linet/ipaddr/IncompatibleAddressException;

    const-string v31, "ipaddress.error.maskMismatch"

    move-object/from16 v24, v5

    move-wide/from16 v25, v10

    move-wide/from16 v27, v1

    move-wide/from16 v29, v7

    invoke-direct/range {v24 .. v31}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    move-object/from16 v14, v34

    invoke-static {v14, v5}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_d

    :cond_d
    move-object/from16 v14, v34

    :goto_d
    iget-object v5, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aput-object v4, v5, v12

    goto :goto_e

    :cond_e
    move-object/from16 v14, v34

    :goto_e
    invoke-virtual {v4, v10, v11, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v24

    invoke-virtual {v4, v1, v2, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v4

    if-nez v21, :cond_10

    cmp-long v7, v24, v10

    if-nez v7, :cond_10

    cmp-long v7, v4, v1

    if-eqz v7, :cond_f

    goto :goto_f

    :cond_f
    const/4 v7, 0x0

    goto :goto_10

    :cond_10
    :goto_f
    const/4 v7, 0x1

    :goto_10
    move/from16 v21, v7

    move-wide/from16 v26, v24

    move-wide/from16 v24, v4

    goto :goto_11

    :cond_11
    move/from16 v40, v4

    move/from16 v39, v5

    move/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v14

    move-object/from16 v14, v34

    move-wide/from16 v24, v1

    move-wide/from16 v26, v10

    :goto_11
    move-object/from16 v5, v20

    move-object/from16 v8, v23

    move-object/from16 v4, v35

    move/from16 v20, v39

    move/from16 v7, v40

    move/from16 v23, v0

    :goto_12
    if-ltz v20, :cond_20

    add-int/lit8 v23, v23, -0x8

    move/from16 v29, v0

    move-object/from16 v28, v5

    move-object/from16 v5, v32

    const/16 v0, 0x8

    invoke-static {v7, v0, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v32, v13

    move-object/from16 v34, v14

    ushr-long v13, v10, v23

    long-to-int v0, v13

    and-int/lit16 v13, v0, 0xff

    cmp-long v0, v10, v1

    move-wide/from16 v41, v10

    if-nez v0, :cond_12

    move v10, v13

    goto :goto_13

    :cond_12
    ushr-long v10, v1, v23

    long-to-int v0, v10

    and-int/lit16 v0, v0, 0xff

    move v10, v0

    :goto_13
    move-wide/from16 v43, v1

    if-eqz v15, :cond_14

    ushr-long v0, v26, v23

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    cmp-long v1, v26, v24

    if-nez v1, :cond_13

    move v1, v0

    goto :goto_14

    :cond_13
    ushr-long v1, v24, v23

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    :goto_14
    move v11, v0

    move v14, v1

    goto :goto_15

    :cond_14
    move v14, v10

    move v11, v13

    :goto_15
    if-eqz p1, :cond_17

    if-nez v21, :cond_15

    if-eqz v30, :cond_16

    :cond_15
    const/4 v2, 0x4

    goto :goto_16

    :cond_16
    move-object v13, v3

    move-object/from16 v22, v4

    move-object/from16 v49, v5

    move-object/from16 v47, v6

    move-object v10, v8

    move-object/from16 v46, v28

    move/from16 v45, v29

    move-object/from16 v9, v36

    move v8, v7

    goto :goto_17

    :goto_16
    invoke-static {v4, v3, v6, v2, v7}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    sget-object v4, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    const/16 v31, 0x0

    const/16 v35, 0x0

    move/from16 v1, v29

    move-object/from16 v0, p0

    move/from16 v45, v1

    move-object/from16 v1, v33

    move/from16 v29, v2

    move-object v2, v4

    move-object v4, v3

    move v3, v13

    move-object v13, v4

    move v4, v10

    move-object v10, v5

    move-object/from16 v46, v28

    move/from16 v5, v31

    move-object/from16 v47, v6

    move v6, v12

    move/from16 v48, v7

    move-object/from16 v7, v35

    move-object/from16 v49, v10

    move-object/from16 v9, v36

    move-object v10, v8

    move-object/from16 v8, v47

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    move/from16 v8, v48

    aput-object v0, v22, v8

    :goto_17
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v3, v11

    move v4, v14

    move v6, v12

    move-object/from16 v7, v30

    move/from16 v36, v15

    move v15, v8

    move-object/from16 v8, v47

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v13, v15

    goto :goto_18

    :cond_17
    move-object v13, v3

    move-object/from16 v49, v5

    move-object/from16 v47, v6

    move-object v10, v8

    move-object/from16 v46, v28

    move/from16 v45, v29

    move-object/from16 v9, v36

    move/from16 v36, v15

    move v15, v7

    move-object/from16 v22, v4

    :goto_18
    if-eqz p2, :cond_1f

    if-eq v11, v14, :cond_18

    const/16 v28, 0x1

    goto :goto_19

    :cond_18
    const/16 v28, 0x0

    :goto_19
    if-eqz p1, :cond_1b

    if-eqz v28, :cond_19

    goto :goto_1a

    :cond_19
    if-eqz v10, :cond_1a

    aget-object v0, v13, v15

    aput-object v0, v10, v15

    :cond_1a
    move-object/from16 v11, v47

    goto :goto_1b

    :cond_1b
    :goto_1a
    move-object/from16 v8, v47

    if-eqz p1, :cond_1c

    const/4 v0, 0x4

    invoke-static {v10, v13, v8, v0, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-object v10, v0

    :cond_1c
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v3, v11

    move v4, v11

    move v6, v12

    move-object/from16 v7, v30

    move-object v11, v8

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v10, v15

    :goto_1b
    move-object/from16 v1, v46

    if-eqz p3, :cond_1e

    if-eqz v28, :cond_1d

    const/4 v0, 0x4

    invoke-static {v1, v10, v11, v0, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v3, v14

    move v4, v14

    move v6, v12

    move-object/from16 v7, v30

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v28, v15

    move-object v8, v10

    move-object/from16 v5, v28

    goto :goto_1d

    :cond_1d
    if-eqz v1, :cond_1e

    aget-object v0, v10, v15

    aput-object v0, v1, v15

    :cond_1e
    :goto_1c
    move-object v5, v1

    move-object v8, v10

    goto :goto_1d

    :cond_1f
    move-object/from16 v1, v46

    move-object/from16 v11, v47

    goto :goto_1c

    :goto_1d
    add-int/lit8 v7, v15, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object v6, v11

    move-object v3, v13

    move-object/from16 v4, v22

    move-object/from16 v13, v32

    move-object/from16 v14, v34

    move/from16 v15, v36

    move-wide/from16 v10, v41

    move-wide/from16 v1, v43

    move/from16 v0, v45

    move-object/from16 v32, v49

    move-object/from16 v36, v9

    move-object/from16 v9, p0

    goto/16 :goto_12

    :cond_20
    move-object v1, v5

    move-object v11, v6

    move-object v10, v8

    move-object/from16 v34, v14

    move-object/from16 v49, v32

    move-object/from16 v9, v36

    move-object/from16 v32, v13

    move/from16 v36, v15

    move-object v13, v3

    move v15, v7

    invoke-virtual {v9, v12, v0}, Linet/ipaddr/format/validate/AddressParseData;->setBitLength(II)V

    move-object/from16 v20, v1

    move-object v14, v4

    move-object v1, v10

    move v4, v15

    move/from16 v0, v38

    move-object/from16 v23, v49

    move-object v10, v9

    goto/16 :goto_2f

    :cond_21
    move/from16 v40, v4

    move/from16 v39, v5

    move/from16 v37, v7

    move-object v9, v8

    move-wide/from16 v41, v10

    move/from16 v38, v14

    move/from16 v36, v15

    move-object/from16 v49, v32

    move-object v11, v6

    move-object/from16 v32, v13

    move-object v13, v3

    goto :goto_1e

    :cond_22
    move/from16 v40, v4

    move/from16 v39, v5

    move/from16 v37, v7

    move-object v9, v8

    move-wide/from16 v41, v10

    move/from16 v36, v15

    move-object/from16 v49, v32

    move-object v11, v6

    move-object/from16 v32, v13

    move-object v13, v3

    move/from16 v38, v0

    :goto_1e
    move-object v10, v9

    if-eqz v36, :cond_28

    move-object/from16 v9, p0

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v0, v0, v12

    move-object/from16 v14, v32

    move/from16 v4, v40

    invoke-interface {v14, v4}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v3

    invoke-static {v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->cacheSegmentMask(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v0, :cond_24

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    int-to-long v5, v3

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->getMaxValuePerSegment()I

    move-result v7

    int-to-long v7, v7

    move-wide/from16 v24, v41

    move-wide/from16 v26, v1

    move-wide/from16 v28, v5

    move-wide/from16 v30, v7

    invoke-static/range {v24 .. v31}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v7

    aput-object v7, v0, v12

    invoke-virtual {v7}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static/range {v34 .. v34}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    if-nez v0, :cond_23

    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v31, "ipaddress.error.maskMismatch"

    move-object/from16 v24, v0

    move-wide/from16 v25, v41

    move-wide/from16 v27, v1

    move-wide/from16 v29, v5

    invoke-direct/range {v24 .. v31}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    move-object/from16 v15, v34

    invoke-static {v15, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_1f

    :cond_23
    move-object/from16 v15, v34

    :goto_1f
    move-object v0, v7

    goto :goto_20

    :cond_24
    move-object/from16 v15, v34

    :goto_20
    int-to-long v5, v3

    move-object/from16 v32, v14

    move-object/from16 v34, v15

    move-wide/from16 v7, v41

    invoke-virtual {v0, v7, v8, v5, v6}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-long v14, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    int-to-long v5, v0

    cmp-long v0, v7, v14

    if-nez v0, :cond_25

    cmp-long v0, v1, v5

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_21

    :cond_25
    const/4 v0, 0x0

    :goto_21
    if-nez v21, :cond_27

    if-nez v0, :cond_26

    goto :goto_22

    :cond_26
    const/4 v3, 0x0

    goto :goto_23

    :cond_27
    :goto_22
    const/4 v3, 0x1

    :goto_23
    move/from16 v21, v0

    move/from16 v22, v3

    move-object/from16 v3, v49

    const/16 v0, 0x8

    move-wide/from16 v55, v5

    move-wide v5, v14

    move-wide/from16 v14, v55

    goto :goto_24

    :cond_28
    move/from16 v4, v40

    move-wide/from16 v7, v41

    move-object/from16 v9, p0

    move-wide v14, v1

    move-wide v5, v7

    move/from16 v22, v21

    move-object/from16 v3, v49

    const/16 v0, 0x8

    const/16 v21, 0x1

    :goto_24
    invoke-static {v4, v0, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v24

    if-eqz p1, :cond_2b

    if-nez v22, :cond_29

    if-eqz v24, :cond_2a

    :cond_29
    move-object/from16 v49, v3

    move-object/from16 v3, v35

    const/4 v0, 0x4

    goto :goto_25

    :cond_2a
    move v9, v4

    move-wide/from16 v51, v5

    move-object/from16 v50, v23

    move-object/from16 v23, v3

    goto :goto_26

    :goto_25
    invoke-static {v3, v13, v11, v0, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    sget-object v3, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v7, v7

    long-to-int v8, v1

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, v23

    move-object/from16 v1, v33

    move-object/from16 v50, v2

    move-object v2, v3

    move-object/from16 v23, v49

    move v3, v7

    move v7, v4

    move v4, v8

    move-wide/from16 v51, v5

    move/from16 v5, v26

    move v6, v12

    move v8, v7

    move-object/from16 v7, v27

    move v9, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v25, v9

    move-object/from16 v35, v25

    :goto_26
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    move-wide/from16 v7, v51

    long-to-int v3, v7

    long-to-int v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v5, v21

    move v6, v12

    move-wide/from16 v53, v7

    move-object/from16 v7, v24

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v13, v9

    goto :goto_27

    :cond_2b
    move v9, v4

    move-wide/from16 v53, v5

    move-object/from16 v50, v23

    move-object/from16 v23, v3

    move-object/from16 v3, v35

    :goto_27
    if-eqz p2, :cond_34

    move-wide/from16 v7, v53

    cmp-long v0, v7, v14

    if-eqz v0, :cond_2c

    const/16 v21, 0x1

    goto :goto_28

    :cond_2c
    const/16 v21, 0x0

    :goto_28
    if-eqz p1, :cond_2d

    if-eqz v21, :cond_2e

    :cond_2d
    move-object/from16 v0, v50

    goto :goto_29

    :cond_2e
    move-object/from16 v0, v50

    if-eqz v0, :cond_2f

    aget-object v1, v13, v9

    aput-object v1, v0, v9

    :cond_2f
    move-object v8, v0

    goto :goto_2b

    :goto_29
    if-eqz p1, :cond_30

    const/4 v1, 0x4

    invoke-static {v0, v13, v11, v1, v9}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-object/from16 v25, v1

    goto :goto_2a

    :cond_30
    move-object/from16 v25, v0

    :goto_2a
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v4, v7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v3, v4

    move v6, v12

    move-object/from16 v7, v24

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v25, v9

    move-object/from16 v8, v25

    :goto_2b
    if-eqz p3, :cond_32

    if-eqz v21, :cond_31

    move-object/from16 v1, v20

    const/4 v0, 0x4

    invoke-static {v1, v8, v11, v0, v9}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v4, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v3, v4

    move v6, v12

    move-object/from16 v7, v24

    move-object/from16 v25, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSegment;

    aput-object v0, v20, v9

    :goto_2c
    move-object/from16 v1, v25

    goto :goto_2e

    :cond_31
    move-object/from16 v25, v8

    move-object/from16 v1, v20

    if-eqz v1, :cond_33

    aget-object v0, v25, v9

    aput-object v0, v1, v9

    goto :goto_2d

    :cond_32
    move-object/from16 v25, v8

    move-object/from16 v1, v20

    :cond_33
    :goto_2d
    move-object/from16 v20, v1

    goto :goto_2c

    :cond_34
    move-object/from16 v1, v20

    move-object/from16 v0, v50

    move-object v1, v0

    :goto_2e
    add-int/lit8 v4, v9, 0x1

    const/16 v0, 0x8

    invoke-virtual {v10, v12, v0}, Linet/ipaddr/format/validate/AddressParseData;->setBitLength(II)V

    move/from16 v21, v22

    move-object/from16 v14, v35

    move/from16 v0, v38

    :goto_2f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p0

    move-object v8, v10

    move-object v6, v11

    move-object v3, v13

    move-object/from16 v10, v23

    move-object/from16 v13, v32

    move-object/from16 v11, v33

    move-object/from16 v2, v34

    move/from16 v15, v36

    move/from16 v7, v37

    move/from16 v5, v39

    goto/16 :goto_4

    :cond_35
    move-object v0, v1

    move-object/from16 v34, v2

    move-object v13, v3

    move-object/from16 v23, v10

    move-object/from16 v33, v11

    move-object v3, v14

    move-object/from16 v1, v20

    move-object v11, v6

    invoke-static/range {v23 .. v23}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_38

    invoke-virtual {v11, v13, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v4

    check-cast v4, Linet/ipaddr/ipv4/IPv4AddressSection;

    move-object/from16 v5, v34

    invoke-static {v5, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$902(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    const-string v6, "ipaddress.error.invalid.joined.ranges"

    if-eqz v3, :cond_37

    invoke-virtual {v11, v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object v3

    check-cast v3, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-static {v5, v3}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$1002(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-static {v3, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->checkExpandedValues(Linet/ipaddr/IPAddressSection;II)Z

    move-result v9

    if-eqz v9, :cond_36

    new-instance v9, Linet/ipaddr/IncompatibleAddressException;

    move-object/from16 v10, v33

    invoke-direct {v9, v10, v6}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v5, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$502(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_30

    :cond_36
    move-object/from16 v10, v33

    :goto_30
    move-object/from16 v16, v3

    goto :goto_31

    :cond_37
    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v10, v33

    const/16 v16, 0x0

    :goto_31
    invoke-static {v4, v7, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->checkExpandedValues(Linet/ipaddr/IPAddressSection;II)Z

    move-result v3

    if-eqz v3, :cond_39

    new-instance v3, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v3, v10, v6}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v5, v3}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$702(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    if-nez v16, :cond_39

    invoke-static {v5}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$700(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v3

    invoke-static {v5, v3}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$502(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_32

    :cond_38
    move-object/from16 v5, v34

    :cond_39
    :goto_32
    if-eqz p2, :cond_41

    invoke-static/range {v23 .. v23}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v30

    if-eqz v30, :cond_3e

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v3

    if-eqz p1, :cond_3a

    move-object v4, v13

    move-object v6, v4

    goto :goto_34

    :cond_3a
    if-nez v1, :cond_3b

    move-object v4, v0

    goto :goto_33

    :cond_3b
    move-object v4, v1

    :goto_33
    move-object v6, v4

    move-object v4, v0

    :goto_34
    new-instance v7, Linet/ipaddr/format/validate/f;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Linet/ipaddr/format/validate/f;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;I)V

    new-instance v8, Linet/ipaddr/format/validate/f;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Linet/ipaddr/format/validate/f;-><init>([Linet/ipaddr/ipv4/IPv4AddressSegment;I)V

    array-length v4, v4

    const/16 v27, 0x1

    const/16 v28, 0x8

    const/16 v29, 0xff

    invoke-virtual {v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move/from16 v26, v4

    invoke-static/range {v24 .. v32}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IIIILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result v14

    if-eqz v14, :cond_3d

    const/4 v3, 0x4

    if-nez v0, :cond_3c

    invoke-static {v0, v13, v11, v3, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    :cond_3c
    if-nez v1, :cond_3d

    invoke-static {v1, v0, v11, v3, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    :goto_35
    move-object v1, v0

    goto :goto_36

    :cond_3d
    move-object/from16 v20, v1

    goto :goto_35

    :goto_36
    move-object/from16 v0, v20

    goto :goto_37

    :cond_3e
    const/4 v8, 0x0

    move v14, v8

    move-object/from16 v55, v1

    move-object v1, v0

    move-object/from16 v0, v55

    :goto_37
    if-eqz v1, :cond_3f

    const/4 v3, 0x1

    invoke-virtual {v11, v1, v2, v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object v1

    check-cast v1, Linet/ipaddr/ipv4/IPv4AddressSection;

    invoke-virtual {v1}, Linet/ipaddr/ipv4/IPv4AddressSection;->getLower()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v1

    invoke-static {v5, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$202(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    :cond_3f
    if-eqz v0, :cond_41

    invoke-virtual {v11, v0, v2}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressSection;

    if-eqz v14, :cond_40

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->toPrefixBlock()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    :cond_40
    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressSection;->getUpper()Linet/ipaddr/ipv4/IPv4AddressSection;

    move-result-object v0

    invoke-static {v5, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$1102(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    :cond_41
    return-void
.end method

.method private createIPv6Addresses(ZZZ)V
    .locals 77

    move-object/from16 v9, p0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v12}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move-object v13, v0

    :goto_0
    if-eqz v13, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v7

    if-eqz v15, :cond_2

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    if-nez v0, :cond_2

    new-array v0, v7, [Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    iput-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    :cond_2
    invoke-direct/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getIPv6AddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v6

    const/16 v5, 0x8

    if-eqz p1, :cond_3

    invoke-virtual {v6, v5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    move-object v4, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_78

    invoke-virtual {v6, v5}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    const/4 v4, 0x0

    :goto_2
    iget-object v1, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-nez v1, :cond_4

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$2;

    invoke-direct {v1, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$2;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;)V

    iput-object v1, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    :cond_4
    move-object v3, v1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingMixedIPv6()Z

    move-result v16

    if-eqz v16, :cond_5

    const/4 v1, 0x6

    goto :goto_3

    :cond_5
    move v1, v5

    :goto_3
    sub-int v2, v1, v7

    if-gtz v2, :cond_6

    move v1, v12

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v14, v9, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    const/16 v17, -0x1

    move/from16 v18, v17

    move/from16 v19, v18

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move/from16 v75, v1

    move-object v1, v0

    move/from16 v0, v75

    :goto_5
    if-ge v11, v7, :cond_51

    move-object/from16 v27, v3

    move-object/from16 v24, v4

    const/4 v12, 0x2

    invoke-virtual {v8, v11, v12}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v3

    const/16 v12, 0xa

    move-object/from16 v35, v13

    invoke-virtual {v8, v11, v12}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v12

    if-nez v0, :cond_3e

    add-int/lit8 v0, v7, -0x1

    if-ne v11, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v8, v11}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v28

    invoke-virtual {v9, v11}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed(I)Z

    move-result v29

    if-nez v0, :cond_9

    if-eqz v29, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_d

    if-eqz v28, :cond_c

    add-int/lit8 v0, v11, 0x1

    :goto_9
    if-ge v0, v7, :cond_c

    invoke-virtual {v8, v0}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v30

    if-nez v30, :cond_b

    invoke-virtual {v9, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed(I)Z

    move-result v30

    if-eqz v30, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    :goto_a
    const/16 v30, 0x0

    goto :goto_b

    :cond_c
    move/from16 v30, v28

    goto :goto_b

    :cond_d
    move/from16 v30, v0

    :goto_b
    if-eqz v30, :cond_3d

    const-wide/16 v31, -0x1

    const-wide/16 v33, 0x0

    if-eqz v29, :cond_e

    move-object/from16 v38, v1

    move/from16 v28, v18

    move/from16 v36, v19

    move-wide/from16 v0, v33

    move-wide v3, v0

    move-wide v12, v3

    move-wide/from16 v18, v12

    const/16 v37, 0x0

    goto/16 :goto_10

    :cond_e
    const/4 v0, 0x3

    if-eqz v28, :cond_10

    if-le v2, v0, :cond_f

    rsub-int/lit8 v0, v2, 0x7

    const/4 v3, 0x4

    shl-int/2addr v0, v3

    ushr-long v12, v31, v0

    move-wide/from16 v36, v31

    goto :goto_c

    :cond_f
    const/4 v3, 0x4

    rsub-int/lit8 v0, v2, 0x3

    shl-int/2addr v0, v3

    ushr-long v12, v31, v0

    move-wide/from16 v36, v12

    move-wide/from16 v12, v33

    :goto_c
    move-object/from16 v38, v1

    move-wide v3, v12

    move/from16 v28, v18

    move-wide/from16 v12, v33

    move-wide/from16 v0, v36

    const/16 v37, 0x1

    move/from16 v36, v19

    move-wide/from16 v18, v12

    goto :goto_10

    :cond_10
    move-object/from16 v38, v1

    const/4 v1, 0x4

    if-le v2, v0, :cond_13

    invoke-virtual {v8, v11, v1}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v18

    const/16 v0, 0xc

    invoke-virtual {v8, v11, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v0

    cmp-long v28, v3, v12

    if-nez v28, :cond_12

    cmp-long v28, v18, v0

    if-eqz v28, :cond_11

    goto :goto_d

    :cond_11
    const/16 v28, 0x0

    goto :goto_f

    :cond_12
    :goto_d
    const/16 v28, 0x1

    goto :goto_f

    :cond_13
    cmp-long v0, v3, v12

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    move/from16 v28, v0

    move-wide/from16 v0, v33

    move-wide/from16 v18, v0

    :goto_f
    add-int v36, v11, v2

    move/from16 v37, v28

    move/from16 v28, v11

    move-wide/from16 v75, v0

    move-wide v0, v12

    move-wide v12, v3

    move-wide/from16 v3, v75

    :goto_10
    add-int/lit8 v55, v2, 0x1

    move/from16 v56, v7

    mul-int/lit8 v7, v55, 0x10

    if-eqz v15, :cond_27

    move-object/from16 v57, v8

    if-eqz v29, :cond_15

    iget-object v8, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    sget-object v31, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    aput-object v31, v8, v11

    move/from16 v49, v2

    move-wide/from16 v63, v3

    move-object/from16 v59, v6

    move v8, v7

    move-object/from16 v60, v10

    move/from16 v61, v11

    move-wide v10, v12

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-wide/from16 v14, v18

    move-wide/from16 v18, v33

    move-wide/from16 v31, v18

    move-wide/from16 v39, v31

    move-object/from16 v3, v35

    const/4 v12, 0x0

    move/from16 v35, v5

    move-object/from16 v5, v27

    goto/16 :goto_21

    :cond_15
    const/4 v8, 0x4

    if-lt v2, v8, :cond_1f

    iget-object v8, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v8, v8, v11

    check-cast v8, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    move-object/from16 v58, v14

    add-int/lit8 v14, v2, -0x3

    move-object/from16 v59, v6

    move-object/from16 v60, v10

    move/from16 v61, v11

    move-wide/from16 v10, v33

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v14, :cond_16

    const/16 v25, 0x10

    shl-long v10, v10, v25

    move/from16 v40, v14

    add-int v14, v5, v6

    move/from16 v62, v15

    move-object/from16 v15, v35

    invoke-interface {v15, v14}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v14

    invoke-virtual {v14}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v14

    move-wide/from16 v63, v3

    int-to-long v3, v14

    or-long/2addr v10, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v40

    move/from16 v15, v62

    move-wide/from16 v3, v63

    goto :goto_11

    :cond_16
    move-wide/from16 v63, v3

    move/from16 v40, v14

    move/from16 v62, v15

    move-object/from16 v15, v35

    const/16 v25, 0x10

    move-wide/from16 v3, v33

    :goto_12
    if-gt v14, v2, :cond_17

    shl-long v3, v3, v25

    add-int v6, v5, v14

    invoke-interface {v15, v6}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    move/from16 v35, v5

    int-to-long v5, v6

    or-long/2addr v3, v5

    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v35

    const/16 v25, 0x10

    goto :goto_12

    :cond_17
    move/from16 v35, v5

    if-nez v8, :cond_1a

    const/16 v5, 0x40

    if-ne v7, v5, :cond_18

    move-wide/from16 v53, v31

    goto :goto_13

    :cond_18
    add-int/lit8 v5, v7, -0x40

    shl-long v5, v31, v5

    not-long v5, v5

    move-wide/from16 v53, v5

    :goto_13
    const-wide/16 v51, -0x1

    move-wide/from16 v39, v12

    move-wide/from16 v41, v18

    move-wide/from16 v43, v0

    move-wide/from16 v45, v63

    move-wide/from16 v47, v3

    move-wide/from16 v49, v10

    invoke-static/range {v39 .. v54}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJJJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static/range {v27 .. v27}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v5

    if-nez v5, :cond_19

    mul-int/lit8 v5, v55, 0x2

    new-instance v6, Linet/ipaddr/IncompatibleAddressException;

    new-instance v14, Ljava/math/BigInteger;

    move/from16 v47, v7

    move-object/from16 v31, v8

    move-object/from16 v48, v15

    move-wide/from16 v7, v18

    invoke-static {v12, v13, v7, v8, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v15

    move/from16 v49, v2

    const/4 v2, 0x1

    invoke-direct {v14, v2, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/math/BigInteger;

    move-wide/from16 v50, v7

    move-wide/from16 v18, v12

    move-wide/from16 v12, v63

    invoke-static {v0, v1, v12, v13, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v7

    invoke-direct {v15, v2, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v15}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-static {v3, v4, v10, v11, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v5

    invoke-direct {v8, v2, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ipaddress.error.maskMismatch"

    invoke-direct {v6, v14, v7, v2, v5}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v27

    invoke-static {v5, v6}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_14

    :cond_19
    move/from16 v49, v2

    move/from16 v47, v7

    move-object/from16 v31, v8

    move-object/from16 v48, v15

    move-wide/from16 v50, v18

    move-object/from16 v5, v27

    move-wide/from16 v18, v12

    move-wide/from16 v12, v63

    :goto_14
    iget-object v2, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aput-object v31, v2, v61

    move-object/from16 v8, v31

    :goto_15
    move-wide/from16 v14, v50

    goto :goto_16

    :cond_1a
    move/from16 v49, v2

    move/from16 v47, v7

    move-object/from16 v48, v15

    move-wide/from16 v50, v18

    move-object/from16 v5, v27

    move-wide/from16 v18, v12

    move-wide/from16 v12, v63

    goto :goto_15

    :goto_16
    invoke-virtual {v8, v14, v15, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedLowerMasked(JJ)J

    move-result-wide v33

    invoke-virtual {v8, v12, v13, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedUpperMasked(JJ)J

    move-result-wide v6

    move-wide/from16 v10, v18

    invoke-virtual {v8, v10, v11, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v18

    invoke-virtual {v8, v0, v1, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v2

    cmp-long v4, v18, v2

    if-nez v4, :cond_1c

    cmp-long v4, v33, v6

    if-eqz v4, :cond_1b

    goto :goto_17

    :cond_1b
    const/4 v4, 0x0

    goto :goto_18

    :cond_1c
    :goto_17
    const/4 v4, 0x1

    :goto_18
    if-nez v23, :cond_1e

    cmp-long v8, v18, v10

    if-nez v8, :cond_1e

    cmp-long v8, v2, v0

    if-nez v8, :cond_1e

    cmp-long v8, v33, v14

    if-nez v8, :cond_1e

    cmp-long v8, v6, v12

    if-eqz v8, :cond_1d

    goto :goto_19

    :cond_1d
    const/4 v8, 0x0

    goto :goto_1a

    :cond_1e
    :goto_19
    const/4 v8, 0x1

    :goto_1a
    move/from16 v23, v8

    move-wide/from16 v63, v12

    move-wide/from16 v12, v33

    move/from16 v8, v47

    move-wide/from16 v33, v18

    move-wide/from16 v18, v6

    move-wide v6, v2

    move-object/from16 v3, v48

    goto/16 :goto_20

    :cond_1f
    move/from16 v49, v2

    move-object/from16 v59, v6

    move/from16 v47, v7

    move-object/from16 v60, v10

    move/from16 v61, v11

    move-wide v10, v12

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-wide/from16 v14, v18

    move-object/from16 v48, v35

    move-wide v12, v3

    move/from16 v35, v5

    move-object/from16 v5, v27

    iget-object v2, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v2, v2, v61

    move-wide/from16 v6, v33

    move/from16 v3, v49

    const/4 v4, 0x0

    :goto_1b
    if-gt v4, v3, :cond_20

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    add-int v8, v35, v4

    move/from16 v49, v3

    move-object/from16 v3, v48

    invoke-interface {v3, v8}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v8

    invoke-virtual {v8}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v8

    move-wide/from16 v63, v12

    int-to-long v12, v8

    or-long/2addr v6, v12

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v49

    move-wide/from16 v12, v63

    goto :goto_1b

    :cond_20
    move/from16 v49, v3

    move-wide/from16 v63, v12

    move-object/from16 v3, v48

    move/from16 v8, v47

    if-nez v2, :cond_23

    const/16 v4, 0x40

    if-ne v8, v4, :cond_21

    move-wide/from16 v45, v31

    goto :goto_1c

    :cond_21
    shl-long v12, v31, v8

    not-long v12, v12

    move-wide/from16 v45, v12

    :goto_1c
    move-wide/from16 v39, v10

    move-wide/from16 v41, v0

    move-wide/from16 v43, v6

    invoke-static/range {v39 .. v46}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-static {v5}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v4

    if-nez v4, :cond_22

    new-instance v4, Linet/ipaddr/IncompatibleAddressException;

    const-string v46, "ipaddress.error.maskMismatch"

    move-object/from16 v39, v4

    move-wide/from16 v40, v10

    move-wide/from16 v42, v0

    move-wide/from16 v44, v6

    invoke-direct/range {v39 .. v46}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    invoke-static {v5, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    :cond_22
    iget-object v4, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aput-object v2, v4, v61

    :cond_23
    invoke-virtual {v2, v10, v11, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v12

    invoke-virtual {v2, v0, v1, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v6

    cmp-long v2, v12, v6

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_1d

    :cond_24
    const/4 v2, 0x0

    :goto_1d
    if-nez v23, :cond_26

    cmp-long v4, v12, v10

    if-nez v4, :cond_26

    cmp-long v4, v6, v0

    if-eqz v4, :cond_25

    goto :goto_1e

    :cond_25
    const/4 v4, 0x0

    goto :goto_1f

    :cond_26
    :goto_1e
    const/4 v4, 0x1

    :goto_1f
    move/from16 v23, v4

    move-wide/from16 v18, v33

    move v4, v2

    move-wide/from16 v33, v12

    move-wide/from16 v12, v18

    :goto_20
    move-wide/from16 v31, v6

    move-wide/from16 v39, v18

    move-wide/from16 v18, v12

    move v12, v4

    goto :goto_21

    :cond_27
    move/from16 v49, v2

    move-wide/from16 v63, v3

    move-object/from16 v59, v6

    move-object/from16 v57, v8

    move-object/from16 v60, v10

    move/from16 v61, v11

    move-wide v10, v12

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-wide/from16 v14, v18

    move-object/from16 v3, v35

    move/from16 v35, v5

    move v8, v7

    move-object/from16 v5, v27

    move-wide/from16 v31, v0

    move-wide/from16 v33, v10

    move/from16 v12, v37

    move-wide/from16 v39, v63

    :goto_21
    move-object/from16 v2, v20

    move-object/from16 v6, v21

    move/from16 v7, v35

    move-object/from16 v13, v38

    move/from16 v4, v49

    move/from16 v20, v8

    :goto_22
    if-ltz v4, :cond_3c

    move-object/from16 v48, v3

    move-object/from16 v27, v5

    move-object/from16 v5, v60

    const/16 v3, 0x10

    invoke-static {v7, v3, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v21

    if-eqz v29, :cond_28

    move-wide/from16 v41, v0

    move/from16 v38, v4

    move-object/from16 v60, v5

    move/from16 v35, v20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    goto/16 :goto_24

    :cond_28
    add-int/lit8 v3, v20, -0x10

    const v35, 0xffff

    move-object/from16 v60, v5

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2c

    add-int/lit8 v20, v20, -0x50

    move/from16 v38, v4

    ushr-long v4, v14, v20

    long-to-int v4, v4

    and-int v4, v4, v35

    move/from16 v41, v4

    if-eqz v37, :cond_29

    ushr-long v4, v63, v20

    long-to-int v4, v4

    and-int v4, v4, v35

    :cond_29
    move/from16 v42, v4

    if-eqz v62, :cond_2b

    ushr-long v4, v18, v20

    long-to-int v4, v4

    and-int v4, v4, v35

    move/from16 v43, v4

    if-eqz v12, :cond_2a

    ushr-long v4, v39, v20

    long-to-int v4, v4

    and-int v4, v4, v35

    :cond_2a
    move v5, v4

    move/from16 v4, v43

    goto :goto_23

    :cond_2b
    move/from16 v4, v41

    move/from16 v5, v42

    :goto_23
    move/from16 v35, v3

    move/from16 v3, v41

    move/from16 v20, v42

    move-wide/from16 v41, v0

    move/from16 v75, v5

    move v5, v4

    move/from16 v4, v75

    goto :goto_24

    :cond_2c
    move/from16 v38, v4

    ushr-long v4, v10, v3

    long-to-int v4, v4

    and-int v4, v4, v35

    move/from16 v20, v4

    if-eqz v37, :cond_2d

    ushr-long v4, v0, v3

    long-to-int v4, v4

    and-int v4, v4, v35

    :cond_2d
    move-wide/from16 v41, v0

    if-eqz v62, :cond_2f

    ushr-long v0, v33, v3

    long-to-int v0, v0

    and-int v0, v0, v35

    move v5, v0

    if-eqz v12, :cond_2e

    ushr-long v0, v31, v3

    long-to-int v0, v0

    and-int v0, v0, v35

    :cond_2e
    move/from16 v35, v3

    move/from16 v3, v20

    move/from16 v20, v4

    move v4, v0

    goto :goto_24

    :cond_2f
    move/from16 v35, v3

    move/from16 v3, v20

    move v5, v3

    move/from16 v20, v4

    :goto_24
    if-eqz p1, :cond_32

    if-nez v23, :cond_30

    if-eqz v21, :cond_31

    :cond_30
    move/from16 v22, v4

    move-object/from16 v4, v24

    move-object/from16 v1, v59

    const/16 v0, 0x8

    goto :goto_25

    :cond_31
    move/from16 v20, v5

    move-object/from16 v68, v6

    move-wide/from16 v43, v10

    move-object/from16 v66, v24

    move/from16 v22, v38

    move-wide/from16 v45, v41

    move-object/from16 v65, v48

    move/from16 v47, v49

    move-object/from16 v10, v57

    move-object/from16 v67, v60

    move-wide/from16 v49, v63

    move-object/from16 v24, v2

    move v11, v7

    move-wide/from16 v41, v14

    move-object/from16 v48, v27

    move/from16 v14, v56

    move/from16 v27, v4

    move v15, v8

    goto :goto_26

    :goto_25
    invoke-static {v2, v4, v1, v0, v7}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-wide/from16 v45, v41

    move/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v42, v1

    move-object/from16 v1, v58

    move/from16 v47, v49

    move-object/from16 v65, v48

    move-wide/from16 v49, v63

    move-object/from16 v48, v27

    move-object/from16 v66, v4

    move/from16 v27, v22

    move/from16 v22, v38

    move/from16 v4, v20

    move/from16 v20, v5

    move-object/from16 v67, v60

    move/from16 v5, v43

    move-object/from16 v68, v6

    move-object/from16 v59, v42

    move/from16 v6, v61

    move-wide/from16 v41, v14

    move/from16 v14, v56

    move v15, v8

    move v8, v7

    move-object/from16 v7, v44

    move-wide/from16 v43, v10

    move-object/from16 v10, v57

    move v11, v8

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v24, v11

    :goto_26
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v3, v20

    move/from16 v4, v27

    move/from16 v6, v61

    move-object/from16 v7, v21

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object/from16 v8, v66

    aput-object v0, v8, v11

    goto :goto_27

    :cond_32
    move/from16 v20, v5

    move-object/from16 v68, v6

    move-wide/from16 v43, v10

    move/from16 v22, v38

    move-wide/from16 v45, v41

    move-object/from16 v65, v48

    move/from16 v47, v49

    move-object/from16 v10, v57

    move-object/from16 v67, v60

    move-wide/from16 v49, v63

    move v11, v7

    move-wide/from16 v41, v14

    move-object/from16 v48, v27

    move/from16 v14, v56

    move/from16 v27, v4

    move v15, v8

    move-object/from16 v8, v24

    move-object/from16 v24, v2

    :goto_27
    if-eqz p2, :cond_3b

    move/from16 v4, v20

    move/from16 v7, v27

    if-eq v4, v7, :cond_33

    const/16 v20, 0x1

    goto :goto_28

    :cond_33
    const/16 v20, 0x0

    :goto_28
    if-eqz p1, :cond_36

    if-eqz v20, :cond_34

    goto :goto_29

    :cond_34
    if-eqz v13, :cond_35

    aget-object v0, v8, v11

    aput-object v0, v13, v11

    :cond_35
    move/from16 v27, v7

    move-object/from16 v69, v8

    move/from16 v56, v14

    const/16 v14, 0x8

    goto :goto_2a

    :cond_36
    :goto_29
    move-object/from16 v6, v59

    const/16 v5, 0x8

    if-eqz p1, :cond_37

    invoke-static {v13, v8, v6, v5, v11}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    :cond_37
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move v3, v4

    move/from16 v56, v14

    move v14, v5

    move/from16 v5, v27

    move-object/from16 v59, v6

    move/from16 v6, v61

    move/from16 v27, v7

    move-object/from16 v7, v21

    move-object/from16 v69, v8

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v13, v11

    :goto_2a
    if-eqz p3, :cond_39

    if-eqz v20, :cond_38

    move-object/from16 v8, v59

    move-object/from16 v0, v68

    invoke-static {v0, v13, v8, v14, v11}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v3, v27

    move/from16 v4, v27

    move/from16 v6, v61

    move-object/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v20, v11

    move-object/from16 v6, v20

    goto :goto_2c

    :cond_38
    move-object/from16 v0, v68

    if-eqz v0, :cond_3a

    aget-object v1, v13, v11

    aput-object v1, v0, v11

    goto :goto_2b

    :cond_39
    move-object/from16 v0, v68

    :cond_3a
    :goto_2b
    move-object v6, v0

    goto :goto_2c

    :cond_3b
    move-object/from16 v69, v8

    move/from16 v56, v14

    move-object/from16 v0, v68

    const/16 v14, 0x8

    goto :goto_2b

    :goto_2c
    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v4, v22, -0x1

    move-object/from16 v57, v10

    move v8, v15

    move-object/from16 v2, v24

    move/from16 v20, v35

    move-wide/from16 v14, v41

    move-wide/from16 v10, v43

    move-wide/from16 v0, v45

    move-object/from16 v5, v48

    move-wide/from16 v63, v49

    move-object/from16 v3, v65

    move-object/from16 v60, v67

    move-object/from16 v24, v69

    move/from16 v49, v47

    goto/16 :goto_22

    :cond_3c
    move-object/from16 v65, v3

    move-object/from16 v48, v5

    move-object v0, v6

    move v11, v7

    move v15, v8

    move-object/from16 v69, v24

    move/from16 v47, v49

    move-object/from16 v10, v57

    move-object/from16 v67, v60

    move/from16 v8, v61

    const/16 v14, 0x8

    invoke-virtual {v10, v8, v15}, Linet/ipaddr/format/validate/AddressParseData;->setBitLength(II)V

    move-object/from16 v21, v0

    move-object/from16 v20, v2

    move-object v3, v10

    move v5, v11

    move-object v1, v13

    move/from16 v18, v28

    move/from16 v0, v30

    move/from16 v19, v36

    move-object/from16 v14, v59

    move-object/from16 v35, v65

    move-object/from16 v15, v69

    move v13, v8

    goto/16 :goto_3e

    :cond_3d
    move-object/from16 v38, v1

    move/from16 v47, v2

    move-object/from16 v59, v6

    move/from16 v56, v7

    move-object/from16 v67, v10

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-object/from16 v69, v24

    move-object/from16 v48, v27

    move-object/from16 v65, v35

    const/16 v14, 0x8

    move/from16 v35, v5

    move-object v10, v8

    move v8, v11

    move/from16 v11, v30

    goto :goto_2d

    :cond_3e
    move-object/from16 v38, v1

    move/from16 v47, v2

    move-object/from16 v59, v6

    move/from16 v56, v7

    move-object/from16 v67, v10

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-object/from16 v69, v24

    move-object/from16 v48, v27

    move-object/from16 v65, v35

    const/16 v14, 0x8

    move/from16 v35, v5

    move-object v10, v8

    move v8, v11

    move v11, v0

    :goto_2d
    if-eqz v62, :cond_44

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v0, v0, v8

    move/from16 v5, v35

    move-object/from16 v15, v65

    invoke-interface {v15, v5}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v1

    invoke-static {v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->cacheSegmentMask(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v0, :cond_40

    iget-object v0, v9, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    int-to-long v6, v1

    invoke-virtual/range {v59 .. v59}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getMaxValuePerSegment()I

    move-result v2

    move-object/from16 v35, v15

    int-to-long v14, v2

    move-wide/from16 v27, v3

    move-wide/from16 v29, v12

    move-wide/from16 v31, v6

    move-wide/from16 v33, v14

    invoke-static/range {v27 .. v34}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static/range {v48 .. v48}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    if-nez v0, :cond_3f

    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v34, "ipaddress.error.maskMismatch"

    move-object/from16 v27, v0

    move-wide/from16 v28, v3

    move-wide/from16 v30, v12

    move-wide/from16 v32, v6

    invoke-direct/range {v27 .. v34}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    move-object/from16 v14, v48

    invoke-static {v14, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_2e

    :cond_3f
    move-object/from16 v14, v48

    :goto_2e
    move-object v0, v2

    goto :goto_2f

    :cond_40
    move-object/from16 v35, v15

    move-object/from16 v14, v48

    :goto_2f
    int-to-long v1, v1

    invoke-virtual {v0, v3, v4, v1, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v0, v12, v13, v1, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    cmp-long v2, v3, v6

    if-nez v2, :cond_41

    cmp-long v2, v12, v0

    if-nez v2, :cond_41

    const/4 v2, 0x1

    goto :goto_30

    :cond_41
    const/4 v2, 0x0

    :goto_30
    if-nez v23, :cond_43

    if-nez v2, :cond_42

    goto :goto_31

    :cond_42
    const/16 v23, 0x0

    goto :goto_32

    :cond_43
    :goto_31
    const/16 v23, 0x1

    :goto_32
    move v15, v2

    move-wide/from16 v26, v6

    move-wide v6, v0

    move-object/from16 v0, v67

    const/16 v1, 0x10

    goto :goto_33

    :cond_44
    move/from16 v5, v35

    move-object/from16 v14, v48

    move-object/from16 v35, v65

    move-wide/from16 v26, v3

    move-wide v6, v12

    move-object/from16 v0, v67

    const/16 v1, 0x10

    const/4 v15, 0x1

    :goto_33
    invoke-static {v5, v1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v22

    if-eqz p1, :cond_47

    if-nez v23, :cond_45

    if-eqz v22, :cond_46

    :cond_45
    move-object/from16 v60, v0

    move-wide/from16 v28, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v59

    move-object/from16 v7, v69

    const/16 v0, 0x8

    goto :goto_34

    :cond_46
    move-object/from16 v60, v0

    move v12, v5

    move v13, v8

    move-object/from16 v57, v10

    move-wide/from16 v71, v26

    move-object/from16 v70, v38

    move-object/from16 v73, v69

    move-wide v9, v6

    goto :goto_35

    :goto_34
    invoke-static {v1, v7, v2, v0, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    sget-object v6, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v3, v3

    long-to-int v4, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, v60

    move-object/from16 v0, p0

    move-wide/from16 v71, v26

    move-object/from16 v70, v38

    move-object/from16 v1, v58

    move-object/from16 v59, v2

    move-object v2, v6

    move v6, v5

    move v5, v12

    move v12, v6

    move-object/from16 v57, v10

    move-wide/from16 v9, v28

    move v6, v8

    move-object/from16 v73, v7

    move-object v7, v13

    move v13, v8

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v20, v12

    :goto_35
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    move-wide/from16 v7, v71

    long-to-int v3, v7

    long-to-int v4, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move v5, v15

    move v6, v13

    move-object/from16 v48, v14

    move-wide v14, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object/from16 v8, v73

    aput-object v0, v8, v12

    goto :goto_36

    :cond_47
    move-object/from16 v60, v0

    move v12, v5

    move v13, v8

    move-object/from16 v57, v10

    move-object/from16 v48, v14

    move-object/from16 v1, v20

    move-wide/from16 v14, v26

    move-object/from16 v70, v38

    move-object/from16 v8, v69

    move-wide v9, v6

    :goto_36
    if-eqz p2, :cond_50

    cmp-long v0, v14, v9

    if-eqz v0, :cond_48

    const/16 v24, 0x1

    goto :goto_37

    :cond_48
    const/16 v24, 0x0

    :goto_37
    if-eqz p1, :cond_49

    if-eqz v24, :cond_4a

    :cond_49
    move-object/from16 v0, v70

    goto :goto_38

    :cond_4a
    move-object/from16 v0, v70

    if-eqz v0, :cond_4b

    aget-object v1, v8, v12

    aput-object v1, v0, v12

    :cond_4b
    move-object v15, v8

    move-object/from16 v14, v59

    move-object v8, v0

    goto :goto_3a

    :goto_38
    move-object/from16 v7, v59

    if-eqz p1, :cond_4c

    const/16 v1, 0x8

    invoke-static {v0, v8, v7, v1, v12}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object/from16 v26, v1

    goto :goto_39

    :cond_4c
    move-object/from16 v26, v0

    :goto_39
    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v4, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move v3, v4

    move v6, v13

    move-object v14, v7

    move-object/from16 v7, v22

    move-object v15, v8

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v26, v12

    move-object/from16 v8, v26

    :goto_3a
    if-eqz p3, :cond_4e

    if-eqz v24, :cond_4d

    move-object/from16 v2, v21

    const/16 v0, 0x8

    invoke-static {v2, v8, v14, v0, v12}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    long-to-int v4, v9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move v3, v4

    move v6, v13

    move-object/from16 v7, v22

    move-object/from16 v26, v8

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSegment;

    aput-object v0, v21, v12

    :goto_3b
    move-object/from16 v1, v26

    goto :goto_3d

    :cond_4d
    move-object/from16 v26, v8

    move-object/from16 v2, v21

    if-eqz v2, :cond_4f

    aget-object v0, v26, v12

    aput-object v0, v2, v12

    goto :goto_3c

    :cond_4e
    move-object/from16 v26, v8

    move-object/from16 v2, v21

    :cond_4f
    :goto_3c
    move-object/from16 v21, v2

    goto :goto_3b

    :cond_50
    move-object v15, v8

    move-object/from16 v2, v21

    move-object/from16 v14, v59

    move-object/from16 v0, v70

    move-object v1, v0

    :goto_3d
    add-int/lit8 v5, v12, 0x1

    move-object/from16 v3, v57

    const/16 v0, 0x10

    invoke-virtual {v3, v13, v0}, Linet/ipaddr/format/validate/AddressParseData;->setBitLength(II)V

    move v0, v11

    :goto_3e
    add-int/lit8 v11, v13, 0x1

    move-object/from16 v9, p0

    move-object v8, v3

    move-object v6, v14

    move-object v4, v15

    move-object/from16 v13, v35

    move/from16 v2, v47

    move-object/from16 v3, v48

    move/from16 v7, v56

    move-object/from16 v14, v58

    move-object/from16 v10, v60

    move/from16 v15, v62

    goto/16 :goto_5

    :cond_51
    move-object v0, v1

    move-object/from16 v48, v3

    move v12, v5

    move-object/from16 v60, v10

    move-object/from16 v35, v13

    move-object/from16 v58, v14

    move/from16 v62, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object v15, v4

    move-object v14, v6

    invoke-static/range {v60 .. v60}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v16, :cond_6c

    move-object/from16 v10, p0

    iget-object v3, v10, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Linet/ipaddr/ipv4/IPv4AddressSeqRange;

    if-eqz v62, :cond_52

    iget-object v3, v10, Linet/ipaddr/format/validate/ParsedIPAddress;->mixedMaskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    if-nez v3, :cond_52

    const/4 v3, 0x4

    new-array v3, v3, [Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    iput-object v3, v10, Linet/ipaddr/format/validate/ParsedIPAddress;->mixedMaskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    :cond_52
    move-object v8, v2

    move v13, v12

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v12, v0

    :goto_3f
    if-ge v6, v7, :cond_6b

    shl-int/lit8 v0, v6, 0x1

    move-object/from16 v5, v60

    const/16 v4, 0x10

    invoke-static {v13, v4, v5}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v2

    invoke-virtual {v2, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v2

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getLower()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v4

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v5

    invoke-virtual {v5, v0}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v5

    move/from16 v16, v6

    invoke-virtual {v11}, Linet/ipaddr/ipv4/IPv4AddressSeqRange;->getUpper()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v6

    invoke-virtual {v6, v7}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v6

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v2

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    invoke-virtual {v5}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v5

    invoke-virtual {v6}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v6

    if-eqz v62, :cond_5a

    move-object/from16 v20, v9

    move-object/from16 v9, v35

    invoke-interface {v9, v13}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Linet/ipaddr/format/validate/ParsedIPAddress;->cacheSegmentMask(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shr-int/lit8 v9, v8, 0x8

    move-object/from16 v21, v12

    iget-object v12, v10, Linet/ipaddr/format/validate/ParsedIPAddress;->mixedMaskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v26, v12, v0

    if-nez v26, :cond_53

    move/from16 v36, v13

    move-object/from16 v59, v14

    int-to-long v13, v2

    move-object/from16 v37, v3

    move/from16 v38, v4

    int-to-long v3, v5

    move/from16 v40, v6

    move/from16 v39, v7

    int-to-long v6, v9

    const-wide/16 v33, 0xff

    move-wide/from16 v27, v13

    move-wide/from16 v29, v3

    move-wide/from16 v31, v6

    invoke-static/range {v27 .. v34}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v26

    aput-object v26, v12, v0

    invoke-virtual/range {v26 .. v26}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static/range {v48 .. v48}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    if-nez v0, :cond_54

    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v34, "ipaddress.error.maskMismatch"

    move-object/from16 v27, v0

    move-wide/from16 v28, v13

    move-wide/from16 v30, v3

    move-wide/from16 v32, v6

    invoke-direct/range {v27 .. v34}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    move-object/from16 v12, v48

    invoke-static {v12, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    :goto_40
    move-object/from16 v0, v26

    goto :goto_41

    :cond_53
    move-object/from16 v37, v3

    move/from16 v38, v4

    move/from16 v40, v6

    move/from16 v39, v7

    move/from16 v36, v13

    move-object/from16 v59, v14

    :cond_54
    move-object/from16 v12, v48

    goto :goto_40

    :goto_41
    int-to-long v3, v2

    int-to-long v6, v9

    invoke-virtual {v0, v3, v4, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v13, v5

    invoke-virtual {v0, v13, v14, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    iget-object v4, v10, Linet/ipaddr/format/validate/ParsedIPAddress;->mixedMaskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v6, v4, v39

    if-nez v6, :cond_55

    move/from16 v7, v38

    int-to-long v13, v7

    move-object/from16 v34, v11

    move/from16 v9, v40

    int-to-long v10, v9

    move/from16 v40, v0

    move-object/from16 v38, v1

    int-to-long v0, v8

    const-wide/16 v32, 0xff

    move-wide/from16 v26, v13

    move-wide/from16 v28, v10

    move-wide/from16 v30, v0

    invoke-static/range {v26 .. v33}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v6

    aput-object v6, v4, v39

    invoke-virtual {v6}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-static {v12}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v4

    if-nez v4, :cond_56

    new-instance v4, Linet/ipaddr/IncompatibleAddressException;

    const-string v33, "ipaddress.error.maskMismatch"

    move-object/from16 v26, v4

    move-wide/from16 v27, v13

    move-wide/from16 v29, v10

    move-wide/from16 v31, v0

    invoke-direct/range {v26 .. v33}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    invoke-static {v12, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_42

    :cond_55
    move-object/from16 v34, v11

    move/from16 v7, v38

    move/from16 v9, v40

    move/from16 v40, v0

    move-object/from16 v38, v1

    :cond_56
    :goto_42
    int-to-long v0, v7

    int-to-long v10, v8

    invoke-virtual {v6, v0, v1, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v13, v9

    invoke-virtual {v6, v13, v14, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v10

    long-to-int v1, v10

    if-nez v23, :cond_58

    if-ne v3, v2, :cond_58

    move/from16 v4, v40

    if-ne v4, v5, :cond_59

    if-ne v0, v7, :cond_59

    if-eq v1, v9, :cond_57

    goto :goto_43

    :cond_57
    const/4 v6, 0x0

    goto :goto_44

    :cond_58
    move/from16 v4, v40

    :cond_59
    :goto_43
    const/4 v6, 0x1

    :goto_44
    move v11, v0

    move v13, v1

    move v14, v3

    move v10, v4

    move/from16 v23, v6

    goto :goto_45

    :cond_5a
    move-object/from16 v38, v1

    move-object/from16 v37, v3

    move v7, v4

    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v34, v11

    move-object/from16 v21, v12

    move/from16 v36, v13

    move-object/from16 v59, v14

    move-object/from16 v12, v48

    move v9, v6

    move v14, v2

    move v10, v5

    move v11, v7

    move v13, v9

    :goto_45
    if-ne v14, v10, :cond_5c

    if-eq v11, v13, :cond_5b

    goto :goto_46

    :cond_5b
    const/16 v26, 0x0

    goto :goto_47

    :cond_5c
    :goto_46
    const/16 v26, 0x1

    :goto_47
    if-eqz p1, :cond_63

    if-nez v23, :cond_5e

    if-eqz v37, :cond_5d

    goto :goto_48

    :cond_5d
    const/4 v0, 0x0

    goto :goto_49

    :cond_5e
    :goto_48
    const/4 v0, 0x1

    :goto_49
    move/from16 v6, v36

    move-object/from16 v3, v38

    move-object/from16 v8, v59

    if-eqz v0, :cond_5f

    const/16 v1, 0x8

    invoke-static {v3, v15, v8, v1, v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-object/from16 v27, v1

    goto :goto_4a

    :cond_5f
    move-object/from16 v27, v3

    :goto_4a
    const/4 v3, 0x0

    move-object/from16 v4, p0

    if-nez v26, :cond_61

    if-eqz v0, :cond_60

    invoke-direct {v4, v2, v7, v3, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(IILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, v27, v6

    :cond_60
    move-object/from16 v1, v37

    invoke-direct {v4, v14, v11, v1, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(IILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, v15, v6

    move-object/from16 v37, v1

    move-object/from16 v28, v3

    move-object v9, v4

    move-object/from16 v59, v8

    move-object/from16 v66, v15

    move-object/from16 v74, v22

    move-object/from16 v30, v60

    const/16 v24, 0x2

    const/16 v25, 0x10

    move v15, v6

    goto/16 :goto_4c

    :cond_61
    move-object/from16 v1, v37

    if-eqz v0, :cond_62

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v28, v1

    move-object v1, v12

    move/from16 v29, v2

    move-object/from16 v2, v34

    move-object/from16 v37, v28

    move-object/from16 v28, v3

    move/from16 v3, v29

    move/from16 v29, v7

    const/16 v25, 0x10

    move-object v7, v4

    move v4, v5

    move-object/from16 v30, v60

    move/from16 v5, v29

    move-object/from16 v66, v15

    move v15, v6

    move v6, v9

    move-object v9, v7

    const/16 v24, 0x2

    move-object/from16 v7, v17

    move-object/from16 v59, v8

    move-object/from16 v74, v22

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/format/AddressItem;IIIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, v27, v15

    goto :goto_4b

    :cond_62
    move-object/from16 v37, v1

    move-object/from16 v28, v3

    move-object v9, v4

    move-object/from16 v59, v8

    move-object/from16 v66, v15

    move-object/from16 v74, v22

    move-object/from16 v30, v60

    const/16 v24, 0x2

    const/16 v25, 0x10

    move v15, v6

    :goto_4b
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v34

    move v3, v14

    move v4, v10

    move v5, v11

    move v6, v13

    move-object/from16 v7, v37

    move-object/from16 v8, v59

    invoke-direct/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/format/AddressItem;IIIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, v66, v15

    :goto_4c
    move-object/from16 v1, v27

    goto :goto_4d

    :cond_63
    move-object/from16 v9, p0

    move-object/from16 v66, v15

    move-object/from16 v74, v22

    move/from16 v15, v36

    move-object/from16 v3, v38

    move-object/from16 v30, v60

    const/16 v24, 0x2

    const/16 v25, 0x10

    const/16 v28, 0x0

    move-object v1, v3

    :goto_4d
    if-eqz p2, :cond_6a

    if-eqz p1, :cond_66

    if-eqz v26, :cond_64

    goto :goto_4e

    :cond_64
    if-eqz v21, :cond_65

    aget-object v0, v66, v15

    aput-object v0, v21, v15

    :cond_65
    move-object/from16 v2, v21

    move-object/from16 v3, v37

    move-object/from16 v4, v59

    move-object/from16 v5, v66

    const/16 v0, 0x8

    goto :goto_4f

    :cond_66
    :goto_4e
    move-object/from16 v2, v21

    move-object/from16 v4, v59

    move-object/from16 v5, v66

    const/16 v0, 0x8

    if-eqz p1, :cond_67

    invoke-static {v2, v5, v4, v0, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v2

    check-cast v2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    :cond_67
    move-object/from16 v3, v37

    invoke-direct {v9, v14, v11, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(IILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v6

    aput-object v6, v2, v15

    :goto_4f
    move-object/from16 v6, v74

    if-eqz p3, :cond_68

    if-eqz v26, :cond_69

    invoke-static {v6, v2, v4, v0, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v6

    check-cast v6, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-direct {v9, v10, v13, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress;->createSegment(IILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v0

    aput-object v0, v6, v15

    :cond_68
    :goto_50
    move-object v8, v6

    goto :goto_51

    :cond_69
    if-eqz v6, :cond_68

    aget-object v0, v2, v15

    aput-object v0, v6, v15

    goto :goto_50

    :cond_6a
    move-object/from16 v2, v21

    move-object/from16 v4, v59

    move-object/from16 v5, v66

    move-object/from16 v6, v74

    goto :goto_50

    :goto_51
    add-int/lit8 v13, v15, 0x1

    add-int/lit8 v6, v16, 0x1

    move-object v14, v4

    move-object v15, v5

    move-object v10, v9

    move-object/from16 v48, v12

    move-object/from16 v9, v20

    move/from16 v7, v24

    move-object/from16 v60, v30

    move-object/from16 v11, v34

    move-object v12, v2

    goto/16 :goto_3f

    :cond_6b
    move-object v3, v1

    move-object v6, v8

    move-object/from16 v20, v9

    move-object v9, v10

    move-object v2, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v12, v48

    move-object/from16 v30, v60

    const/16 v28, 0x0

    move-object v0, v2

    move-object v2, v6

    goto :goto_52

    :cond_6c
    move-object/from16 v20, v9

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v12, v48

    move-object/from16 v30, v60

    const/16 v28, 0x0

    move-object/from16 v9, p0

    :goto_52
    if-eqz p1, :cond_6f

    const-string v3, "ipaddress.error.invalid.joined.ranges"

    if-eqz v1, :cond_6e

    invoke-virtual {v4, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v12, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$1002(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    move/from16 v1, v18

    move/from16 v6, v19

    invoke-static {v11, v1, v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->checkExpandedValues(Linet/ipaddr/IPAddressSection;II)Z

    move-result v7

    if-eqz v7, :cond_6d

    new-instance v7, Linet/ipaddr/IncompatibleAddressException;

    move-object/from16 v8, v58

    invoke-direct {v7, v8, v3}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v12, v7}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$502(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_53

    :cond_6d
    move-object/from16 v8, v58

    :goto_53
    move-object/from16 v7, v20

    goto :goto_54

    :cond_6e
    move/from16 v1, v18

    move/from16 v6, v19

    move-object/from16 v8, v58

    move-object/from16 v7, v20

    move-object/from16 v11, v28

    :goto_54
    invoke-virtual {v4, v5, v7}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v10

    check-cast v10, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v12, v10}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$902(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    invoke-static {v10, v1, v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->checkExpandedValues(Linet/ipaddr/IPAddressSection;II)Z

    move-result v1

    if-eqz v1, :cond_70

    new-instance v1, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v1, v8, v3}, Linet/ipaddr/IncompatibleAddressException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v12, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$702(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    if-nez v11, :cond_70

    invoke-static {v12}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$700(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    invoke-static {v12, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$502(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_55

    :cond_6f
    move-object/from16 v7, v20

    :cond_70
    :goto_55
    if-eqz p2, :cond_78

    invoke-static/range {v30 .. v30}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v37

    if-eqz v37, :cond_74

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v1

    if-eqz p1, :cond_71

    move-object v3, v5

    move-object v6, v3

    goto :goto_57

    :cond_71
    if-nez v2, :cond_72

    move-object v3, v0

    goto :goto_56

    :cond_72
    move-object v3, v2

    :goto_56
    move-object v6, v3

    move-object v3, v0

    :goto_57
    new-instance v8, Linet/ipaddr/format/validate/c;

    const/4 v10, 0x0

    invoke-direct {v8, v3, v10}, Linet/ipaddr/format/validate/c;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    new-instance v10, Linet/ipaddr/format/validate/c;

    const/4 v11, 0x1

    invoke-direct {v10, v6, v11}, Linet/ipaddr/format/validate/c;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;I)V

    array-length v3, v3

    const/16 v34, 0x2

    const/16 v35, 0x10

    const v36, 0xffff

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v31, v8

    move-object/from16 v32, v10

    move/from16 v33, v3

    invoke-static/range {v31 .. v39}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IIIILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result v14

    if-eqz v14, :cond_75

    const/16 v1, 0x8

    if-nez v0, :cond_73

    invoke-static {v0, v5, v4, v1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    :cond_73
    if-nez v2, :cond_75

    invoke-static {v2, v0, v4, v1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->allocateSegments([Linet/ipaddr/IPAddressSegment;[Linet/ipaddr/IPAddressSegment;Linet/ipaddr/AddressNetwork$AddressSegmentCreator;II)[Linet/ipaddr/IPAddressSegment;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    goto :goto_58

    :cond_74
    const/4 v10, 0x0

    move v14, v10

    :cond_75
    :goto_58
    if-eqz v0, :cond_76

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v7, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getLower()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-static {v12, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$202(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    :cond_76
    if-eqz v2, :cond_78

    invoke-virtual {v4, v2, v7}, Linet/ipaddr/IPAddressNetwork$IPAddressCreator;->createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection;

    if-eqz v14, :cond_77

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->toPrefixBlock()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    :cond_77
    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressSection;->getUpper()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    invoke-static {v12, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$1102(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;

    :cond_78
    return-void
.end method

.method private static createRangeSeg(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZLinet/ipaddr/format/validate/AddressParseData;ILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/IPAddress$IPVersion;",
            "IIZ",
            "Linet/ipaddr/format/validate/AddressParseData;",
            "I",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "***TS;>;)TS;"
        }
    .end annotation

    move-object/from16 v0, p5

    move/from16 v1, p6

    move v5, p2

    move v6, p3

    move-object/from16 v3, p7

    move-object/from16 v2, p8

    if-nez p4, :cond_0

    invoke-virtual {v2, p2, p3, v3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/IPAddressSegment;

    goto :goto_1

    :cond_0
    const/high16 v4, 0x40000

    invoke-virtual {v0, v1, v4}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v7

    const/high16 v4, 0x80000

    invoke-virtual {v0, v1, v4}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v8

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v9

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v4}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v10

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v4}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v11

    move-object/from16 v0, p8

    move v1, p2

    move v2, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v11}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentInternal(IILjava/lang/Integer;Ljava/lang/CharSequence;IIZZIII)Linet/ipaddr/AddressSegment;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private createSegment(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/IPAddressSegment;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Linet/ipaddr/IPAddress$IPVersion;",
            "IIZI",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "***TS;>;)TS;"
        }
    .end annotation

    .line 1
    move v4, p3

    move/from16 v6, p6

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v5

    move v3, p4

    if-eq v4, v3, :cond_0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->createRangeSeg(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;IIZLinet/ipaddr/format/validate/AddressParseData;ILjava/lang/Integer;Linet/ipaddr/format/validate/ParsedAddressCreator;)Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p7

    move-object/from16 v0, p8

    if-nez p5, :cond_1

    invoke-virtual {v0, p3, p3, v2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/IPAddressSegment;

    goto :goto_1

    :cond_1
    const/high16 v1, 0x40000

    invoke-virtual {v5, v6, v1}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v7

    const/4 v1, 0x6

    invoke-virtual {v5, v6, v1}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v8

    const/4 v1, 0x7

    invoke-virtual {v5, v6, v1}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v9

    move v1, p3

    move-object v3, p1

    move v4, p3

    move v5, v7

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createSegmentInternal(ILjava/lang/Integer;Ljava/lang/CharSequence;IZII)Linet/ipaddr/AddressSegment;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private createSegment(IILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 2
    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    invoke-virtual {p4, p1, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method private createSegment(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/format/AddressItem;IIIILjava/lang/Integer;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult<",
            "**>;",
            "Linet/ipaddr/format/AddressItem;",
            "IIII",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;",
            ")",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;"
        }
    .end annotation

    .line 3
    const/16 v0, 0x8

    if-eq p3, p4, :cond_6

    const-string v1, "ipaddress.error.invalidMixedRange"

    const/16 v2, 0xff

    if-eqz p7, :cond_3

    invoke-virtual {p8}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_2

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v0

    rsub-int/lit8 v3, v3, 0x8

    shl-int v3, v2, v3

    and-int/2addr v3, v2

    not-int v4, v3

    and-int/2addr v4, v2

    and-int/2addr p5, v3

    or-int/2addr p6, v4

    invoke-static {p1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v3

    if-nez v3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    if-eq p6, v2, :cond_6

    :cond_1
    new-instance v2, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v2, p2, v1}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v2}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$402(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;

    goto :goto_1

    :cond_2
    const/4 p5, 0x0

    move p6, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v3

    if-nez v3, :cond_4

    if-nez p5, :cond_5

    :cond_4
    if-eq p6, v2, :cond_6

    :cond_5
    new-instance v2, Linet/ipaddr/IncompatibleAddressException;

    invoke-direct {v2, p2, v1}, Linet/ipaddr/IncompatibleAddressException;-><init>(Linet/ipaddr/format/AddressItem;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_1
    shl-int/lit8 p1, p3, 0x8

    or-int/2addr p1, p5

    shl-int/lit8 p2, p4, 0x8

    or-int/2addr p2, p6

    invoke-virtual {p8, p1, p2, p7}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic d(III[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p2}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$isPrefixSubnet$11(II[II)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$3(ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$8(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic g(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$0(ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private getIPv4AddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private getIPv6AddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method private static getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p2}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2, p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getSegmentPrefixLength(ILjava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static getSegmentPrefixLength(ILinet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p1}, Linet/ipaddr/IPAddressSection;->bitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p1

    invoke-static {p0, p1, p2}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentPrefixLength(IILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private groupingIsSequential()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v0

    invoke-interface {v0}, Linet/ipaddr/format/AddressDivisionSeries;->isSequential()Z

    move-result v0
    :try_end_0
    .catch Linet/ipaddr/IncompatibleAddressException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic h(Linet/ipaddr/format/validate/AddressParseData;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$9(Linet/ipaddr/format/validate/AddressParseData;I)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$5(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic j([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$createIPv6Addresses$16([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I

    move-result p0

    return p0
.end method

.method public static synthetic k(I[I)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$isPrefixSubnet$13([II)I

    move-result p0

    return p0
.end method

.method public static synthetic l(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$2(ILinet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$createIPv4Addresses$14([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createIPv4Addresses$15([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createIPv6Addresses$16([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$createIPv6Addresses$17([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I
    .locals 0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSegment;->getUpperSegmentValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$getDivisionGrouping$0(ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/4 v0, 0x2

    if-ge p3, p1, :cond_0

    :goto_0
    invoke-virtual {p2, p3, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    sub-int/2addr p3, p1

    goto :goto_0

    :goto_1
    return-wide p1
.end method

.method private synthetic lambda$getDivisionGrouping$1(ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/4 v0, 0x4

    if-ge p3, p1, :cond_0

    :goto_0
    invoke-virtual {p2, p3, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    sub-int/2addr p3, p1

    goto :goto_0

    :goto_1
    return-wide p1
.end method

.method private synthetic lambda$getDivisionGrouping$2(ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/16 v0, 0xa

    if-ge p3, p1, :cond_0

    :goto_0
    invoke-virtual {p2, p3, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    sub-int/2addr p3, p1

    goto :goto_0

    :goto_1
    return-wide p1
.end method

.method private synthetic lambda$getDivisionGrouping$3(ILinet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/16 v0, 0xc

    if-ge p3, p1, :cond_0

    :goto_0
    invoke-virtual {p2, p3, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    sub-int/2addr p3, p1

    goto :goto_0

    :goto_1
    return-wide p1
.end method

.method private synthetic lambda$getDivisionGrouping$4(ILinet/ipaddr/format/validate/AddressParseData;I)I
    .locals 0

    if-ge p3, p1, :cond_0

    :goto_0
    invoke-virtual {p2, p3}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result p1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    sub-int/2addr p3, p1

    goto :goto_0

    :goto_1
    return p1
.end method

.method private static synthetic lambda$getDivisionGrouping$5(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$getDivisionGrouping$6(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$getDivisionGrouping$7(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$getDivisionGrouping$8(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$getDivisionGrouping$9(Linet/ipaddr/format/validate/AddressParseData;I)I
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isPrefixSubnet$10(II[II)I
    .locals 0

    if-lt p3, p0, :cond_1

    sub-int p0, p3, p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p3, p1

    :cond_1
    const/4 p0, 0x2

    invoke-static {p3, p0, p2}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static synthetic lambda$isPrefixSubnet$11(II[II)I
    .locals 0

    if-lt p3, p0, :cond_1

    sub-int p0, p3, p0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p3, p1

    :cond_1
    const/16 p0, 0xa

    invoke-static {p3, p0, p2}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static synthetic lambda$isPrefixSubnet$12([II)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0, p0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private static synthetic lambda$isPrefixSubnet$13([II)I
    .locals 1

    const/16 v0, 0xa

    invoke-static {p1, v0, p0}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II[I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static synthetic m(III[I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p3, p2}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$isPrefixSubnet$10(II[II)I

    move-result p0

    return p0
.end method

.method public static maskRange(JJJJJJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;
    .locals 25

    .line 1
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    xor-long v12, v2, v6

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p8

    move-wide/from16 v6, p12

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    iget v1, v1, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;->fullRangeBit:I

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Linet/ipaddr/format/validate/ParsedIPAddress;->WRAPPED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    goto :goto_0

    :cond_1
    sget-object v2, Linet/ipaddr/format/validate/ParsedIPAddress;->WRAPPED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    :goto_0
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    new-instance v3, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    invoke-direct {v3, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress$Masker;)V

    aput-object v3, v2, v1

    :cond_2
    return-object v3

    :cond_3
    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;

    invoke-direct {v1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress$Masker;)V

    return-object v1

    :cond_4
    cmp-long v16, v2, v6

    if-gtz v16, :cond_24

    cmp-long v16, v8, p12

    if-nez v16, :cond_5

    cmp-long v17, v10, p14

    if-eqz v17, :cond_6

    :cond_5
    cmp-long v17, v8, v14

    if-nez v17, :cond_7

    cmp-long v18, v10, v14

    if-nez v18, :cond_7

    :cond_6
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_7
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v12

    const-wide/16 v18, -0x1

    ushr-long v20, v18, v12

    and-long v20, v10, v20

    cmp-long v13, v20, v14

    const-wide/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v15, 0x40

    if-eqz v13, :cond_19

    cmp-long v13, v20, v22

    if-nez v13, :cond_8

    const/4 v13, 0x1

    goto :goto_1

    :cond_8
    move/from16 v13, v24

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v14

    add-int/lit8 v17, v14, 0x1

    ushr-long v18, v18, v17

    if-nez v13, :cond_a

    and-long v20, v10, v18

    cmp-long v13, v20, v18

    if-nez v13, :cond_9

    if-nez v16, :cond_9

    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    :cond_9
    move/from16 v13, v24

    :goto_3
    const-wide/16 v20, 0x0

    goto :goto_4

    :cond_a
    if-nez v16, :cond_9

    goto :goto_2

    :goto_4
    cmp-long v16, v0, v20

    if-nez v16, :cond_c

    cmp-long v16, v2, v20

    if-nez v16, :cond_c

    cmp-long v16, v4, p12

    if-nez v16, :cond_c

    cmp-long v16, v6, p14

    if-nez v16, :cond_c

    if-eqz v13, :cond_b

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_b
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_NON_SEQUENTIAL_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_c
    if-le v14, v12, :cond_12

    if-eqz v13, :cond_f

    rsub-int/lit8 v8, v14, 0x40

    sget-object v9, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_SHIFTED_EXTENDED:[Ljava/math/BigInteger;

    aget-object v10, v9, v8

    if-nez v10, :cond_d

    shl-long v10, v22, v8

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    aput-object v10, v9, v8

    :cond_d
    new-instance v8, Ljava/math/BigInteger;

    const/16 v9, 0x10

    invoke-static {v4, v5, v6, v7, v9}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v8, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v9}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_e

    const/16 v24, 0x1

    :cond_e
    move/from16 v13, v24

    :cond_f
    if-eqz v13, :cond_10

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    goto :goto_5

    :cond_10
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    :goto_5
    aget-object v1, v0, v14

    if-nez v1, :cond_11

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    invoke-direct {v1, v14, v13}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;-><init>(IZ)V

    aput-object v1, v0, v14

    :cond_11
    return-object v1

    :cond_12
    if-nez v13, :cond_18

    sget-object v12, Linet/ipaddr/format/validate/ParsedIPAddress;->HOST_MASK_EXTENDED:[Ljava/math/BigInteger;

    aget-object v13, v12, v14

    if-nez v13, :cond_13

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    new-instance v15, Ljava/math/BigInteger;

    const/16 v8, 0x8

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const/4 v9, 0x1

    invoke-direct {v15, v9, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    aput-object v13, v12, v14

    :cond_13
    sget-object v8, Linet/ipaddr/format/validate/ParsedIPAddress;->NETWORK_MASK_EXTENDED:[Ljava/math/BigInteger;

    aget-object v9, v8, v14

    if-nez v9, :cond_14

    invoke-virtual {v13}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v8, v14

    :cond_14
    new-instance v8, Ljava/math/BigInteger;

    const/16 v12, 0x10

    invoke-static {v4, v5, v6, v7, v12}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v8, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v12}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    move-wide/from16 v13, p8

    invoke-static {v13, v14, v10, v11, v12}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v3

    invoke-direct {v2, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    rsub-int/lit8 v3, v17, 0x7f

    :goto_6
    if-ltz v3, :cond_17

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_15

    move-object v0, v5

    :cond_15
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_16

    move-object v1, v5

    :cond_16
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_17
    new-instance v2, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    move-object/from16 p0, v2

    move-wide/from16 p1, v4

    move-wide/from16 p3, v6

    move-wide/from16 p5, v8

    move-wide/from16 p7, v0

    invoke-direct/range {p0 .. p8}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;-><init>(JJJJ)V

    return-object v2

    :cond_18
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_19
    move-wide v13, v8

    if-nez v17, :cond_1a

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_1a
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v8

    if-eqz v16, :cond_1c

    const/16 v9, 0x3f

    if-ge v8, v9, :cond_1c

    add-int/lit8 v9, v8, 0x1

    ushr-long v9, v18, v9

    and-long v11, v13, v9

    cmp-long v9, v11, v9

    if-nez v9, :cond_1b

    goto :goto_7

    :cond_1b
    move/from16 v9, v24

    goto :goto_8

    :cond_1c
    :goto_7
    const/4 v9, 0x1

    :goto_8
    if-eqz v9, :cond_21

    if-nez v8, :cond_1d

    sget-object v9, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_EXTENDED:Ljava/math/BigInteger;

    goto :goto_9

    :cond_1d
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    sget-object v9, Linet/ipaddr/format/validate/ParsedIPAddress;->HIGH_BIT:Ljava/math/BigInteger;

    goto :goto_9

    :cond_1e
    rsub-int/lit8 v9, v8, 0x40

    sget-object v10, Linet/ipaddr/format/validate/ParsedIPAddress;->ONE_SHIFTED:[Ljava/math/BigInteger;

    aget-object v11, v10, v9

    if-nez v11, :cond_1f

    shl-long v11, v22, v9

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v10, v9

    :cond_1f
    move-object v9, v11

    :goto_9
    new-instance v10, Ljava/math/BigInteger;

    const/16 v11, 0x10

    invoke-static {v4, v5, v6, v7, v11}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v10, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3, v11}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytesSizeAdjusted(JJI)[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_20

    move/from16 v24, v5

    :cond_20
    move/from16 v9, v24

    :cond_21
    const/16 v0, 0x40

    add-int/2addr v8, v0

    if-eqz v9, :cond_22

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    goto :goto_a

    :cond_22
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->EXTENDED_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    :goto_a
    aget-object v1, v0, v8

    if-nez v1, :cond_23

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;

    invoke-direct {v1, v8, v9}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;-><init>(IZ)V

    aput-object v1, v0, v8

    :cond_23
    return-object v1

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value > upper value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static maskRange(JJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
    .locals 8

    .line 2
    const-wide/16 v6, -0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/ParsedIPAddress;->maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    move-result-object p0

    return-object p0
.end method

.method public static maskRange(JJJJ)Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
    .locals 15

    .line 3
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_0
    if-gtz v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_10

    cmp-long v2, p4, p6

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    xor-long v2, p0, p2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_f

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    const-wide/16 v6, -0x1

    ushr-long v8, v6, v2

    and-long v8, p4, v8

    cmp-long v3, v8, v0

    if-eqz v3, :cond_f

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    const/16 v8, 0x3f

    if-ne v3, v8, :cond_2

    move-wide v9, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v3, 0x1

    ushr-long v9, v6, v9

    :goto_0
    and-long v11, p4, v9

    cmp-long v11, v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v11, :cond_3

    move v11, v13

    goto :goto_1

    :cond_3
    move v11, v12

    :goto_1
    cmp-long v14, p6, v6

    if-nez v14, :cond_5

    if-eqz v11, :cond_4

    if-le v3, v2, :cond_5

    :cond_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v14

    ushr-long/2addr v6, v14

    goto :goto_2

    :cond_5
    move-wide/from16 v6, p6

    :goto_2
    cmp-long v14, p0, v0

    if-nez v14, :cond_7

    cmp-long v6, p2, v6

    if-nez v6, :cond_7

    if-eqz v11, :cond_6

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_6
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_NON_SEQUENTIAL_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_7
    if-le v3, v2, :cond_b

    if-eqz v11, :cond_8

    if-ge v3, v8, :cond_8

    sub-long v0, p2, p0

    add-long/2addr v0, v4

    rsub-int/lit8 v2, v3, 0x40

    shl-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    move v12, v11

    :goto_3
    if-eqz v12, :cond_9

    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->SEQUENTIAL_FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    goto :goto_4

    :cond_9
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->FULL_RANGE_MASKERS:[Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    :goto_4
    aget-object v1, v0, v3

    if-nez v1, :cond_a

    new-instance v1, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;

    invoke-direct {v1, v3, v12}, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;-><init>(IZ)V

    aput-object v1, v0, v3

    :cond_a
    return-object v1

    :cond_b
    if-nez v11, :cond_f

    not-long v4, v9

    and-long v4, p2, v4

    or-long v6, p0, v9

    add-int/2addr v3, v13

    sub-int/2addr v8, v3

    shl-int v2, v13, v8

    int-to-long v2, v2

    :goto_5
    cmp-long v8, v2, v0

    if-eqz v8, :cond_e

    and-long v8, p4, v2

    cmp-long v8, v8, v0

    if-eqz v8, :cond_d

    or-long v8, v4, v2

    cmp-long v10, v8, p2

    if-gtz v10, :cond_c

    move-wide v4, v8

    :cond_c
    not-long v8, v2

    and-long/2addr v8, v6

    cmp-long v10, v8, p0

    if-ltz v10, :cond_d

    move-wide v6, v8

    :cond_d
    ushr-long/2addr v2, v13

    goto :goto_5

    :cond_e
    new-instance v0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueMasker;

    invoke-direct {v0, v6, v7, v4, v5}, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueMasker;-><init>(JJ)V

    return-object v0

    :cond_f
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_10
    :goto_6
    sget-object v0, Linet/ipaddr/format/validate/ParsedIPAddress;->DEFAULT_MASKER:Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value > upper value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private matchesPrefix(Ljava/lang/String;[I)Ljava/lang/Boolean;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv4()Z

    move-result v4

    const/16 v5, 0x2f

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-lt v3, v7, :cond_2

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_1

    add-int/lit8 v8, v3, -0x3

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_2

    add-int/lit8 v8, v3, -0x4

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_2

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0xf

    const/16 v11, 0x8

    const/4 v12, 0x3

    const/4 v14, 0x1

    if-nez v9, :cond_5

    if-eqz v4, :cond_3

    move v11, v7

    :cond_3
    add-int/lit8 v8, v11, -0x1

    invoke-static {v8, v10, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v2

    if-le v3, v2, :cond_4

    return-object v6

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v15, :cond_7

    if-eqz v4, :cond_6

    move v11, v7

    :cond_6
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_7
    const/4 v15, 0x6

    if-eqz v4, :cond_a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v14, v11}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result v8

    invoke-static {v8, v10, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v11, v13, v8}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v11, :cond_8

    move v11, v14

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v8, 0x1

    add-int/lit8 v16, v10, 0x1

    if-eqz v11, :cond_9

    invoke-static {v8, v15, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v2

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    move/from16 v14, v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    move/from16 v23, v13

    move v13, v2

    move v2, v10

    move/from16 v10, v23

    move/from16 v24, v11

    move v11, v7

    move/from16 v7, v24

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v5, 0x2

    const/16 v14, 0x10

    invoke-static {v13, v5, v14}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getNetworkSegmentIndex(III)I

    move-result v13

    invoke-virtual {v8}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v8

    rsub-int/lit8 v8, v8, 0x8

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorSegmentIndex()I

    move-result v11

    if-gt v11, v13, :cond_b

    const/16 v18, 0x1

    goto :goto_4

    :cond_b
    const/16 v18, 0x0

    :goto_4
    if-eqz v18, :cond_c

    add-int v6, v11, v8

    if-lt v6, v13, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v14, v7, v13}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getPrefixedSegmentPrefixLength(III)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v6, :cond_f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v14, :cond_d

    const/4 v7, 0x1

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v8, v13, 0x1

    invoke-static {v11, v10, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v10

    add-int/lit8 v14, v10, 0x1

    if-eqz v7, :cond_e

    if-lez v11, :cond_e

    invoke-static {v11, v15, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v2

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v5, v10

    move v10, v8

    move v8, v13

    const/16 v11, 0x8

    move v13, v2

    move v2, v14

    move v14, v5

    const/4 v5, 0x0

    goto :goto_b

    :cond_f
    if-ge v11, v13, :cond_10

    sub-int v8, v13, v8

    goto :goto_8

    :cond_10
    move v8, v13

    :goto_8
    invoke-static {v8, v10, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v11, v12

    shr-int/lit8 v5, v11, 0x2

    const/4 v11, 0x4

    rsub-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_12

    const/16 v7, 0xe

    invoke-static {v8, v7, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v7

    add-int v11, v7, v5

    if-le v11, v10, :cond_11

    sub-int v5, v10, v7

    :cond_11
    sub-int/2addr v10, v5

    invoke-static {v8, v15, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v2

    move v14, v7

    move v8, v13

    const/4 v7, 0x1

    const/16 v11, 0x8

    move v13, v2

    move v2, v10

    move v10, v8

    goto :goto_b

    :cond_12
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v14, :cond_13

    const/4 v11, 0x1

    goto :goto_9

    :cond_13
    const/4 v11, 0x0

    :goto_9
    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v14, v10, 0x1

    if-eqz v11, :cond_14

    invoke-static {v8, v15, v2}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II[I)I

    move-result v2

    move v8, v13

    move v13, v2

    move v2, v10

    :goto_a
    move v10, v7

    move v7, v11

    const/16 v11, 0x8

    goto :goto_b

    :cond_14
    move v2, v10

    move v8, v13

    const/4 v13, 0x0

    goto :goto_a

    :goto_b
    iget-object v15, v0, Linet/ipaddr/format/validate/AddressParseData;->str:Ljava/lang/CharSequence;

    move/from16 v19, v8

    move/from16 p2, v14

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_c
    if-ge v12, v2, :cond_3e

    invoke-interface {v15, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v12, v3, :cond_15

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v23, v20

    move/from16 v20, v6

    move/from16 v6, v23

    goto :goto_d

    :cond_15
    move/from16 v20, v6

    const/4 v6, 0x0

    :goto_d
    move/from16 v21, v5

    if-eq v8, v6, :cond_3a

    const/16 v5, 0x31

    if-lt v8, v5, :cond_18

    const/16 v5, 0x39

    if-gt v8, v5, :cond_18

    :cond_16
    :goto_e
    move/from16 v22, v10

    :cond_17
    const/16 v5, 0x41

    goto :goto_10

    :cond_18
    const/16 v5, 0x61

    if-lt v8, v5, :cond_19

    const/16 v5, 0x66

    if-gt v8, v5, :cond_19

    goto :goto_e

    :cond_19
    const/16 v5, 0x41

    if-lt v8, v5, :cond_1a

    const/16 v5, 0x46

    if-gt v8, v5, :cond_1a

    add-int/lit8 v5, v8, 0x20

    int-to-char v5, v5

    if-ne v8, v5, :cond_16

    move/from16 v22, v10

    :goto_f
    const/16 v5, 0x2f

    goto/16 :goto_1a

    :cond_1a
    const/16 v5, 0x2d

    if-gt v8, v5, :cond_1c

    const/16 v5, 0x25

    if-lt v8, v5, :cond_1c

    const/16 v5, 0x2a

    if-eq v8, v5, :cond_1b

    const/16 v5, 0x2d

    if-eq v8, v5, :cond_1b

    const/16 v5, 0x25

    if-ne v8, v5, :cond_16

    :cond_1b
    const/4 v5, 0x0

    return-object v5

    :cond_1c
    const/4 v5, 0x0

    move/from16 v22, v10

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_17

    return-object v5

    :goto_10
    if-lt v6, v5, :cond_1d

    const/16 v5, 0x46

    if-gt v6, v5, :cond_1d

    add-int/lit8 v5, v6, 0x20

    int-to-char v5, v5

    if-ne v6, v5, :cond_1d

    goto :goto_f

    :cond_1d
    if-eqz v7, :cond_1f

    if-ge v12, v13, :cond_1e

    const/4 v2, 0x1

    if-ne v13, v2, :cond_1f

    :cond_1e
    const/4 v2, 0x0

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    goto :goto_12

    :goto_11
    return-object v2

    :goto_12
    invoke-virtual {v0, v14}, Linet/ipaddr/format/validate/AddressParseData;->hasRange(I)Z

    move-result v5

    if-eqz v5, :cond_20

    return-object v2

    :cond_20
    const/16 v2, 0x31

    if-lt v6, v2, :cond_21

    const/16 v2, 0x39

    if-gt v6, v2, :cond_21

    goto/16 :goto_15

    :cond_21
    const/16 v2, 0x61

    if-lt v6, v2, :cond_22

    const/16 v2, 0x66

    if-gt v6, v2, :cond_22

    goto/16 :goto_15

    :cond_22
    const/16 v2, 0x2d

    if-gt v6, v2, :cond_24

    const/16 v5, 0x25

    if-lt v6, v5, :cond_24

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_23

    if-eq v6, v2, :cond_23

    if-ne v6, v5, :cond_25

    :cond_23
    const/4 v2, 0x0

    return-object v2

    :cond_24
    const/4 v2, 0x0

    const/16 v5, 0x5f

    if-ne v6, v5, :cond_25

    return-object v2

    :cond_25
    if-nez v17, :cond_2c

    const/16 v2, 0x30

    if-ne v8, v2, :cond_29

    const/16 v2, 0x3a

    if-eq v6, v2, :cond_26

    if-nez v6, :cond_27

    :cond_26
    const/4 v5, 0x0

    goto :goto_13

    :cond_27
    add-int/lit8 v5, v12, 0x1

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v5, v7, :cond_28

    invoke-interface {v15, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_28

    if-eq v5, v2, :cond_28

    const/4 v5, 0x0

    return-object v5

    :cond_28
    const/4 v5, 0x0

    goto :goto_14

    :goto_13
    return-object v5

    :cond_29
    move v7, v2

    const/16 v2, 0x3a

    const/4 v5, 0x0

    if-ne v6, v7, :cond_2d

    if-ne v8, v2, :cond_2a

    return-object v5

    :cond_2a
    const/4 v4, 0x1

    add-int/2addr v12, v4

    if-ge v12, v3, :cond_2b

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_2b

    if-eq v1, v2, :cond_2b

    return-object v5

    :cond_2b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_2c
    const/16 v2, 0x3a

    :cond_2d
    :goto_14
    if-ne v6, v2, :cond_2e

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_2e
    const/16 v2, 0x2e

    if-ne v6, v2, :cond_30

    if-nez v4, :cond_2f

    const/4 v2, 0x0

    return-object v2

    :cond_2f
    add-int/lit8 v14, v14, 0x1

    :cond_30
    :goto_15
    const/4 v2, 0x1

    add-int/2addr v12, v2

    :goto_16
    if-ge v12, v3, :cond_37

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_31

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_31
    const/16 v5, 0x2f

    const/16 v6, 0x25

    if-gt v2, v5, :cond_33

    if-lt v2, v6, :cond_33

    const/16 v7, 0x2e

    if-ne v2, v7, :cond_34

    if-nez v4, :cond_32

    const/4 v2, 0x0

    return-object v2

    :cond_32
    add-int/lit8 v14, v14, 0x1

    :cond_33
    const/16 v7, 0x2a

    const/16 v8, 0x2d

    const/16 v9, 0x5f

    goto :goto_17

    :cond_34
    if-eq v2, v5, :cond_35

    const/16 v7, 0x2a

    if-eq v2, v7, :cond_35

    const/16 v8, 0x2d

    if-eq v2, v8, :cond_35

    if-eq v2, v6, :cond_35

    const/16 v9, 0x5f

    if-ne v2, v9, :cond_36

    :cond_35
    const/4 v1, 0x0

    return-object v1

    :cond_36
    :goto_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_37
    if-eqz v4, :cond_39

    const/4 v1, 0x1

    add-int/2addr v14, v1

    const/4 v1, 0x4

    if-ne v14, v1, :cond_38

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_38
    const/4 v1, 0x0

    goto :goto_18

    :cond_39
    if-lez v14, :cond_38

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_18
    return-object v1

    :cond_3a
    move/from16 v22, v10

    const/16 v5, 0x2f

    const/16 v6, 0x30

    if-eq v8, v6, :cond_3d

    const/16 v6, 0x3a

    if-eq v8, v6, :cond_3c

    const/16 v6, 0x2e

    if-ne v8, v6, :cond_3b

    goto :goto_19

    :cond_3b
    const/16 v17, 0x1

    goto :goto_1a

    :cond_3c
    :goto_19
    add-int/lit8 v14, v14, 0x1

    const/16 v17, 0x0

    :cond_3d
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v20

    move/from16 v5, v21

    move/from16 v10, v22

    goto/16 :goto_c

    :cond_3e
    move/from16 v21, v5

    move/from16 v20, v6

    move/from16 v22, v10

    if-eqz v9, :cond_65

    move/from16 v13, v22

    if-ne v2, v3, :cond_40

    if-eq v13, v11, :cond_65

    if-eqz v18, :cond_3f

    if-le v13, v11, :cond_65

    :cond_3f
    const/4 v5, 0x0

    return-object v5

    :cond_40
    const/4 v5, 0x0

    if-eqz v4, :cond_50

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_45

    add-int v4, v2, v21

    if-ge v3, v4, :cond_41

    return-object v5

    :cond_41
    if-eq v3, v4, :cond_44

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_42

    return-object v5

    :cond_42
    :goto_1b
    if-ge v2, v4, :cond_45

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_43

    return-object v5

    :cond_43
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    :cond_44
    const/16 v7, 0x2e

    goto :goto_1b

    :cond_45
    move/from16 v14, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v14, v3, :cond_4c

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-gt v6, v7, :cond_47

    const/16 v7, 0x30

    if-lt v6, v7, :cond_47

    if-nez v4, :cond_46

    const/16 v7, 0x33

    if-lt v6, v7, :cond_46

    const/4 v2, 0x1

    :cond_46
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    goto :goto_1e

    :cond_47
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4b

    if-nez v4, :cond_48

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_48
    if-eqz v2, :cond_4a

    const/4 v2, 0x3

    if-lt v4, v2, :cond_49

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_49
    const/4 v6, 0x0

    goto :goto_1d

    :cond_4a
    const/4 v2, 0x3

    if-le v4, v2, :cond_49

    const/4 v6, 0x0

    return-object v6

    :goto_1d
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    :cond_4b
    const/4 v6, 0x0

    return-object v6

    :cond_4c
    const/4 v6, 0x0

    if-nez v4, :cond_4d

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_4d
    const/4 v1, 0x3

    if-le v4, v1, :cond_4e

    return-object v6

    :cond_4e
    if-eqz v2, :cond_4f

    if-ne v4, v1, :cond_4f

    return-object v6

    :cond_4f
    add-int v10, v13, v5

    const/4 v1, 0x1

    add-int/2addr v10, v1

    if-eq v10, v11, :cond_65

    return-object v6

    :cond_50
    move-object v6, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_55

    add-int v5, v2, v21

    if-ge v3, v5, :cond_51

    return-object v6

    :cond_51
    if-eq v3, v5, :cond_54

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_52

    return-object v6

    :cond_52
    :goto_1f
    if-ge v2, v5, :cond_55

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_53

    return-object v6

    :cond_53
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    :cond_54
    const/16 v7, 0x3a

    goto :goto_1f

    :cond_55
    move/from16 v14, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_20
    if-ge v14, v3, :cond_5f

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-gt v5, v6, :cond_56

    if-lt v5, v7, :cond_56

    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x61

    const/16 v9, 0x66

    const/16 v10, 0x41

    const/16 v12, 0x46

    :goto_21
    const/16 v15, 0x2e

    goto :goto_25

    :cond_56
    const/16 v8, 0x61

    const/16 v9, 0x66

    const/16 v10, 0x41

    if-lt v5, v8, :cond_58

    if-le v5, v9, :cond_57

    goto :goto_22

    :cond_57
    const/16 v12, 0x46

    goto :goto_23

    :cond_58
    :goto_22
    const/16 v12, 0x46

    if-lt v5, v10, :cond_59

    if-gt v5, v12, :cond_59

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_59
    const/16 v15, 0x2e

    if-ne v5, v15, :cond_5a

    const/16 v16, 0x0

    return-object v16

    :cond_5a
    const/16 v6, 0x3a

    const/16 v16, 0x0

    if-ne v5, v6, :cond_5e

    const/4 v5, 0x4

    if-le v2, v5, :cond_5b

    return-object v16

    :cond_5b
    if-nez v2, :cond_5d

    if-eqz v18, :cond_5c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_5c
    const/16 v18, 0x1

    goto :goto_24

    :cond_5d
    const/4 v2, 0x0

    :goto_24
    add-int/lit8 v4, v4, 0x1

    :goto_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_20

    :cond_5e
    move-object/from16 v2, v16

    return-object v2

    :cond_5f
    if-nez v2, :cond_61

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    if-gez v14, :cond_60

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_60
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_62

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_61
    const/4 v1, 0x4

    if-le v2, v1, :cond_62

    const/4 v1, 0x0

    return-object v1

    :cond_62
    add-int v10, v13, v4

    const/4 v1, 0x1

    add-int/2addr v10, v1

    if-gt v10, v11, :cond_63

    if-ge v10, v11, :cond_64

    if-nez v18, :cond_64

    :cond_63
    const/4 v1, 0x0

    goto :goto_26

    :cond_64
    if-eqz v20, :cond_65

    sub-int/2addr v11, v4

    move/from16 v13, v19

    if-gt v11, v13, :cond_65

    const/4 v1, 0x0

    :goto_26
    return-object v1

    :cond_65
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method public static synthetic n(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$7(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic o([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$createIPv4Addresses$15([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I

    move-result p0

    return p0
.end method

.method public static synthetic p(I[I)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$isPrefixSubnet$12([II)I

    move-result p0

    return p0
.end method

.method public static synthetic q([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$createIPv4Addresses$14([Linet/ipaddr/ipv4/IPv4AddressSegment;I)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$4(ILinet/ipaddr/format/validate/AddressParseData;I)I

    move-result p0

    return p0
.end method

.method public static synthetic s([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$createIPv6Addresses$17([Linet/ipaddr/ipv6/IPv6AddressSegment;I)I

    move-result p0

    return p0
.end method

.method private skipContains()Z
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv4()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains:Ljava/lang/Boolean;

    return v2

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingMixedIPv6()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains:Ljava/lang/Boolean;

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic t(Linet/ipaddr/format/validate/AddressParseData;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->lambda$getDivisionGrouping$6(Linet/ipaddr/format/validate/AddressParseData;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toBytes(JJI)[B
    .locals 5

    new-array v0, p4, [B

    add-int/lit8 v1, p4, -0x1

    const/16 v2, 0x8

    sub-int/2addr p4, v2

    :goto_0
    if-ltz v1, :cond_1

    const-wide/16 v3, 0xff

    if-lt v1, p4, :cond_0

    and-long/2addr v3, p0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    ushr-long/2addr p0, v2

    goto :goto_1

    :cond_0
    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    ushr-long/2addr p2, v2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toBytesSizeAdjusted(JJI)[B
    .locals 6

    add-int/lit8 v0, p4, -0x8

    add-int v1, p4, v0

    const/4 v2, 0x1

    move v3, p4

    :goto_0
    if-gt v2, p4, :cond_2

    if-gt v2, v0, :cond_0

    sub-int v4, p4, v2

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p2, v4

    :goto_1
    long-to-int v4, v4

    int-to-byte v4, v4

    goto :goto_2

    :cond_0
    sub-int v4, v1, v2

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p0, v4

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    invoke-static {p0, p1, p2, p3, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytes(JJI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->contains(Linet/ipaddr/format/validate/ParsedIPAddress;ZZ)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public contains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->has_inet_aton_value:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasIPv4LeadingZeros:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBinary:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingIPv4()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2, v3, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isPrefixSubnet(Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;[I)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->matchesPrefix(Ljava/lang/String;[I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public createAddresses(ZZZ)V
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->createIPv4Addresses(ZZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->createIPv6Addresses(ZZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doneTranslating()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddressException()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutRange()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutGrouping()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAddresses(ZZZ)V

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->doneTranslating()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->releaseSegmentData()V

    :cond_2
    monitor-exit p0

    :cond_3
    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDivisionGrouping()Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 53

    move-object/from16 v1, p0

    iget-object v0, v1, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$300(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutRange()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutRange()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_33

    :cond_2
    :goto_0
    invoke-virtual {v1, v2, v3, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAddresses(ZZZ)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v4, v1, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    invoke-static {v4}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$300(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v0

    if-nez v0, :cond_3c

    monitor-enter v4

    :try_start_1
    invoke-static {v4}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$300(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/format/IPAddressDivisionSeries;

    move-result-object v0

    if-nez v0, :cond_3a

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->getNetwork()Linet/ipaddr/ipv4/IPv4AddressNetwork;

    move-result-object v5

    const/16 v7, 0xa

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_31

    :cond_5
    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v5

    invoke-virtual {v5}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v5

    const/16 v7, 0x10

    :goto_1
    invoke-virtual {v5}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->isProvidingMixedIPv6()Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v14

    invoke-virtual {v14}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v13

    if-eqz v17, :cond_6

    iget-object v8, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v8}, Linet/ipaddr/format/validate/ParsedIPAddress;->getSegmentCount()I

    move-result v8

    add-int/2addr v8, v13

    move/from16 v18, v8

    goto :goto_2

    :cond_6
    move/from16 v18, v13

    :goto_2
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getPrefixLength(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderMask()Linet/ipaddr/IPAddress;

    move-result-object v8

    const/16 v19, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8, v2}, Linet/ipaddr/IPAddress;->getBlockMaskPrefixLength(Z)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_7

    move-object/from16 v12, v19

    goto :goto_3

    :cond_7
    move-object v12, v8

    :goto_3
    if-eqz v12, :cond_8

    move/from16 v20, v2

    goto :goto_4

    :cond_8
    move/from16 v20, v3

    :goto_4
    const/4 v11, 0x2

    const/4 v10, 0x4

    if-eqz v0, :cond_b

    invoke-virtual {v15}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v8

    if-eqz v8, :cond_9

    move/from16 v22, v2

    move/from16 v23, v22

    move v2, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object v6, v14

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v15}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->zeroHostsAreSubnets()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x3

    if-eqz v17, :cond_a

    new-instance v9, Linet/ipaddr/format/validate/a;

    invoke-direct {v9, v1, v13, v14, v3}, Linet/ipaddr/format/validate/a;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v6, Linet/ipaddr/format/validate/a;

    invoke-direct {v6, v1, v13, v14, v2}, Linet/ipaddr/format/validate/a;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v2, Linet/ipaddr/format/validate/a;

    invoke-direct {v2, v1, v13, v14, v11}, Linet/ipaddr/format/validate/a;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v11, Linet/ipaddr/format/validate/a;

    invoke-direct {v11, v1, v13, v14, v8}, Linet/ipaddr/format/validate/a;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v8, Linet/ipaddr/format/validate/a;

    invoke-direct {v8, v1, v13, v14, v10}, Linet/ipaddr/format/validate/a;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;ILinet/ipaddr/format/validate/AddressParseData;I)V

    const/16 v23, 0x0

    move-object/from16 v24, v8

    move-object v8, v9

    move-object v9, v6

    move v6, v10

    move-object v10, v2

    const/4 v2, 0x2

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    move/from16 v26, v13

    move/from16 v13, v18

    move-object v6, v14

    move-object v14, v0

    move/from16 v16, v23

    invoke-static/range {v8 .. v16}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;ILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result v8

    move/from16 v23, v8

    const/16 v22, 0x1

    goto :goto_5

    :cond_a
    move v2, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object v6, v14

    new-instance v9, Linet/ipaddr/format/validate/b;

    invoke-direct {v9, v6, v3}, Linet/ipaddr/format/validate/b;-><init>(Linet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v10, Linet/ipaddr/format/validate/b;

    const/4 v14, 0x1

    invoke-direct {v10, v6, v14}, Linet/ipaddr/format/validate/b;-><init>(Linet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v11, Linet/ipaddr/format/validate/b;

    invoke-direct {v11, v6, v2}, Linet/ipaddr/format/validate/b;-><init>(Linet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v12, Linet/ipaddr/format/validate/b;

    invoke-direct {v12, v6, v8}, Linet/ipaddr/format/validate/b;-><init>(Linet/ipaddr/format/validate/AddressParseData;I)V

    new-instance v13, Linet/ipaddr/format/validate/b;

    const/4 v8, 0x4

    invoke-direct {v13, v6, v8}, Linet/ipaddr/format/validate/b;-><init>(Linet/ipaddr/format/validate/AddressParseData;I)V

    const/16 v16, 0x0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v18

    move/from16 v22, v14

    move-object v14, v0

    invoke-static/range {v8 .. v16}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionValueProvider;Linet/ipaddr/format/standard/AddressDivisionGrouping$DivisionLengthProvider;ILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result v8

    move/from16 v23, v8

    goto :goto_5

    :cond_b
    move/from16 v22, v2

    move v2, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    move-object v6, v14

    move/from16 v23, v3

    :goto_5
    move v8, v3

    :goto_6
    const/16 v15, 0x40

    move/from16 v9, v26

    if-ge v8, v9, :cond_d

    invoke-virtual {v6, v8}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v10

    if-lt v10, v15, :cond_c

    move/from16 v14, v22

    goto :goto_7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v26, v9

    goto :goto_6

    :cond_d
    move v14, v3

    :goto_7
    if-eqz v17, :cond_f

    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v6, v13}, Linet/ipaddr/format/validate/AddressParseData;->isMergedMixed(I)Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v18, v18, -0x1

    add-int/lit8 v13, v9, -0x1

    if-nez v14, :cond_e

    invoke-virtual {v6, v13}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v9

    iget-object v10, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v10, v3}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v9, v10

    if-lt v9, v15, :cond_e

    move/from16 v17, v8

    move v14, v13

    move/from16 v13, v18

    move/from16 v8, v22

    goto :goto_8

    :cond_e
    move/from16 v17, v8

    move v8, v14

    move v14, v13

    move/from16 v13, v18

    goto :goto_8

    :cond_f
    move/from16 v17, v3

    move v8, v14

    move/from16 v13, v18

    move v14, v9

    :goto_8
    const-wide/16 v26, 0x0

    if-eqz v20, :cond_13

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Linet/ipaddr/IPAddress;->getBitsPerSegment()I

    move-result v9

    move v11, v3

    move-wide/from16 v28, v26

    :goto_9
    const/4 v10, 0x4

    if-ge v11, v10, :cond_10

    shl-long v28, v28, v9

    move-object/from16 v10, v25

    invoke-interface {v10, v11}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v12

    invoke-virtual {v12}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v25, v4

    int-to-long v3, v12

    or-long v28, v28, v3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v25

    const/4 v3, 0x0

    move-object/from16 v25, v10

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v25, v4

    :goto_a
    move-object/from16 v1, v25

    goto/16 :goto_31

    :cond_10
    move-object/from16 v10, v25

    move-object/from16 v25, v4

    :try_start_3
    invoke-virtual {v10}, Linet/ipaddr/IPAddress;->isIPv6()Z

    move-result v3

    if-eqz v3, :cond_12

    move-wide/from16 v11, v26

    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x4

    if-ge v3, v4, :cond_11

    shl-long/2addr v11, v9

    add-int/lit8 v4, v3, 0x4

    invoke-interface {v10, v4}, Linet/ipaddr/IPAddressSegmentSeries;->getSegment(I)Linet/ipaddr/IPAddressSegment;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddressSegment;->getSegmentValue()I

    move-result v4

    move/from16 v16, v3

    int-to-long v2, v4

    or-long/2addr v11, v2

    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x2

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_11
    mul-int/lit8 v2, v9, 0x8

    move-wide/from16 v36, v11

    goto :goto_c

    :cond_12
    const/4 v2, 0x4

    mul-int/lit8 v3, v9, 0x4

    move v2, v3

    move-wide/from16 v36, v28

    move-wide/from16 v28, v26

    goto :goto_c

    :cond_13
    move-object/from16 v25, v4

    move-wide/from16 v28, v26

    move-wide/from16 v36, v28

    const/4 v2, 0x0

    :goto_c
    if-eqz v8, :cond_2e

    new-array v12, v13, [Linet/ipaddr/format/large/IPAddressLargeDivision;

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_d
    if-ge v11, v13, :cond_2d

    if-ge v11, v14, :cond_14

    move/from16 v8, v22

    goto :goto_e

    :cond_14
    const/4 v8, 0x0

    :goto_e
    if-eqz v8, :cond_1a

    invoke-virtual {v6, v11}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v9

    if-le v9, v15, :cond_15

    move/from16 v10, v22

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v6, v11}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v31

    if-eqz v31, :cond_19

    if-eqz v10, :cond_17

    add-int/lit8 v3, v9, -0x40

    if-ne v3, v15, :cond_16

    const-wide/16 v3, -0x1

    const-wide/16 v31, -0x1

    goto :goto_10

    :cond_16
    const-wide/16 v31, -0x1

    shl-long v3, v31, v3

    not-long v3, v3

    :goto_10
    move-wide/from16 v42, v3

    move-wide/from16 v33, v26

    move-wide/from16 v40, v33

    move-wide/from16 v38, v31

    :goto_11
    const/4 v3, 0x4

    goto :goto_13

    :cond_17
    const-wide/16 v31, -0x1

    if-ne v9, v15, :cond_18

    move-wide/from16 v3, v31

    goto :goto_12

    :cond_18
    shl-long v3, v31, v9

    not-long v3, v3

    :goto_12
    move-wide/from16 v38, v3

    move-wide/from16 v33, v26

    move-wide/from16 v40, v33

    move-wide/from16 v42, v40

    goto :goto_11

    :cond_19
    const/4 v3, 0x2

    invoke-virtual {v6, v11, v3}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v33

    const/16 v3, 0xa

    invoke-virtual {v6, v11, v3}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v38

    const/4 v3, 0x4

    invoke-virtual {v6, v11, v3}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v40

    const/16 v4, 0xc

    invoke-virtual {v6, v11, v4}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v42

    :goto_13
    move/from16 v35, v7

    move v3, v9

    move-wide/from16 v51, v38

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    move-wide/from16 v6, v33

    move-wide/from16 v4, v40

    move/from16 v40, v35

    move-object/from16 v34, v12

    move/from16 v33, v13

    move-wide/from16 v12, v42

    move-wide/from16 v41, v51

    goto/16 :goto_19

    :cond_1a
    const/4 v3, 0x4

    if-eqz v17, :cond_1f

    if-ne v11, v14, :cond_1f

    invoke-virtual {v6, v11}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v4

    iget-object v8, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v8

    add-int v9, v4, v8

    if-le v9, v15, :cond_1b

    move/from16 v4, v22

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_1d

    add-int/lit8 v8, v9, -0x40

    move v10, v4

    if-ne v8, v15, :cond_1c

    const-wide/16 v3, -0x1

    const-wide/16 v31, -0x1

    goto :goto_15

    :cond_1c
    const-wide/16 v31, -0x1

    shl-long v3, v31, v8

    not-long v3, v3

    :goto_15
    move-wide/from16 v42, v3

    move-wide/from16 v3, v31

    goto :goto_17

    :cond_1d
    move v10, v4

    const-wide/16 v31, -0x1

    if-ne v9, v15, :cond_1e

    move-wide/from16 v3, v31

    goto :goto_16

    :cond_1e
    shl-long v3, v31, v9

    not-long v3, v3

    :goto_16
    move-wide/from16 v42, v26

    :goto_17
    move-object/from16 v39, v5

    move-object/from16 v38, v6

    move/from16 v35, v7

    move/from16 v40, v35

    move-object/from16 v34, v12

    move/from16 v33, v13

    move/from16 v8, v22

    move-wide/from16 v6, v26

    move-wide/from16 v12, v42

    move-wide/from16 v41, v3

    move v3, v9

    move-wide v4, v6

    goto :goto_19

    :cond_1f
    sub-int v3, v11, v14

    iget-object v4, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v4, v3}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v9

    iget-object v4, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v4, v3}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v4

    if-eqz v4, :cond_20

    const-wide/16 v31, -0x1

    shl-long v3, v31, v9

    not-long v3, v3

    move-wide/from16 v33, v26

    goto :goto_18

    :cond_20
    iget-object v4, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v10, 0x2

    invoke-virtual {v4, v3, v10}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v33

    iget-object v4, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/16 v10, 0xa

    invoke-virtual {v4, v3, v10}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v3

    :goto_18
    move-wide/from16 v41, v3

    move-object/from16 v39, v5

    move-object/from16 v38, v6

    move/from16 v35, v7

    move v3, v9

    move-wide/from16 v4, v26

    move-wide/from16 v6, v33

    const/4 v10, 0x0

    const/16 v40, 0xa

    move-object/from16 v34, v12

    move/from16 v33, v13

    move-wide v12, v4

    :goto_19
    if-nez v0, :cond_27

    if-eqz v20, :cond_26

    if-eqz v8, :cond_21

    iget-object v8, v1, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v8, v8, v11

    goto :goto_1a

    :cond_21
    iget-object v8, v1, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    iget-object v8, v8, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v8, v8, v11

    :goto_1a
    check-cast v8, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;

    invoke-virtual {v8}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v9

    if-eqz v9, :cond_25

    if-eqz v10, :cond_22

    sub-int v9, v2, v3

    move/from16 v43, v11

    ushr-long v10, v28, v9

    ushr-long v44, v36, v9

    rsub-int/lit8 v9, v9, 0x40

    shl-long v46, v28, v9

    move-object/from16 v48, v0

    or-long v0, v44, v46

    invoke-virtual {v8, v4, v5, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedLowerMasked(JJ)J

    move-result-wide v4

    invoke-virtual {v8, v12, v13, v10, v11}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedUpperMasked(JJ)J

    move-result-wide v12

    invoke-virtual {v8, v6, v7, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v6

    move-wide/from16 v9, v41

    :goto_1b
    invoke-virtual {v8, v9, v10, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v0

    goto :goto_1d

    :cond_22
    move-object/from16 v48, v0

    move/from16 v43, v11

    move-wide/from16 v9, v41

    if-le v2, v15, :cond_24

    add-int/lit8 v0, v2, -0x40

    if-lt v0, v3, :cond_23

    sub-int/2addr v0, v3

    ushr-long v0, v28, v0

    goto :goto_1c

    :cond_23
    sub-int v0, v3, v0

    shl-long v41, v28, v0

    rsub-int/lit8 v0, v0, 0x40

    shr-long v0, v36, v0

    or-long v0, v41, v0

    goto :goto_1c

    :cond_24
    sub-int v0, v2, v3

    ushr-long v0, v36, v0

    :goto_1c
    invoke-virtual {v8, v6, v7, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v6

    goto :goto_1b

    :goto_1d
    sub-int/2addr v2, v3

    move-wide v9, v0

    :goto_1e
    move/from16 v42, v3

    move-object/from16 v0, v19

    goto/16 :goto_23

    :cond_25
    move-wide/from16 v9, v41

    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    shl-long v1, v28, v15

    or-long v43, v1, v36

    const-string v45, "ipaddress.error.maskMismatch"

    move-object/from16 v38, v0

    move-wide/from16 v39, v6

    move-wide/from16 v41, v9

    invoke-direct/range {v38 .. v45}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    throw v0

    :cond_26
    move-object/from16 v48, v0

    move/from16 v43, v11

    move-wide/from16 v9, v41

    goto :goto_1e

    :cond_27
    move-object/from16 v48, v0

    move/from16 v43, v11

    move-wide/from16 v0, v41

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v8, v16

    invoke-static {v3, v8}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getDivisionPrefixLength(II)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v23, :cond_2c

    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v3, :cond_2c

    if-eqz v10, :cond_2a

    add-int/lit8 v9, v3, -0x40

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v9, :cond_28

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v9, v10, v9

    move/from16 v41, v2

    move/from16 v42, v3

    move-wide v2, v12

    goto :goto_20

    :cond_28
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v9, v10

    move/from16 v41, v2

    move/from16 v42, v3

    if-ne v9, v15, :cond_29

    move-wide/from16 v4, v26

    const-wide/16 v2, -0x1

    :goto_1f
    const/4 v9, 0x0

    goto :goto_20

    :cond_29
    const-wide/16 v10, -0x1

    shl-long v2, v10, v9

    and-long/2addr v4, v2

    not-long v2, v2

    or-long/2addr v2, v12

    goto :goto_1f

    :goto_20
    move-wide v12, v2

    move v2, v15

    goto :goto_21

    :cond_2a
    move/from16 v41, v2

    move/from16 v42, v3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v2, v42

    :goto_21
    sub-int/2addr v2, v9

    if-ne v2, v15, :cond_2b

    move-object v0, v8

    move-wide/from16 v6, v26

    move/from16 v2, v41

    const-wide/16 v9, -0x1

    goto :goto_23

    :cond_2b
    const-wide/16 v9, -0x1

    shl-long v2, v9, v2

    and-long/2addr v6, v2

    not-long v2, v2

    or-long/2addr v0, v2

    :goto_22
    move-wide v9, v0

    move-object v0, v8

    move/from16 v2, v41

    goto :goto_23

    :cond_2c
    move/from16 v41, v2

    move/from16 v42, v3

    goto :goto_22

    :goto_23
    add-int/lit8 v3, v42, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v6, v7, v4, v5, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytes(JJI)[B

    move-result-object v1

    invoke-static {v9, v10, v12, v13, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->toBytes(JJI)[B

    move-result-object v10

    new-instance v3, Linet/ipaddr/format/large/IPAddressLargeDivision;

    move-object v8, v3

    move-object v9, v1

    move/from16 v1, v43

    move/from16 v11, v42

    move-object/from16 v4, v34

    move/from16 v12, v40

    move/from16 v5, v33

    move-object/from16 v13, v39

    move v6, v14

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Linet/ipaddr/format/large/IPAddressLargeDivision;-><init>([B[BIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    aput-object v3, v4, v1

    add-int v16, v16, v42

    add-int/lit8 v11, v1, 0x1

    move-object/from16 v1, p0

    move-object v12, v4

    move v13, v5

    move v14, v6

    move/from16 v7, v35

    move-object/from16 v6, v38

    move-object/from16 v5, v39

    move-object/from16 v0, v48

    goto/16 :goto_d

    :cond_2d
    move-object/from16 v39, v5

    move-object v4, v12

    new-instance v0, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Linet/ipaddr/format/large/IPAddressLargeDivisionGrouping;-><init>([Linet/ipaddr/format/large/IPAddressLargeDivision;Linet/ipaddr/IPAddressNetwork;)V

    :goto_24
    move-object/from16 v1, v25

    goto/16 :goto_2f

    :cond_2e
    move-object/from16 v48, v0

    move-object v1, v5

    move-object/from16 v38, v6

    move/from16 v35, v7

    move v5, v13

    move v6, v14

    new-array v0, v5, [Linet/ipaddr/format/standard/IPAddressBitsDivision;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    if-ge v3, v5, :cond_39

    if-ge v3, v6, :cond_30

    move-object/from16 v7, v38

    invoke-virtual {v7, v3}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v8

    invoke-virtual {v7, v3}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v9

    if-eqz v9, :cond_2f

    const-wide/16 v9, -0x1

    shl-long v11, v9, v8

    not-long v9, v11

    move-wide/from16 v11, v26

    goto :goto_26

    :cond_2f
    const/4 v9, 0x2

    invoke-virtual {v7, v3, v9}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v10

    const/16 v9, 0xa

    invoke-virtual {v7, v3, v9}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide/from16 v51, v10

    move-wide v9, v12

    move-wide/from16 v11, v51

    :goto_26
    move-wide/from16 v49, v9

    move/from16 v21, v35

    const/4 v13, 0x2

    const/16 v15, 0xa

    move-object/from16 v14, p0

    move-wide/from16 v51, v11

    move v11, v8

    :goto_27
    move-wide/from16 v8, v51

    goto/16 :goto_29

    :cond_30
    move-object/from16 v7, v38

    if-eqz v17, :cond_31

    if-ne v3, v6, :cond_31

    :try_start_4
    invoke-virtual {v7, v3}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v14, p0

    :try_start_5
    iget-object v9, v14, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v9

    add-int/2addr v8, v9

    const-wide/16 v9, -0x1

    shl-long v11, v9, v8

    not-long v9, v11

    move v11, v8

    move-wide/from16 v49, v9

    move-wide/from16 v8, v26

    move/from16 v21, v35

    const/4 v13, 0x2

    const/16 v15, 0xa

    goto :goto_29

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto/16 :goto_a

    :cond_31
    const/4 v13, 0x0

    move-object/from16 v14, p0

    sub-int v8, v3, v6

    iget-object v9, v14, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v9, v8}, Linet/ipaddr/format/validate/AddressParseData;->getBitLength(I)I

    move-result v9

    iget-object v10, v14, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v10, v8}, Linet/ipaddr/format/validate/AddressParseData;->isWildcard(I)Z

    move-result v10

    if-eqz v10, :cond_32

    const-wide/16 v10, -0x1

    shl-long v13, v10, v9

    not-long v10, v13

    move-wide/from16 v21, v10

    move-wide/from16 v10, v26

    const/4 v13, 0x2

    const/16 v15, 0xa

    move-object/from16 v14, p0

    goto :goto_28

    :cond_32
    iget-object v10, v14, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v13, 0x2

    invoke-virtual {v10, v8, v13}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v10

    iget-object v12, v14, Linet/ipaddr/format/validate/IPAddressParseData;->mixedParsedAddress:Linet/ipaddr/format/validate/ParsedIPAddress;

    const/16 v15, 0xa

    invoke-virtual {v12, v8, v15}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v21

    :goto_28
    move-wide/from16 v49, v21

    move/from16 v21, v15

    move-wide/from16 v51, v10

    move v11, v9

    goto :goto_27

    :goto_29
    if-nez v48, :cond_37

    if-eqz v20, :cond_36

    iget-object v10, v14, Linet/ipaddr/format/validate/ParsedIPAddress;->maskers:[Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v12

    if-eqz v12, :cond_35

    const/16 v12, 0x40

    if-le v2, v12, :cond_34

    add-int/lit8 v13, v2, -0x40

    if-lt v13, v11, :cond_33

    sub-int/2addr v13, v11

    ushr-long v33, v28, v13

    goto :goto_2a

    :cond_33
    sub-int v13, v11, v13

    shl-long v33, v28, v13

    rsub-int/lit8 v13, v13, 0x40

    shr-long v38, v36, v13

    or-long v33, v33, v38

    :goto_2a
    move-wide/from16 v12, v33

    goto :goto_2b

    :cond_34
    sub-int v13, v2, v11

    ushr-long v33, v36, v13

    goto :goto_2a

    :goto_2b
    sub-int/2addr v2, v11

    invoke-virtual {v10, v8, v9, v12, v13}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v8

    move/from16 v33, v5

    move/from16 v24, v6

    move-wide/from16 v5, v49

    invoke-virtual {v10, v5, v6, v12, v13}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v5

    :goto_2c
    move-wide v9, v8

    move-object/from16 v32, v19

    const-wide/16 v30, -0x1

    goto :goto_2e

    :cond_35
    move-wide/from16 v5, v49

    new-instance v0, Linet/ipaddr/IncompatibleAddressException;

    const-string v38, "ipaddress.error.maskMismatch"

    move-object/from16 v31, v0

    move-wide/from16 v32, v8

    move-wide/from16 v34, v5

    invoke-direct/range {v31 .. v38}, Linet/ipaddr/IncompatibleAddressException;-><init>(JJJLjava/lang/String;)V

    throw v0

    :cond_36
    move/from16 v33, v5

    move/from16 v24, v6

    move-wide/from16 v5, v49

    goto :goto_2c

    :cond_37
    move/from16 v33, v5

    move/from16 v24, v6

    move-wide/from16 v5, v49

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-static {v11, v10}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->getDivisionPrefixLength(II)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v23, :cond_38

    if-eqz v10, :cond_38

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v12, v11, v12

    const-wide/16 v30, -0x1

    shl-long v12, v30, v12

    and-long/2addr v8, v12

    not-long v12, v12

    or-long/2addr v5, v12

    :goto_2d
    move-object/from16 v32, v10

    move-wide v9, v8

    goto :goto_2e

    :cond_38
    const-wide/16 v30, -0x1

    goto :goto_2d

    :goto_2e
    new-instance v34, Linet/ipaddr/format/standard/IPAddressBitsDivision;

    move-object/from16 v8, v34

    move/from16 v38, v11

    const/16 v22, 0x40

    move-wide v11, v5

    const/4 v5, 0x0

    const/4 v6, 0x2

    move/from16 v13, v38

    move/from16 v14, v21

    move/from16 v18, v15

    move/from16 v21, v22

    move-object v15, v1

    move-object/from16 v16, v32

    invoke-direct/range {v8 .. v16}, Linet/ipaddr/format/standard/IPAddressBitsDivision;-><init>(JJIILinet/ipaddr/IPAddressNetwork;Ljava/lang/Integer;)V

    aput-object v34, v0, v3

    add-int v4, v4, v38

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v38, v7

    move/from16 v15, v21

    move/from16 v6, v24

    move/from16 v5, v33

    goto/16 :goto_25

    :cond_39
    new-instance v2, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;

    invoke-direct {v2, v0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/IPAddressDivision;Linet/ipaddr/IPAddressNetwork;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v0, v2

    goto/16 :goto_24

    :goto_2f
    :try_start_6
    invoke-static {v1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$302(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/format/IPAddressDivisionSeries;)Linet/ipaddr/format/IPAddressDivisionSeries;

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->doneTranslating()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/format/validate/AddressParseData;->releaseSegmentData()V

    goto :goto_30

    :catchall_5
    move-exception v0

    goto :goto_31

    :cond_3a
    move-object v1, v4

    :cond_3b
    :goto_30
    monitor-exit v1

    goto :goto_32

    :goto_31
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :cond_3c
    :goto_32
    return-object v0

    :goto_33
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public getParameters()Linet/ipaddr/IPAddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->options:Linet/ipaddr/IPAddressStringParameters;

    return-object v0
.end method

.method public getProviderAddress()Linet/ipaddr/IPAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$700(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$700(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    throw v0
.end method

.method public getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderAddress()Linet/ipaddr/IPAddress;

    move-result-object p1

    return-object p1
.end method

.method public getProviderHostAddress()Linet/ipaddr/IPAddress;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$500(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getHostAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$500(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    return-object v0
.end method

.method public getProviderMask()Linet/ipaddr/IPAddress;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getMaskLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProviderNetworkPrefixLength()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getEquivalentPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getProviderSeqRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$100(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$100(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddressException()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddress;->toSequentialRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$102(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAddresses(ZZZ)V

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->createRange()Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->doneTranslating()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->releaseSegmentData()V

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$100(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic getSegmentCount()I
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v0

    return v0
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/format/validate/IPAddressProvider$IPType;->from(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    return-object v0
.end method

.method public getValForMask()Linet/ipaddr/IPAddress;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$200(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSection;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_1

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->access$200(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSection;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->createAddresses(ZZZ)V

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/AddressParseData;->releaseSegmentData()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getValForMask()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic hasPrefixSeparator()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v0

    return v0
.end method

.method public isPrefixSubnet(Ljava/lang/Integer;Linet/ipaddr/IPAddressNetwork;[I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;[I)Z"
        }
    .end annotation

    invoke-virtual {p2}, Linet/ipaddr/IPAddressNetwork;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->bytesPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v4

    invoke-static {v0}, Linet/ipaddr/IPAddressSection;->bitsPerSegment(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v5

    invoke-static {v0}, Linet/ipaddr/IPAddressSegment;->getMaxSegmentValue(Linet/ipaddr/IPAddress$IPVersion;)I

    move-result v6

    invoke-virtual {p2}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v8

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object p2

    invoke-virtual {p2}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    rsub-int/lit8 v0, v3, 0x8

    invoke-virtual {p2}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorSegmentIndex()I

    move-result p2

    new-instance v7, Linet/ipaddr/format/validate/d;

    invoke-direct {v7, p2, v0, v2, p3}, Linet/ipaddr/format/validate/d;-><init>(III[I)V

    new-instance v2, Linet/ipaddr/format/validate/d;

    invoke-direct {v2, p2, v0, v1, p3}, Linet/ipaddr/format/validate/d;-><init>(III[I)V

    add-int/2addr v3, v0

    const/4 v9, 0x0

    move-object v1, v7

    :goto_0
    move-object v7, p1

    invoke-static/range {v1 .. v9}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->isPrefixSubnet(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;IIIILjava/lang/Integer;Linet/ipaddr/AddressNetwork$PrefixConfiguration;Z)Z

    move-result p1

    return p1

    :cond_0
    new-instance p2, Linet/ipaddr/format/validate/e;

    invoke-direct {p2, p3, v2}, Linet/ipaddr/format/validate/e;-><init>([II)V

    new-instance v2, Linet/ipaddr/format/validate/e;

    invoke-direct {v2, p3, v1}, Linet/ipaddr/format/validate/e;-><init>([II)V

    const/4 v9, 0x0

    move-object v1, p2

    goto :goto_0
.end method

.method public bridge synthetic isProvidingBase85IPv6()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingBase85IPv6()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProvidingEmpty()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v0

    return v0
.end method

.method public isProvidingIPAddress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isProvidingIPv4()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingIPv4()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProvidingIPv6()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingIPv6()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProvidingMixedIPv6()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingMixedIPv6()Z

    move-result v0

    return v0
.end method

.method public isSequential()Z
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddresses()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddressException()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/Address;->isSequential()Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->groupingIsSequential()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutGrouping()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->groupingIsSequential()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->getCachedAddresses()Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->withoutAddressException()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->groupingIsSequential()Z

    move-result v0

    return v0
.end method

.method public parsedEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 3

    instance-of v0, p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    if-nez v0, :cond_2

    :cond_0
    check-cast p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->contains(Linet/ipaddr/format/validate/ParsedIPAddress;ZZ)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixContains(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/format/validate/ParsedIPAddress;->contains(Linet/ipaddr/format/validate/ParsedIPAddress;ZZ)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixContains(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress;->prefixEquals(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress;->values:Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;

    if-eqz v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->contains(Linet/ipaddr/format/validate/ParsedIPAddress;ZZ)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public prefixEquals(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentData()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress;->skipContains()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->has_inet_aton_value:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->hasIPv4LeadingZeros:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Linet/ipaddr/format/validate/IPAddressParseData;->isBinary:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->matchesPrefix(Ljava/lang/String;[I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/validate/IPAddressParseData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
