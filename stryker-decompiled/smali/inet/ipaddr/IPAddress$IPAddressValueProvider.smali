.class public interface abstract Linet/ipaddr/IPAddress$IPAddressValueProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/Address$AddressValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPAddressValueProvider"
.end annotation


# virtual methods
.method public abstract getIPVersion()Linet/ipaddr/IPAddress$IPVersion;
.end method

.method public getPrefixLength()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZone()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
