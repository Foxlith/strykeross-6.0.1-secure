.class public final Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/MACAddressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/MACAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParsedMACAddressProvider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private address:Linet/ipaddr/mac/MACAddress;

.field private parsedAddress:Linet/ipaddr/format/validate/ParsedMACAddress;


# direct methods
.method public constructor <init>(Linet/ipaddr/mac/MACAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->address:Linet/ipaddr/mac/MACAddress;

    return-void
.end method


# virtual methods
.method public getAddress()Linet/ipaddr/mac/MACAddress;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->parsedAddress:Linet/ipaddr/format/validate/ParsedMACAddress;

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->parsedAddress:Linet/ipaddr/format/validate/ParsedMACAddress;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedMACAddress;->createAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->address:Linet/ipaddr/mac/MACAddress;

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->parsedAddress:Linet/ipaddr/format/validate/ParsedMACAddress;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->address:Linet/ipaddr/mac/MACAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/MACAddressProvider$ParsedMACAddressProvider;->getAddress()Linet/ipaddr/mac/MACAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
