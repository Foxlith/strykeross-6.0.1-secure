.class Linet/ipaddr/format/validate/MACAddressProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/MACAddressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/validate/MACAddressProvider;->getAllProvider(Linet/ipaddr/MACAddressStringParameters;)Linet/ipaddr/format/validate/MACAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final synthetic val$creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

.field final synthetic val$segments:[Linet/ipaddr/mac/MACAddressSegment;


# direct methods
.method public constructor <init>(Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;[Linet/ipaddr/mac/MACAddressSegment;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/MACAddressProvider$2;->val$creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    iput-object p2, p0, Linet/ipaddr/format/validate/MACAddressProvider$2;->val$segments:[Linet/ipaddr/mac/MACAddressSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Linet/ipaddr/mac/MACAddress;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$2;->val$creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    iget-object v1, p0, Linet/ipaddr/format/validate/MACAddressProvider$2;->val$segments:[Linet/ipaddr/mac/MACAddressSegment;

    invoke-virtual {v0, v1}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createSectionInternal([Linet/ipaddr/AddressSegment;)Linet/ipaddr/AddressSection;

    move-result-object v0

    check-cast v0, Linet/ipaddr/mac/MACAddressSection;

    iget-object v1, p0, Linet/ipaddr/format/validate/MACAddressProvider$2;->val$creator:Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;

    invoke-virtual {v1, v0}, Linet/ipaddr/mac/MACAddressNetwork$MACAddressCreator;->createAddress(Linet/ipaddr/mac/MACAddressSection;)Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressProvider$2;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
