.class public abstract Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;
.super Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VersionedAddressCreator"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected final options:Linet/ipaddr/IPAddressStringParameters;

.field versionedValues:[Linet/ipaddr/IPAddress;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/validate/IPAddressProvider$CachedAddressCreator;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method

.method private checkResult(Linet/ipaddr/IPAddress$IPVersion;I)Linet/ipaddr/IPAddress;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->versionedValues:[Linet/ipaddr/IPAddress;

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object v1

    aput-object v1, v0, p2

    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
.end method

.method public getParameters()Linet/ipaddr/IPAddressStringParameters;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->options:Linet/ipaddr/IPAddressStringParameters;

    return-object v0
.end method

.method public getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->versionedValues:[Linet/ipaddr/IPAddress;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->versionedValues:[Linet/ipaddr/IPAddress;

    if-nez v1, :cond_0

    invoke-static {}, Linet/ipaddr/IPAddress$IPVersion;->values()[Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Linet/ipaddr/IPAddress;

    iput-object v1, p0, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->versionedValues:[Linet/ipaddr/IPAddress;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->createVersionedAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->checkResult(Linet/ipaddr/IPAddress$IPVersion;I)Linet/ipaddr/IPAddress;

    move-result-object p1

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, v0}, Linet/ipaddr/format/validate/IPAddressProvider$VersionedAddressCreator;->checkResult(Linet/ipaddr/IPAddress$IPVersion;I)Linet/ipaddr/IPAddress;

    move-result-object p1

    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    move-object p1, v1

    :goto_2
    return-object p1
.end method
