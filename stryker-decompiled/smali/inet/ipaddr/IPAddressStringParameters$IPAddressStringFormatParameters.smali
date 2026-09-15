.class public abstract Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;
.super Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IPAddressStringFormatParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_BINARY:Z = true

.field public static final DEFAULT_ALLOW_PREFIX_BEYOND_ADDRESS_SIZE:Z = false

.field public static final DEFAULT_ALLOW_PREFIX_LENGTH_LEADING_ZEROS:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowBinary:Z

.field public final allowPrefixLengthLeadingZeros:Z

.field public final allowPrefixesBeyondAddressSize:Z


# direct methods
.method public constructor <init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;-><init>(ZZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZZZLinet/ipaddr/AddressStringParameters$RangeParameters;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p4, p5, p6}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;-><init>(ZZLinet/ipaddr/AddressStringParameters$RangeParameters;Z)V

    iput-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    iput-boolean p3, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    iput-boolean p7, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    return-void
.end method


# virtual methods
.method public compareTo(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;)I
    .locals 2

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->compareTo(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    iget-boolean v1, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    iget-boolean p1, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    iget-boolean v2, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-ne p1, v2, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    iget-boolean v0, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x8

    :cond_0
    return v0
.end method

.method public toBuilder(Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;)Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;
    .locals 1

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->toBuilder(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    iput-boolean v0, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixLengthLeadingZeros:Z

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    iput-boolean v0, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowPrefixesBeyondAddressSize:Z

    iget-boolean v0, p0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    iput-boolean v0, p1, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters$BuilderBase;->allowBinary:Z

    return-object p1
.end method
