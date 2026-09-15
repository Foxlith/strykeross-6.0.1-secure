.class public Linet/ipaddr/mac/MACAddressNetwork;
.super Linet/ipaddr/AddressNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressNetwork<",
        "Linet/ipaddr/mac/MACAddressSegment;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_SEGMENTS:[Linet/ipaddr/mac/MACAddressSegment;

.field private static defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Linet/ipaddr/AddressNetwork;->getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    sput-object v0, Linet/ipaddr/mac/MACAddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const/4 v0, 0x0

    new-array v0, v0, [Linet/ipaddr/mac/MACAddressSegment;

    sput-object v0, Linet/ipaddr/mac/MACAddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/mac/MACAddressSegment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/AddressNetwork;-><init>()V

    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork;->createAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork;->creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    return-void
.end method

.method public static synthetic access$000()[Linet/ipaddr/mac/MACAddressSegment;
    .locals 1

    sget-object v0, Linet/ipaddr/mac/MACAddressNetwork;->EMPTY_SEGMENTS:[Linet/ipaddr/mac/MACAddressSegment;

    return-object v0
.end method

.method public static getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/mac/MACAddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method public static setDefaultPrefixConfiguration(Linet/ipaddr/AddressNetwork$PrefixConfiguration;)V
    .locals 0

    sput-object p0, Linet/ipaddr/mac/MACAddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-void
.end method


# virtual methods
.method public createAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 1

    new-instance v0, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    invoke-direct {v0, p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;-><init>(Linet/ipaddr/mac/MACAddressNetwork;)V

    return-object v0
.end method

.method public bridge synthetic getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/mac/MACAddressNetwork;->creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    return-object v0
.end method

.method public getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/mac/MACAddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method

.method public isCompatible(Linet/ipaddr/AddressNetwork;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/AddressNetwork<",
            "*>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/AddressNetwork;->isCompatible(Linet/ipaddr/AddressNetwork;)Z

    move-result p1

    return p1
.end method
