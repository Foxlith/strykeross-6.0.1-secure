.class public Lorg/bouncycastle/cms/CMSEnvelopedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 6

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v3, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    new-instance v4, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v4, v5, v2, v3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_2
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

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

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnprotectedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->unprotectedAttributes:Lorg/bouncycastle/asn1/ASN1Set;

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

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
