.class public interface abstract Linet/ipaddr/IPAddressConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;
.implements Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressConverter$DefaultAddressConverter;
    }
.end annotation


# virtual methods
.method public abstract isIPv4Convertible(Linet/ipaddr/IPAddress;)Z
.end method

.method public abstract isIPv6Convertible(Linet/ipaddr/IPAddress;)Z
.end method
