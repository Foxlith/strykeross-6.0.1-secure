.class public interface abstract Linet/ipaddr/format/string/IPAddressStringDivision;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/string/AddressStringDivision;


# virtual methods
.method public abstract getBitCount()I
.end method

.method public abstract getDivisionPrefixLength()Ljava/lang/Integer;
.end method

.method public abstract getPrefixAdjustedRangeString(ILinet/ipaddr/format/util/AddressSegmentParams;Ljava/lang/StringBuilder;)I
.end method

.method public abstract isFullRange()Z
.end method

.method public abstract isPrefixBlock()Z
.end method

.method public abstract isSinglePrefixBlock()Z
.end method
