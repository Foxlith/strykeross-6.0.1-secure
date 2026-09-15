.class public interface abstract Linet/ipaddr/format/util/IPAddressStringWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressDivisionWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressDivisionWriter;"
    }
.end annotation


# virtual methods
.method public abstract getTrailingSegmentSeparator()C
.end method

.method public abstract getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Ljava/lang/CharSequence;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
