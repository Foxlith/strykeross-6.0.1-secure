.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6AddressSectionStringCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/ipv6/IPv6AddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringParams;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
        ">;"
    }
.end annotation


# instance fields
.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;->zone:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic access$700(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;->zone:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionString;",
            ">;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection$1;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6AddressSectionStringCollection;)V

    return-object v0
.end method
