.class public interface abstract Linet/ipaddr/format/validate/MACAddressProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;
    }
.end annotation


# static fields
.field public static final EMPTY_PROVIDER:Linet/ipaddr/format/validate/MACAddressProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/format/validate/MACAddressProvider$1;

    invoke-direct {v0}, Linet/ipaddr/format/validate/MACAddressProvider$1;-><init>()V

    sput-object v0, Linet/ipaddr/format/validate/MACAddressProvider;->EMPTY_PROVIDER:Linet/ipaddr/format/validate/MACAddressProvider;

    return-void
.end method

.method public static getAllProvider(Linet/ipaddr/MACAddressStringParameters;)Linet/ipaddr/format/validate/MACAddressProvider;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    iget-object p0, p0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createRangeSegment(II)Linet/ipaddr/mac/MACAddressSegment;

    move-result-object v1

    sget-object v2, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne p0, v2, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    invoke-virtual {v0, p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSegmentArray(I)[Linet/ipaddr/mac/MACAddressSegment;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Linet/ipaddr/format/validate/MACAddressProvider$2;

    invoke-direct {v1, v0, p0}, Linet/ipaddr/format/validate/MACAddressProvider$2;-><init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;[Linet/ipaddr/mac/MACAddressSegment;)V

    return-object v1
.end method


# virtual methods
.method public abstract getAddress()Linet/ipaddr/mac/MACAddress;
.end method
