.class public Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static final MAX_ZONE_ENTRIES:I = 0x64

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient ALL_RANGE_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private transient ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private transient allPrefixedCache:[Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private transient scopedZoneCache:[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

.field private transient segmentCache:[[Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private transient segmentPrefixCache:[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

.field private transient zoneInterfaceCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;",
            ">;"
        }
    .end annotation
.end field

.field private zoneInterfaceCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, p0, v3, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache$1;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;IFZ)V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCache:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const/16 v0, 0x100

    new-array v0, v0, [Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->scopedZoneCache:[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-void
.end method

.method public static synthetic access$000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentCache:[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p0
.end method

.method public static synthetic access$002(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[[Linet/ipaddr/ipv6/IPv6AddressSegment;)[[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentCache:[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public static synthetic access$100(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p0
.end method

.method public static synthetic access$1000(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCache:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static synthetic access$102(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public static synthetic access$300(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[[[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentPrefixCache:[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p0
.end method

.method public static synthetic access$302(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[[[Linet/ipaddr/ipv6/IPv6AddressSegment;)[[[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentPrefixCache:[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public static synthetic access$400(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p0
.end method

.method public static synthetic access$402(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public static synthetic access$500(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p0
.end method

.method public static synthetic access$502(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;[Linet/ipaddr/ipv6/IPv6AddressSegment;)[Linet/ipaddr/ipv6/IPv6AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    return-object p1
.end method

.method public static synthetic access$800(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->scopedZoneCache:[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    return-object p0
.end method

.method public static synthetic access$900(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentCache:[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv6/IPv6AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->segmentPrefixCache:[[[Linet/ipaddr/ipv6/IPv6AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv6/IPv6AddressSegment;

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->scopedZoneCache:[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    const/16 v2, 0x100

    new-array v2, v2, [Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    iput-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->scopedZoneCache:[Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCacheLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;->zoneInterfaceCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
