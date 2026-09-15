.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6v4MixedStringCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zone:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;->zone:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic access$800(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;->zone:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
            "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;

    invoke-direct {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;-><init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;)V

    return-object v0
.end method
