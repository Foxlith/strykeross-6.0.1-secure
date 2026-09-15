.class Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedAddress"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;

.field addressStringException:Linet/ipaddr/AddressStringException;

.field isReverseDNS:Z

.field isUNCIPv6Literal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
