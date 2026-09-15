.class public Linet/ipaddr/ipv4/IPv4AddressNetwork;
.super Linet/ipaddr/IPAddressNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSegment;",
        "Ljava/net/Inet4Address;",
        ">;"
    }
.end annotation


# static fields
.field private static CACHE_SEGMENTS_BY_PREFIX:Z = false

.field private static final EMPTY_ADDRESS:[Linet/ipaddr/ipv4/IPv4Address;

.field private static final EMPTY_SECTION:[Linet/ipaddr/ipv4/IPv4AddressSection;

.field private static final EMPTY_SEGMENTS:[Linet/ipaddr/ipv4/IPv4AddressSegment;

.field private static defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration; = null

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Linet/ipaddr/AddressNetwork;->getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const/4 v0, 0x1

    sput-boolean v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->CACHE_SEGMENTS_BY_PREFIX:Z

    const/4 v0, 0x0

    new-array v1, v0, [Linet/ipaddr/ipv4/IPv4AddressSegment;

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    new-array v1, v0, [Linet/ipaddr/ipv4/IPv4AddressSection;

    sput-object v1, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_SECTION:[Linet/ipaddr/ipv4/IPv4AddressSection;

    new-array v0, v0, [Linet/ipaddr/ipv4/IPv4Address;

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_ADDRESS:[Linet/ipaddr/ipv4/IPv4Address;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Linet/ipaddr/ipv4/IPv4Address;

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressNetwork;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->lambda$getSegmentProducer$0(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object v0
.end method

.method public static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->CACHE_SEGMENTS_BY_PREFIX:Z

    return v0
.end method

.method public static synthetic access$600(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressNetwork;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800()[Linet/ipaddr/ipv4/IPv4AddressSection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_SECTION:[Linet/ipaddr/ipv4/IPv4AddressSection;

    return-object v0
.end method

.method public static synthetic access$900()[Linet/ipaddr/ipv4/IPv4Address;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->EMPTY_ADDRESS:[Linet/ipaddr/ipv4/IPv4Address;

    return-object v0
.end method

.method public static getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method private static synthetic lambda$getSegmentProducer$0(Linet/ipaddr/ipv4/IPv4Address;Ljava/lang/Integer;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv4/IPv4Address;->getSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultPrefixConfiguration(Linet/ipaddr/AddressNetwork$PrefixConfiguration;)V
    .locals 0

    sput-object p0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-void
.end method


# virtual methods
.method public bridge synthetic createAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->createAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public createAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;-><init>(Linet/ipaddr/ipv4/IPv4AddressNetwork;)V

    return-object v0
.end method

.method public bridge synthetic createLoopback()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->createLoopback()Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public createLoopback()Linet/ipaddr/ipv4/IPv4Address;
    .locals 5

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v3

    const/16 v4, 0x7f

    invoke-virtual {v0, v4}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createSegment(I)Linet/ipaddr/ipv4/IPv4AddressSegment;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;->createAddressInternal([Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv4/IPv4AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCreator()Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;

    return-object v0
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method public getSectionProducer()Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Linet/ipaddr/ipv4/IPv4AddressSection;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    return-object v0
.end method

.method public getSegmentProducer()Ljava/util/function/BiFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Linet/ipaddr/ipv4/IPv4Address;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/ipv4/IPv4AddressSegment;",
            ">;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv4/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    return-object v0
.end method

.method public isCompatible(Linet/ipaddr/ipv4/IPv4AddressNetwork;)Z
    .locals 0

    invoke-super {p0, p1}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result p1

    return p1
.end method

.method public isIPv4()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
