.class public Lorg/bouncycastle/dvcs/VSDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "SourceFile"


# instance fields
.field private doc:Lorg/bouncycastle/cms/CMSSignedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    invoke-direct {p0}, Lorg/bouncycastle/dvcs/VSDRequestData;->initDocument()V

    return-void
.end method

.method private initDocument()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/DVCSRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v2, "Can\'t read CMS SignedData from input"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.message should be specified for VSD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
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

.method public getParsedMessage()Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    return-object v0
.end method
