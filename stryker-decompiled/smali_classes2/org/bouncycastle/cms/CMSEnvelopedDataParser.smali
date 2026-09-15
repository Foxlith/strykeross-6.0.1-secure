.class public Lorg/bouncycastle/cms/CMSEnvelopedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "SourceFile"


# instance fields
.field private attrNotRead:Z

.field private encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

    new-instance p1, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getEncryptedContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
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
.method public getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

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

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnprotectedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->attrNotRead:Z

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

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->unprotectedAttributes:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
