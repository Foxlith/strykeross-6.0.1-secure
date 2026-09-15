.class public Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    instance-of v2, p2, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    invoke-interface {v2}, Lorg/bouncycastle/operator/AADProcessor;->getMAC()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object p2

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    invoke-interface {v4, p2}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p2, p1, v2, v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz p1, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/asn1/BERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, p2, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {p1, v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p2

    :catch_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object p1

    return-object p1
.end method
