.class public Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
.super Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderBase"
.end annotation


# instance fields
.field protected allowBinary:Z

.field protected allowPrefixLengthLeadingZeros:Z

.field protected allowPrefixesBeyondAddressSize:Z

.field parent:Linet/ipaddr/IPAddressStringParameters$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros:Z

    iput-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary:Z

    return-void
.end method


# virtual methods
.method public allowBinary(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary:Z

    return-object p0
.end method

.method public bridge synthetic allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public allowLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p1
.end method

.method public allowPrefixLengthLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros:Z

    return-object p0
.end method

.method public allowPrefixesBeyondAddressSize(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize:Z

    return-object p0
.end method

.method public bridge synthetic allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public allowUnlimitedLeadingZeros(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p1
.end method

.method public bridge synthetic allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p1
.end method

.method public getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->parent:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object v0
.end method

.method public bridge synthetic setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;

    return-object p1
.end method
