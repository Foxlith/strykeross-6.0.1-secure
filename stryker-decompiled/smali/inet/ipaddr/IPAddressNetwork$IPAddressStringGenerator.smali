.class public Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;
.super Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddressStringGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator<",
        "Linet/ipaddr/IPAddressString;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator<",
            "Linet/ipaddr/IPAddressString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linet/ipaddr/IPAddressString;",
            ">;)V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linet/ipaddr/IPAddressString;",
            ">;",
            "Linet/ipaddr/IPAddressStringParameters;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;-><init>(Ljava/util/Map;)V

    new-instance v0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;

    invoke-direct {v0, p0, p1, p2}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator$1;-><init>(Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;)V

    iput-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    return-void
.end method

.method public static getValueProvider([B)Linet/ipaddr/Address$SegmentValueProvider;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->getValueProvider([B)Linet/ipaddr/Address$SegmentValueProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/String;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->create(Ljava/lang/String;)Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Linet/ipaddr/IPAddressString;
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-static {v0}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->access$100(Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;)Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/IPAddressNetwork$IPAddressGenerator;->options:Linet/ipaddr/IPAddressStringParameters;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/IPAddressString;

    invoke-direct {v0, p1}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Linet/ipaddr/IPAddressString;

    invoke-direct {v1, p1, v0}, Linet/ipaddr/IPAddressString;-><init>(Ljava/lang/String;Linet/ipaddr/IPAddressStringParameters;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get([B)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->get([B)Linet/ipaddr/IPAddressString;

    move-result-object p1

    return-object p1
.end method

.method public get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/IPAddressString;
    .locals 1

    .line 3
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressString;

    return-object p1
.end method

.method public get(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/IPAddressString;
    .locals 1

    .line 4
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressString;

    return-object p1
.end method

.method public get(Linet/ipaddr/IPAddress$IPAddressValueProvider;)Linet/ipaddr/IPAddressString;
    .locals 1

    .line 5
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPAddressValueProvider;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressString;

    return-object p1
.end method

.method public get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/IPAddressString;
    .locals 1

    .line 6
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressString;

    return-object p1
.end method

.method public get([B)Linet/ipaddr/IPAddressString;
    .locals 1

    .line 7
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$IPAddressStringGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get([B)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/IPAddressString;

    return-object p1
.end method
