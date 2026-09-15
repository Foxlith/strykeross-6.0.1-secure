.class Linet/ipaddr/mac/MACAddressSection$MACAddressCache;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MACAddressCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
        "Linet/ipaddr/mac/MACAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    return-void
.end method
