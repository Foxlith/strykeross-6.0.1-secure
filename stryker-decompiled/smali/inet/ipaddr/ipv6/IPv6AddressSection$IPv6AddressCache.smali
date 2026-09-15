.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressCache;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6AddressCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache<",
        "Linet/ipaddr/ipv6/IPv6Address;",
        ">;"
    }
.end annotation


# instance fields
.field public inetAddress:Ljava/net/Inet6Address;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;-><init>()V

    return-void
.end method
