.class public abstract Linet/ipaddr/AddressNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;,
        Linet/ipaddr/AddressNetwork$PrefixConfiguration;,
        Linet/ipaddr/AddressNetwork$AddressSegmentCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Linet/ipaddr/AddressSegment;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration; = null

.field private static final serialVersionUID:J = 0x4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->PREFIXED_ZERO_HOSTS_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    sput-object v0, Linet/ipaddr/AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork;->defaultPrefixConfiguration:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method


# virtual methods
.method public clearCaches()V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedAddressCreator;->clearCaches()V

    return-void
.end method

.method public abstract getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/standard/AddressCreator<",
            "***TS;>;"
        }
    .end annotation
.end method

.method public abstract getPrefixConfiguration()Linet/ipaddr/AddressNetwork$PrefixConfiguration;
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

    invoke-static {p0, p1}, Linet/ipaddr/IPAddressSection;->isCompatibleNetworks(Linet/ipaddr/AddressNetwork;Linet/ipaddr/AddressNetwork;)Z

    move-result p1

    return p1
.end method

.method public setSegmentCaching(Z)V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/AddressNetwork;->getAddressCreator()Linet/ipaddr/format/standard/AddressCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linet/ipaddr/format/validate/ParsedAddressCreator;->setSegmentCaching(Z)V

    return-void
.end method
