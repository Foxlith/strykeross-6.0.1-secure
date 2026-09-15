.class Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient ALL_RANGE_SEGMENT:Linet/ipaddr/mac/MACAddressSegment;

.field private transient segmentCache:[Linet/ipaddr/mac/MACAddressSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)[Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->segmentCache:[Linet/ipaddr/mac/MACAddressSegment;

    return-object p0
.end method

.method public static synthetic access$102(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;[Linet/ipaddr/mac/MACAddressSegment;)[Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->segmentCache:[Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method

.method public static synthetic access$200(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/mac/MACAddressSegment;

    return-object p0
.end method

.method public static synthetic access$202(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSegment;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/mac/MACAddressSegment;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->segmentCache:[Linet/ipaddr/mac/MACAddressSegment;

    iput-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;->ALL_RANGE_SEGMENT:Linet/ipaddr/mac/MACAddressSegment;

    return-void
.end method
