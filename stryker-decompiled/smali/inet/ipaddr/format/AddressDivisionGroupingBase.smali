.class public abstract Linet/ipaddr/format/AddressDivisionGroupingBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$IPAddressStringParams;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;,
        Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;
    }
.end annotation


# static fields
.field static final ALL_ONES:Ljava/math/BigInteger;

.field protected static LONG_MAX:Ljava/math/BigInteger; = null

.field protected static final NO_PREFIX_LENGTH:Ljava/lang/Integer;

.field static bundle:Ljava/util/ResourceBundle; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient cachedCount:Ljava/math/BigInteger;

.field private transient cachedPrefixCount:Ljava/math/BigInteger;

.field protected cachedPrefixLength:Ljava/lang/Integer;

.field private final divisions:[Linet/ipaddr/format/AddressDivisionBase;

.field protected transient hashCode:I

.field private transient isMultiple:Ljava/lang/Boolean;

.field protected transient valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->ALL_ONES:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->LONG_MAX:Ljava/math/BigInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Linet/ipaddr/HostIdentifierException;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".IPAddressResources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Linet/ipaddr/format/AddressDivisionGroupingBase;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>([Linet/ipaddr/format/AddressDivisionBase;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;-><init>([Linet/ipaddr/format/AddressDivisionBase;Z)V

    return-void
.end method

.method public constructor <init>([Linet/ipaddr/format/AddressDivisionBase;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->divisions:[Linet/ipaddr/format/AddressDivisionBase;

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ipaddress.error.null.segment"

    invoke-static {p2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static synthetic a(Linet/ipaddr/format/AddressDivisionGroupingBase;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->lambda$getDivisionStrings$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static adjustHashCode(IJJ)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Linet/ipaddr/format/AddressDivisionBase;->adjustHashCode(IJJ)I

    move-result p0

    return p0
.end method

.method public static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static calculatePrefix(Linet/ipaddr/format/IPAddressDivisionSeries;)Ljava/lang/Integer;
    .locals 6

    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v4

    invoke-interface {v4}, Linet/ipaddr/format/string/IPAddressStringDivision;->getDivisionPrefixLength()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Linet/ipaddr/PrefixLenException;

    invoke-direct {v0, p0, p1}, Linet/ipaddr/PrefixLenException;-><init>(Linet/ipaddr/format/AddressItem;I)V

    throw v0
.end method

.method public static containsPrefixBlock(Linet/ipaddr/format/IPAddressDivisionSeries;I)Z
    .locals 8

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/IPAddressDivisionSeries;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-interface {p0, v4}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v6

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v7

    add-int/2addr v7, v5

    if-ge p1, v7, :cond_6

    sub-int/2addr p1, v5

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v6, p1}, Linet/ipaddr/format/AddressItem;->containsPrefixBlock(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v6}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    add-int/2addr v4, v1

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-interface {p0, v4}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_7
    return v1
.end method

.method public static containsSinglePrefixBlock(Linet/ipaddr/format/IPAddressDivisionSeries;I)Z
    .locals 8

    invoke-static {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->checkSubnet(Linet/ipaddr/format/AddressDivisionSeries;I)V

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->isPrefixed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Linet/ipaddr/format/IPAddressDivisionSeries;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_7

    invoke-interface {p0, v3}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v6

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v7

    add-int/2addr v7, v4

    if-lt p1, v7, :cond_2

    invoke-interface {v6}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_2
    sub-int/2addr p1, v4

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v6, p1}, Linet/ipaddr/format/AddressItem;->containsSinglePrefixBlock(I)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v6}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    add-int/2addr v3, v5

    :goto_1
    if-ge v3, v2, :cond_7

    invoke-interface {p0, v3}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object p1

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {p1}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v5
.end method

.method public static createItemSpliterator(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentRangeSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Linet/ipaddr/format/AddressComponentRange;",
            "T:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TS;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TS;TT;>;",
            "Ljava/util/function/Function<",
            "TS;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TS;>;",
            "Ljava/util/function/ToLongFunction<",
            "TS;>;)",
            "Linet/ipaddr/format/util/AddressComponentRangeSpliterator<",
            "TS;TT;>;"
        }
    .end annotation

    new-instance v7, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressDivisionGroupingBase$AddressItemRangeSpliterator;-><init>(Linet/ipaddr/format/AddressComponentRange;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v7
.end method

.method public static createSeriesSpliterator(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)Linet/ipaddr/format/util/AddressComponentSpliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linet/ipaddr/AddressComponent;",
            ">(TT;",
            "Ljava/util/function/Predicate<",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$SplitterSink<",
            "TT;TT;>;>;",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider<",
            "TT;TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)",
            "Linet/ipaddr/format/util/AddressComponentSpliterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v7, Linet/ipaddr/format/AddressSeriesSpliterator;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Linet/ipaddr/format/AddressSeriesSpliterator;-><init>(Linet/ipaddr/AddressComponent;Ljava/util/function/Predicate;Linet/ipaddr/format/AddressDivisionGroupingBase$IteratorProvider;Ljava/util/function/Function;Ljava/util/function/Predicate;Ljava/util/function/ToLongFunction;)V

    return-object v7
.end method

.method private static getBytesCopy([BI[BI)[B
    .locals 3

    add-int/lit8 p3, p3, 0x7

    shr-int/lit8 p3, p3, 0x3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    add-int v2, p3, p1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v0, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    :goto_0
    if-lez p1, :cond_3

    add-int/2addr p3, p1

    new-array p3, p3, [B

    if-eqz p0, :cond_2

    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length p0, p2

    invoke-static {p2, v0, p3, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_3
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static getCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;)Linet/ipaddr/format/util/AddressDivisionWriter;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;->cachedParams:Linet/ipaddr/format/util/AddressDivisionWriter;

    return-object p0
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/format/AddressDivisionGroupingBase;->bundle:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public static getPrefixLengthForSingleBlock(Linet/ipaddr/format/IPAddressDivisionSeries;)Ljava/lang/Integer;
    .locals 8

    .line 2
    invoke-interface {p0}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getNetwork()Linet/ipaddr/IPAddressNetwork;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork;->getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->allPrefixedAddressesAreSubnets()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-interface {p0, v2}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v4

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v3, v7

    if-eqz v1, :cond_1

    invoke-interface {v4}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v4

    if-ge v5, v4, :cond_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_4

    invoke-interface {p0, v2}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object v4

    invoke-interface {v4}, Linet/ipaddr/format/IPAddressGenericDivision;->isFullRange()Z

    move-result v5

    if-nez v5, :cond_3

    return-object v6

    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v4}, Linet/ipaddr/format/IPAddressGenericDivision;->isPrefixed()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v3}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDivisionStrings$0(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionBase;->getWildcardString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setCachedParams(Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;Linet/ipaddr/format/util/AddressDivisionWriter;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;->cachedParams:Linet/ipaddr/format/util/AddressDivisionWriter;

    return-void
.end method

.method public static toIPParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddressSection$IPStringOptions;",
            ")",
            "Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams<",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Linet/ipaddr/format/AddressDivisionBase;->toParams(Linet/ipaddr/IPAddressSection$IPStringOptions;)Linet/ipaddr/format/AddressDivisionGroupingBase$AddressStringParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Linet/ipaddr/format/AddressDivisionGroupingBase;

    if-eqz v0, :cond_1

    check-cast p1, Linet/ipaddr/format/AddressDivisionGroupingBase;

    invoke-virtual {p1, p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isSameGrouping(Linet/ipaddr/format/AddressDivisionGroupingBase;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes([B)[B
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes([BI)[B
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesInternal()[B

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesCopy([BI[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract getBytesImpl(Z)[B
.end method

.method public getBytesInternal()[B
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->hasNoValueCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iget-object v0, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesImpl(Z)[B

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getCount()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedCount:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCountImpl()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedCount:Ljava/math/BigInteger;

    :cond_0
    return-object v0
.end method

.method public getCountImpl()Ljava/math/BigInteger;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDivision(I)Linet/ipaddr/format/AddressDivisionBase;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object p1

    return-object p1
.end method

.method public getDivisionCount()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDivisionStrings()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Linet/ipaddr/p;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Linet/ipaddr/p;-><init>(ILjava/io/Serializable;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->divisions:[Linet/ipaddr/format/AddressDivisionBase;

    return-object v0
.end method

.method public getMinPrefixLengthForBlock()I
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->getMinPrefixLengthForBlock()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v3

    if-eqz v2, :cond_1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getPrefixCount()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixCount:Ljava/math/BigInteger;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixCountImpl()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixCount:Ljava/math/BigInteger;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getCount()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getPrefixCountImpl()Ljava/math/BigInteger;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getPrefixCount()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefixLengthForSingleBlock()Ljava/lang/Integer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getBitCount()I

    move-result v3

    if-ge v4, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->cacheBits(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBytes()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getUpperBytes([B)[B
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytes([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperBytes([BI)[B
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v0

    invoke-interface {p0}, Linet/ipaddr/format/AddressDivisionSeries;->getBitCount()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesCopy([BI[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getUpperBytesInternal()[B
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->hasNoValueCache()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesImpl(Z)[B

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iget-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    if-nez v2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    if-eqz v2, :cond_2

    iput-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesImpl(Z)[B

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesImpl(Z)[B

    move-result-object v1

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getUpperValue()Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->hasNoValueCache()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperValue:Ljava/math/BigInteger;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iget-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperValue:Ljava/math/BigInteger;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->value:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    :goto_0
    iput-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperValue:Ljava/math/BigInteger;

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperValue:Ljava/math/BigInteger;

    :goto_1
    iput-object v2, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->value:Ljava/math/BigInteger;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getUpperBytesInternal()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->hasNoValueCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iget-object v0, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->value:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getBytesInternal()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->value:Ljava/math/BigInteger;

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public hasNoValueCache()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-direct {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

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

.method public hashCode()I
    .locals 10

    iget v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->hashCode:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->getUpperValue()Ljava/math/BigInteger;

    move-result-object v3

    :cond_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    const/16 v9, 0x40

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v5, v6, v7, v8}, Linet/ipaddr/format/AddressDivisionGroupingBase;->adjustHashCode(IJJ)I

    move-result v1

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->hashCode:I

    move v0, v1

    :cond_2
    return v0
.end method

.method public includesMax()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->includesMax()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public includesZero()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->includesZero()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public initCachedValues(Ljava/lang/Integer;Ljava/math/BigInteger;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/format/AddressDivisionGroupingBase;->NO_PREFIX_LENGTH:Ljava/lang/Integer;

    :cond_0
    iput-object p1, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    iput-object p2, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedCount:Ljava/math/BigInteger;

    return-void
.end method

.method public isFullRange()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isMax()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isMax()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiple()Z
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v2

    invoke-interface {v2}, Linet/ipaddr/format/AddressItem;->isMultiple()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple:Ljava/lang/Boolean;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->isMultiple:Ljava/lang/Boolean;

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Linet/ipaddr/format/AddressItem;->containsPrefixBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrefixed()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

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
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-virtual {p1, v1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Linet/ipaddr/format/AddressDivisionBase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isSinglePrefixBlock()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Linet/ipaddr/format/AddressItem;->containsSinglePrefixBlock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivision(I)Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v3

    invoke-interface {v3}, Linet/ipaddr/format/AddressItem;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setBytes([B)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-direct {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iput-object p1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->lowerBytes:[B

    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-direct {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iput-object p1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->inetAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setUpperBytes([B)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    invoke-direct {v0}, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->valueCache:Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;

    iput-object p1, v0, Linet/ipaddr/format/AddressDivisionGroupingBase$ValueCache;->upperBytes:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase;->getDivisionsInternal()[Linet/ipaddr/format/AddressDivisionBase;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
