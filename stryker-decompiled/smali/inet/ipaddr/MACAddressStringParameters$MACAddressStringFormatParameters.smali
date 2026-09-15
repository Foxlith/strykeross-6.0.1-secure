.class public Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
.super Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/MACAddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MACAddressStringFormatParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_SHORT_SEGMENTS:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final allowShortSegments:Z


# direct methods
.method public constructor <init>(ZZZLinet/ipaddr/AddressStringParameters$RangeParameters;Z)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;-><init>(ZZLinet/ipaddr/AddressStringParameters$RangeParameters;Z)V

    iput-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->clone()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->compareTo(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    iget-boolean p1, p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->compareTo(Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    invoke-super {p0, p1}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    iget-boolean v0, v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    return v0
.end method

.method public toBuilder()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;
    .locals 2

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;-><init>()V

    invoke-super {p0, v0}, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->toBuilder(Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;)Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters$BuilderBase;

    iget-boolean v1, p0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    iput-boolean v1, v0, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters$Builder;->allowShortSegments:Z

    return-object v0
.end method
