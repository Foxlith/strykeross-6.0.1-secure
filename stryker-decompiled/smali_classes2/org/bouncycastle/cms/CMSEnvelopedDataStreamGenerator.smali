.class public Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
    }
.end annotation


# instance fields
.field private _berEncodeRecipientSet:Z

.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-interface {p3}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    invoke-interface {v3, v1}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method private getVersion(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance p1, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/DLSet;-><init>()V

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 7

    .line 1
    :try_start_0
    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v5, p1, v1, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    iget-boolean p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_0
    invoke-direct {p0, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->getVersion(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz p2, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v6, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-interface {p3}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    invoke-static {p1, v1, v1, p2}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v3

    new-instance p1, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "exception decoding algorithm parameters."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 7

    .line 3
    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v5, p2, v1, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->getVersion(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_0
    iget-boolean p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    if-eqz p2, :cond_1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v6, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-interface {p4}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    invoke-static {p1, v1, v1, p2}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v3

    new-instance p1, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->doOpen(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public setBEREncodeRecipients(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_berEncodeRecipientSet:Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->_bufferSize:I

    return-void
.end method
