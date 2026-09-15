.class Linet/ipaddr/ipv6/IPv6Address$1;
.super Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv6/IPv6Address;->getCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv6/IPv6Address;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6Address;Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6Address$1;->this$0:Linet/ipaddr/ipv6/IPv6Address;

    invoke-direct {p0, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAddress(Linet/ipaddr/AddressSection;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address$1;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddress(Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address$1;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 3
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$1;->this$0:Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address$1;->this$0:Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6Address;->access$000(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/Address;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address$1;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createAddressInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6Address$1;->createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method

.method public createAddressInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6Address;
    .locals 2

    .line 3
    iget-object v0, p0, Linet/ipaddr/ipv6/IPv6Address$1;->this$0:Linet/ipaddr/ipv6/IPv6Address;

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6Address;->getDefaultCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/ipv6/IPv6Address$1;->this$0:Linet/ipaddr/ipv6/IPv6Address;

    invoke-static {v1}, Linet/ipaddr/ipv6/IPv6Address;->access$000(Linet/ipaddr/ipv6/IPv6Address;)Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createAddress([Linet/ipaddr/ipv6/IPv6AddressSegment;Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;)Linet/ipaddr/ipv6/IPv6Address;

    move-result-object p1

    return-object p1
.end method
