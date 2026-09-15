.class public interface abstract Linet/ipaddr/format/IPAddressDivisionSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionSeries;
.implements Linet/ipaddr/format/string/IPAddressStringDivisionSeries;


# virtual methods
.method public bridge synthetic getDivision(I)Linet/ipaddr/format/AddressGenericDivision;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Linet/ipaddr/format/IPAddressDivisionSeries;->getDivision(I)Linet/ipaddr/format/IPAddressGenericDivision;

    move-result-object p1

    return-object p1
.end method

.method public abstract getNetworkPrefixLength()Ljava/lang/Integer;
.end method
