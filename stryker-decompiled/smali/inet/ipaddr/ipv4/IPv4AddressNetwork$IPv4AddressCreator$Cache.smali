.class public Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient ALL_RANGE_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

.field private transient ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

.field private transient allPrefixedCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

.field private transient segmentCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

.field private transient segmentPrefixCache:[[Linet/ipaddr/ipv4/IPv4AddressSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p0
.end method

.method public static synthetic access$102(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[Linet/ipaddr/ipv4/IPv4AddressSegment;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public static synthetic access$200(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p0
.end method

.method public static synthetic access$202(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public static synthetic access$400(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentPrefixCache:[[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p0
.end method

.method public static synthetic access$402(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[[Linet/ipaddr/ipv4/IPv4AddressSegment;)[[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentPrefixCache:[[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public static synthetic access$500(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p0
.end method

.method public static synthetic access$502(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;Linet/ipaddr/ipv4/IPv4AddressSegment;)Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method

.method public static synthetic access$700(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p0
.end method

.method public static synthetic access$702(Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;[Linet/ipaddr/ipv4/IPv4AddressSegment;)[Linet/ipaddr/ipv4/IPv4AddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->allPrefixedCache:[Linet/ipaddr/ipv4/IPv4AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->segmentPrefixCache:[[Linet/ipaddr/ipv4/IPv4AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ZERO_PREFIX_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressNetwork$IPv4AddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/ipv4/IPv4AddressSegment;

    return-void
.end method
