.class public Lorg/bouncycastle/dvcs/CPDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/bouncycastle/dvcs/CPDRequestData;->initMessage()V

    return-void
.end method

.method private initMessage()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.message should be specified for CPD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method
