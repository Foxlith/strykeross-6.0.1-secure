.class public Linet/ipaddr/IPAddressNetwork$HostNameGenerator;
.super Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostNameGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator<",
        "Linet/ipaddr/HostName;",
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
            "Linet/ipaddr/HostName;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Linet/ipaddr/HostNameParameters;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/HostNameParameters;Z)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/HostNameParameters;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/HostNameParameters;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linet/ipaddr/HostName;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Linet/ipaddr/HostName;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/HostNameParameters;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;-><init>(Ljava/util/Map;Linet/ipaddr/HostNameParameters;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Linet/ipaddr/HostNameParameters;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linet/ipaddr/HostName;",
            ">;",
            "Linet/ipaddr/HostNameParameters;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Linet/ipaddr/AddressNetwork$HostIdentifierStringGenerator;-><init>(Ljava/util/Map;)V

    new-instance v0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;

    iget-object v1, p2, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {v0, p0, p1, v1, p3}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator$1;-><init>(Linet/ipaddr/IPAddressNetwork$HostNameGenerator;Ljava/util/Map;Linet/ipaddr/IPAddressStringParameters;Z)V

    iput-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    iput-object p2, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->options:Linet/ipaddr/HostNameParameters;

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
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->create(Ljava/lang/String;)Linet/ipaddr/HostName;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;)Linet/ipaddr/HostName;
    .locals 2

    .line 2
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->options:Linet/ipaddr/HostNameParameters;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/HostName;

    invoke-direct {v0, p1}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Linet/ipaddr/HostName;

    iget-object v1, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->options:Linet/ipaddr/HostNameParameters;

    invoke-direct {v0, p1, v1}, Linet/ipaddr/HostName;-><init>(Ljava/lang/String;Linet/ipaddr/HostNameParameters;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get([B)Linet/ipaddr/HostIdentifierString;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->get([B)Linet/ipaddr/HostName;

    move-result-object p1

    return-object p1
.end method

.method public get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostName;
    .locals 1

    .line 3
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/Address$AddressValueProvider;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/HostName;

    return-object p1
.end method

.method public get(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostName;
    .locals 1

    .line 4
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;Ljava/lang/CharSequence;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/HostName;

    return-object p1
.end method

.method public get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/HostName;
    .locals 1

    .line 5
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get(Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Ljava/lang/Integer;)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/HostName;

    return-object p1
.end method

.method public get([B)Linet/ipaddr/HostName;
    .locals 1

    .line 6
    iget-object v0, p0, Linet/ipaddr/IPAddressNetwork$HostNameGenerator;->addressGenerator:Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressNetwork$HostIDStringAddressGenerator;->get([B)Linet/ipaddr/HostIdentifierString;

    move-result-object p1

    check-cast p1, Linet/ipaddr/HostName;

    return-object p1
.end method
