.class Linet/ipaddr/ipv4/IPv4AddressSection$IPv4AddressCache;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4AddressCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
        "Linet/ipaddr/ipv4/IPv4Address;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    return-void
.end method
