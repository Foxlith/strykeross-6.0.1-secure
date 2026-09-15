.class public Linet/ipaddr/ipv6/IPv6AddressNetwork;
.super Linet/ipaddr/IPAddressNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv4/IPv4AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSegment;",
        "Ljava/net/Inet6Address;",
        ">;"
    }
.end annotation


# static fields
.field private static CACHE_SEGMENTS_BY_PREFIX:Z = false

.field private static final EMPTY_ADDRESS:[Linet/ipaddr/ipv6/IPv6Address;

.field private static final EMPTY_SECTION:[Linet/ipaddr/ipv6/IPv6AddressSection;

.field static final EMPTY_SEGMENTS:[Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private static defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private linkLocalPrefix:Linet/ipaddr/ipv6/IPv6AddressSection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Linet/ipaddr/AddressNetwork;->getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const/4 v0, 0x0

    new-array v1, v0, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    new-array v1, v0, [Linet/ipaddr/ipv6/IPv6AddressSection;

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_SECTION:[Linet/ipaddr/ipv6/IPv6AddressSection;

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6Address;

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_ADDRESS:[Linet/ipaddr/ipv6/IPv6Address;

    const/4 v0, 0x1

    sput-boolean v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->CACHE_SEGMENTS_BY_PREFIX:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressNetwork;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic a(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->lambda$getSegmentProducer$0(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->CACHE_SEGMENTS_BY_PREFIX:Z

    return v0
.end method

.method public static synthetic access$600()[Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_SECTION:[Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public static synthetic access$700()[Linet/ipaddr/ipv6/IPv6Address;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->EMPTY_ADDRESS:[Linet/ipaddr/ipv6/IPv6Address;

    return-object v0
.end method

.method private createLinkLocalPrefix()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    const v4, 0xfe80

    invoke-virtual {v0, v4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method private static synthetic lambda$getSegmentProducer$0(Linet/ipaddr/ipv6/IPv6Address;Ljava/lang/Integer;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address;->getSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultPrefixConfiguration(Linet/ipaddr/AddressNetwork$PrefixConfiguration;)V
    .locals 0

    sput-object p0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-void
.end method


# virtual methods
.method public bridge synthetic createAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->createAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public createAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork;)V

    return-object v0
.end method

.method public bridge synthetic createLoopback()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->createLoopback()Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public createLoopback()Linet/ipaddr/ipv6/IPv6Address;
    .locals 5

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegmentArray(I)[Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    aput-object v2, v3, v1

    const/4 v1, 0x7

    invoke-virtual {v0, v4}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSegment(I)Linet/ipaddr/ipv6/IPv6AddressSegment;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
    .locals 1

    .line 3
    invoke-super {p0}, Linet/ipaddr/IPAddressNetwork;->getAddressCreator()Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    move-result-object v0

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    return-object v0
.end method

.method public getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
    .locals 1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    return-object v0
.end method

.method public getLinkLocalPrefix()Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->linkLocalPrefix:Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->linkLocalPrefix:Linet/ipaddr/ipv6/IPv6AddressSection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->createLinkLocalPrefix()Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->linkLocalPrefix:Linet/ipaddr/ipv6/IPv6AddressSection;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->linkLocalPrefix:Linet/ipaddr/ipv6/IPv6AddressSection;

    return-object v0
.end method

.method public getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method public getSectionProducer()Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Linet/ipaddr/ipv6/IPv6AddressSection;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/color/utilities/o;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    return-object v0
.end method

.method public getSegmentProducer()Ljava/util/function/BiFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "Linet/ipaddr/ipv6/IPv6Address;",
            "Ljava/lang/Integer;",
            "Linet/ipaddr/ipv6/IPv6AddressSegment;",
            ">;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv4/j;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Linet/ipaddr/ipv4/j;-><init>(I)V

    return-object v0
.end method

.method public isCompatible(Linet/ipaddr/ipv6/IPv6AddressNetwork;)Z
    .locals 0

    invoke-super {p0, p1}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result p1

    return p1
.end method

.method public isIPv6()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
