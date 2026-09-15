.class Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;
.super Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/IPAddressNetwork$HostNameGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/HostNameParameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator<",
        "Linet/ipaddr/HostName;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/IPAddressNetwork$HostNameGenerator;

.field final synthetic val$reverseLookup:Z


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressNetwork$HostNameGenerator;Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;Z)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->this$0:Linet/ipaddr/IPAddressNetwork$HostNameGenerator;

    iput-boolean p4, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->val$reverseLookup:Z

    invoke-direct {p0, p2, p3}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic added(Linet/ipaddr/HostIdentifierString;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/HostName;

    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->added(Linet/ipaddr/HostName;)V

    return-void
.end method

.method public added(Linet/ipaddr/HostName;)V
    .locals 1

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->this$0:Linet/ipaddr/IPAddressNetwork$HostNameGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;->added(Linet/ipaddr/HostIdentifierString;)V

    return-void
.end method

.method public bridge synthetic cache(Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 1
    check-cast p1, Linet/ipaddr/HostName;

    invoke-virtual {p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->cache(Linet/ipaddr/HostName;Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public cache(Linet/ipaddr/HostName;Linet/ipaddr/IPAddress;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Linet/ipaddr/HostName;->cacheAddress(Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public bridge synthetic create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostName;

    move-result-object p1

    return-object p1
.end method

.method public create(Linet/ipaddr/IPAddress;)Linet/ipaddr/HostName;
    .locals 1

    .line 2
    iget-boolean v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;->val$reverseLookup:Z

    if-eqz v0, :cond_0

    new-instance v0, Linet/ipaddr/HostName;

    invoke-virtual {p1}, Linet/ipaddr/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Linet/ipaddr/HostName;

    invoke-direct {v0, p1}, Linet/ipaddr/HostName;-><init>(Linet/ipaddr/IPAddress;)V

    return-object v0
.end method
