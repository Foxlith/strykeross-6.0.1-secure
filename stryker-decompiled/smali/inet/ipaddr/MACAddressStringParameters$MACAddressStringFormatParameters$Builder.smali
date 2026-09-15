.class public Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
.super Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field allowShortSegments:Z

.field parent:Linet/ipaddr/MACAddressStringParameters$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowShortSegments:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowLeadingZeros(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowLeadingZeros(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p1
.end method

.method public allowShortSegments(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowShortSegments:Z

    return-object p0
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowUnlimitedLeadingZeros(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p1
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowWildcardedSeparator(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p1
.end method

.method public getParentBuilder()Linet/ipaddr/MACAddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->parent:Linet/ipaddr/MACAddressStringParameters$Builder;

    return-object v0
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    return-object p1
.end method

.method public toParams()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
    .locals 7

    new-instance v6, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowShortSegments:Z

    iget-boolean v2, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    iget-boolean v3, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    iget-object v4, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iget-boolean v5, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;-><init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;Z)V

    return-object v6
.end method
