.class public interface abstract Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/string/AddressStringDivisionSeries;


# virtual methods
.method public bridge synthetic getDivision(I)Linet/ipaddr/format/string/AddressStringDivision;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;

    move-result-object p1

    return-object p1
.end method

.method public abstract getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;
.end method

.method public abstract getNetwork()Linet/ipaddr/IPAddressNetwork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/IPAddressNetwork<",
            "*****>;"
        }
    .end annotation
.end method

.method public abstract getPrefixLength()Ljava/lang/Integer;
.end method

.method public abstract isPrefixBlock()Z
.end method

.method public abstract isPrefixed()Z
.end method
