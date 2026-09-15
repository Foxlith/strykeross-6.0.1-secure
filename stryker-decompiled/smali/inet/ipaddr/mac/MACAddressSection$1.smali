.class Linet/ipaddr/mac/MACAddressSection$1;
.super Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/mac/MACAddressSection;->getAddressCreator(IZ)Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final synthetic this$0:Linet/ipaddr/mac/MACAddressSection;

.field final synthetic val$extended:Z

.field final synthetic val$startIndex:I


# direct methods
.method public constructor <init>(Linet/ipaddr/mac/MACAddressSection;Linet/ipaddr/mac/MACAddressNetwork;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;IZ)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressSection$1;->this$0:Linet/ipaddr/mac/MACAddressSection;

    iput p4, p0, Linet/ipaddr/mac/MACAddressSection$1;->val$startIndex:I

    iput-boolean p5, p0, Linet/ipaddr/mac/MACAddressSection$1;->val$extended:Z

    invoke-direct {p0, p2, p3}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;-><init>(Linet/ipaddr/mac/MACAddressNetwork;Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator$Cache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;
    .locals 0

    .line 1
    check-cast p1, [Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {p0, p1}, Linet/ipaddr/mac/MACAddressSection$1;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method

.method public createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;)Linet/ipaddr/mac/MACAddressSection;
    .locals 3

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->getNetwork()Linet/ipaddr/mac/MACAddressNetwork;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/mac/MACAddressNetwork;->getAddressCreator()Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    move-result-object v0

    iget v1, p0, Linet/ipaddr/mac/MACAddressSection$1;->val$startIndex:I

    iget-boolean v2, p0, Linet/ipaddr/mac/MACAddressSection$1;->val$extended:Z

    invoke-virtual {v0, p1, v1, v2}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/mac/MACAddressSegment;IZ)Linet/ipaddr/mac/MACAddressSection;

    move-result-object p1

    return-object p1
.end method
