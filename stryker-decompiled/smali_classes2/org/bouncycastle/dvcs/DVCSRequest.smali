.class public Lorg/bouncycastle/dvcs/DVCSRequest;
.super Lorg/bouncycastle/dvcs/DVCSMessage;
.source "SourceFile"


# instance fields
.field private asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

.field private data:Lorg/bouncycastle/dvcs/DVCSRequestData;

.field private reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSMessage;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    sget-object v0, Lorg/bouncycastle/asn1/dvcs/DVCSObjectIdentifiers;->id_ct_DVCSRequestData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getRequestInformation()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/DVCSRequestInfo;->getServiceType()I

    move-result p1

    sget-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/dvcs/CPDRequestData;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/CPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    goto :goto_3

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VSD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p1, Lorg/bouncycastle/dvcs/VSDRequestData;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/VSDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    new-instance p1, Lorg/bouncycastle/dvcs/VPKCRequestData;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/VPKCRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    new-instance p1, Lorg/bouncycastle/dvcs/CCPDRequestData;

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getData()Lorg/bouncycastle/asn1/dvcs/Data;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/CCPDRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    goto :goto_2

    :goto_3
    return-void

    :cond_4
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "Unknown service type: "

    .line 1
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse content: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance p1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v0, "ContentInfo not a DVCS Request"

    invoke-direct {p1, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequest;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    return-object v0
.end method

.method public getData()Lorg/bouncycastle/dvcs/DVCSRequestData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->data:Lorg/bouncycastle/dvcs/DVCSRequestData;

    return-object v0
.end method

.method public getRequestInfo()Lorg/bouncycastle/dvcs/DVCSRequestInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->reqInfo:Lorg/bouncycastle/dvcs/DVCSRequestInfo;

    return-object v0
.end method

.method public getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequest;->asn1:Lorg/bouncycastle/asn1/dvcs/DVCSRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequest;->getTransactionIdentifier()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method
