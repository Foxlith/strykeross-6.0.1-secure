.class public Lorg/bouncycastle/tsp/TimeStampResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

.field timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->readTimeStampResp(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampResp;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DLSequence;)V
    .locals 3

    .line 2
    const-string v0, "malformed timestamp response: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampToken;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/TimeStampResp;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private static readTimeStampResp(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampResp;
    .locals 3

    const-string v0, "malformed timestamp response: "

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4

    .line 2
    const-string v0, "DL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    goto :goto_0
.end method

.method public getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getFailInfo()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getFailInfo()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;-><init>(Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getStatus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getStatusString()Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->resp:Lorg/bouncycastle/asn1/tsp/TimeStampResp;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TimeStampResp;->getStatus()Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getStatusString()Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getStringAtUTF8(I)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampResponse;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getNonce()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response contains wrong nonce value."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "time stamp token found in failed request."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v1

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "no signing certificate attribute present."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "TSA policy wrong for request."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response for different message imprint algorithm."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "response for different message imprint digest."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result p1

    if-eq p1, v1, :cond_b

    :cond_a
    :goto_3
    return-void

    :cond_b
    new-instance p1, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v0, "no time stamp token found and one expected."

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
