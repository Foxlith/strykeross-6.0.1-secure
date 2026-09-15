.class public Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderBase"
.end annotation


# instance fields
.field protected allowLeadingZeros:Z

.field protected allowUnlimitedLeadingZeros:Z

.field protected allowWildcardedSeparator:Z

.field protected rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->DEFAULT_RANGE_OPTIONS:Linet/ipaddr/AddressStringParameters$RangeParameters;

    iput-object v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    iput-boolean v0, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    return-void
.end method


# virtual methods
.method public allowLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    if-nez p1, :cond_0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    :cond_0
    return-object p0
.end method

.method public allowUnlimitedLeadingZeros(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowUnlimitedLeadingZeros:Z

    if-eqz p1, :cond_0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowLeadingZeros:Z

    :cond_0
    return-object p0
.end method

.method public allowWildcardedSeparator(Z)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->allowWildcardedSeparator:Z

    return-object p0
.end method

.method public setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    return-object p0
.end method
