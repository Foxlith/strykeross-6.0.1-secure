.class Linet/ipaddr/ipv6/IPv6AddressSection$1;
.super Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;->getAddressCreator(I)Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv6/IPv6AddressSection;

.field final synthetic val$startIndex:I


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;I)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressSection;

    iput p4, p0, Linet/ipaddr/ipv6/IPv6AddressSection$1;->val$startIndex:I

    invoke-direct {p0, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;-><init>(Linet/ipaddr/ipv6/IPv6AddressNetwork;Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$1;->createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createPrefixedSectionInternal([Linet/ipaddr/IPAddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1, p2, p3}, Linet/ipaddr/ipv6/IPv6AddressSection$1;->createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createPrefixedSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;Ljava/lang/Integer;Z)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 7

    .line 3
    new-instance v6, Linet/ipaddr/ipv6/IPv6AddressSection;

    iget v2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$1;->val$startIndex:I

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/ipv6/IPv6AddressSection;-><init>([Linet/ipaddr/ipv6/IPv6AddressSegment;IZLjava/lang/Integer;Z)V

    return-object v6
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$1;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createSectionInternal([Linet/ipaddr/IPAddressSegment;)Linet/ipaddr/IPAddressSection;
    .locals 0

    .line 2
    check-cast p1, [Linet/ipaddr/ipv6/IPv6AddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$1;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;)Linet/ipaddr/ipv6/IPv6AddressSection;
    .locals 2

    .line 3
    invoke-virtual {p0}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->getNetwork()Linet/ipaddr/ipv6/IPv6AddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressNetwork;->getAddressCreator()Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;

    move-result-object v0

    iget v1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$1;->val$startIndex:I

    invoke-virtual {v0, p1, v1}, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator;->createSectionInternal([Linet/ipaddr/ipv6/IPv6AddressSegment;I)Linet/ipaddr/ipv6/IPv6AddressSection;

    move-result-object p1

    return-object p1
.end method
