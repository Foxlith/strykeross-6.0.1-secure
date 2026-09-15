.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "SourceFile"


# instance fields
.field private authAttrNotRead:Z

.field private authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

.field private mac:[B

.field private macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unauthAttrNotRead:Z

.field private unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    new-instance p1, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v1, p2, v0, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)V

    invoke-static {p1, p2, v1, v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

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

.method private getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getContentDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-eqz v0, :cond_0

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

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgParams()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->macAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->authData:Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
