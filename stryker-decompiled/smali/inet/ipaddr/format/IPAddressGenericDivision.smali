.class public interface abstract Linet/ipaddr/format/IPAddressGenericDivision;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressGenericDivision;
.implements Linet/ipaddr/format/string/IPAddressStringDivision;


# virtual methods
.method public isFullRange()Z
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/AddressItem;->isFullRange()Z

    move-result v0

    return v0
.end method

.method public abstract isPrefixed()Z
.end method
