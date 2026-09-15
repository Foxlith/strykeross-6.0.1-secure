.class Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1$1;
.super Linet/ipaddr/format/util/IPAddressPartConfiguredString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;->next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;",
        "Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1$1;->this$1:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;

    invoke-direct {p0, p2, p3}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;-><init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/format/util/IPAddressStringWriter;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    check-cast v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    check-cast v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;

    iget-object v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1$1;->this$1:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;

    iget-object v2, v2, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;

    invoke-static {v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;->access$800(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedStringCollection;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedParams;->toString(Linet/ipaddr/ipv6/IPv6AddressSection$IPv6v4MixedAddressSection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    return-object v0
.end method
