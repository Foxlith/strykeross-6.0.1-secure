.class public abstract Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/IPAddressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NullProvider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private type:Linet/ipaddr/format/validate/IPAddressProvider$IPType;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->type:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    return-void
.end method


# virtual methods
.method public getProviderAddress()Linet/ipaddr/IPAddress;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderAddress(Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddress;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProviderHostAddress()Linet/ipaddr/IPAddress;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->type:Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    return-object v0
.end method

.method public providerEquals(Linet/ipaddr/format/validate/IPAddressProvider;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v1

    invoke-virtual {p1}, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public providerHashCode()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;->getType()Linet/ipaddr/format/validate/IPAddressProvider$IPType;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
