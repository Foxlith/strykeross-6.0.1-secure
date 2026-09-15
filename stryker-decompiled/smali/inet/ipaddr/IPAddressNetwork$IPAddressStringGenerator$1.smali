.class Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;
.super Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator<",
        "Linet/ipaddr/IPAddressString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;->this$0:Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;

    invoke-direct {p0, p2, p3}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic added(Linet/ipaddr/HostIdentifierString;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/IPAddressString;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;->added(Linet/ipaddr/IPAddressString;)V

    return-void
.end method

.method public added(Linet/ipaddr/IPAddressString;)V
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;->this$0:Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->added(Linet/ipaddr/HostIdentifierString;)V

    return-void
.end method

.method public bridge synthetic cache(Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/IPAddressString;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;->cache(Linet/ipaddr/IPAddressString;Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public cache(Linet/ipaddr/IPAddressString;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Linet/ipaddr/IPAddressString;->cacheAddress(Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public bridge synthetic create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;->create(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public create(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressString;
    .locals 0

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toAddressString()Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method
