.class Linet/ipaddr/format/validate/IPAddressProvider$1;
.super Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/IPAddressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;-><init>(Linet/ipaddr/format/validate/IPAddressProvider$IPType;)V

    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
