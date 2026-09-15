.class public abstract Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HostIDStringAddressGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/HostIdentifierString;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

.field protected final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Linet/ipaddr/IPAddressStringParameters;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->backingMap:Ljava/util/Map;

    new-instance p1, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    invoke-direct {p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    return-void
.end method

.method public static synthetic a(II[B)I
    .locals 0

    .line 1
    invoke-static {p0, p2, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->lambda$getValueProvider$0(I[BI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;)Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    return-object p0
.end method

.method private get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddress$IPVersion;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->backingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v1, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->access$000(Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual/range {p0 .. p5}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->toNormalizedString(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->backingMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/HostIdentifierString;

    if-nez v1, :cond_2

    iget-object v2, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->access$000(Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddress;

    move-result-object p1

    invoke-virtual {p1, v0}, Linet/ipaddr/IPAddress;->cacheNormalizedString(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostIdentifierString;

    move-result-object v1

    iget-object p1, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->backingMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/HostIdentifierString;

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->added(Linet/ipaddr/HostIdentifierString;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getValueProvider([B)Linet/ipaddr/Address$SegmentValueProvider;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->getValueProvider([BI)Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object p0

    return-object p0
.end method

.method public static getValueProvider([BI)Linet/ipaddr/Address$SegmentValueProvider;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/material/sidesheet/b;

    invoke-direct {v0, p1, p0}, Lcom/google/android/material/sidesheet/b;-><init>(ILjava/io/Serializable;)V

    return-object v0
.end method

.method private static synthetic lambda$getValueProvider$0(I[BI)I
    .locals 2

    mul-int/2addr p2, p0

    add-int/2addr p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public abstract added(Linet/ipaddr/HostIdentifierString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract cache(Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddress;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Linet/ipaddr/IPAddress;",
            ")V"
        }
    .end annotation
.end method

.method public abstract create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostIdentifierString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddress;",
            ")TT;"
        }
    .end annotation
.end method

.method public get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$AddressValueProvider;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Linet/ipaddr/IPAddress$IPAddressValueProvider;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/IPAddress$IPAddressValueProvider;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPAddressValueProvider;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Linet/ipaddr/Address$AddressValueProvider;->getSegmentCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v3

    invoke-interface {p1}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1
.end method

.method public get(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 2
    sget-object v1, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1
.end method

.method public get(Linet/ipaddr/IPAddress$IPAddressValueProvider;)Linet/ipaddr/HostIdentifierString;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddress$IPAddressValueProvider;",
            ")TT;"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    invoke-interface {p1}, Linet/ipaddr/Address$AddressValueProvider;->getValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v2

    invoke-interface {p1}, Linet/ipaddr/Address$AddressValueProvider;->getUpperValues()Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v3

    invoke-interface {p1}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getPrefixLength()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Linet/ipaddr/IPAddress$IPAddressValueProvider;->getZone()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1
.end method

.method public get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/HostIdentifierString;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/IPAddress$IPVersion;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Linet/ipaddr/Address$SegmentValueProvider;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 4
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1
.end method

.method public get([B)Linet/ipaddr/HostIdentifierString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 6
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    :goto_2
    invoke-static {p1, v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->getValueProvider([BI)Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    return-object p1
.end method

.method public getBackingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public toNormalizedString(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->toNormalizedString(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
