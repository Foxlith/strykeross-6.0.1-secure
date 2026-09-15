.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6v4MixedStringBuilder;,
        Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringCollection$IPv6StringBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
            "***>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V

    return-void
.end method

.method public addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V
    .locals 0

    invoke-super {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    return-void
.end method
