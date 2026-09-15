.class public Lorg/bouncycastle/cms/CMSAuthenticatedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private mac:[B

.field private macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->mac:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    new-instance v4, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v3, v4}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "CMS Algorithm Identifier Protection check failed for macAlgorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    :try_start_0
    new-instance v3, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-direct {v3, p1, p2, v2}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p2, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;

    invoke-direct {p2, p0}, Lorg/bouncycastle/cms/CMSAuthenticatedData$1;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedData;)V

    invoke-static {v0, p1, v3, p2}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create digest calculator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_5
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {p1, p2, v1, v2}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v0, p2, p1}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 6
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/cms/CMSAuthenticatedData;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method private encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public getContentDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgParams()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedData;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    const-string v2, "exception getting encryption parameters "

    .line 16
    .line 17
    invoke-static {v2, v0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
