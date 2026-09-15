.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    const-string v4, "unable to perform MAC calculation: "

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v7}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Lorg/bouncycastle/util/io/TeeOutputStream;->close()V

    new-instance v7, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v10

    invoke-virtual {v1, v6, v8, v9, v10}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v8, :cond_1

    new-instance v8, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;

    invoke-direct {v8}, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;-><init>()V

    iput-object v8, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_1
    new-instance v15, Lorg/bouncycastle/asn1/DERSet;

    iget-object v8, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v8, v6}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v8

    invoke-direct {v15, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    const-string v9, "DER"

    invoke-virtual {v15, v9}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v4, :cond_2

    new-instance v5, Lorg/bouncycastle/asn1/BERSet;

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v4, v6}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :cond_2
    move-object/from16 v17, v5

    new-instance v14, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v14, v0, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v10, v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    invoke-interface/range {p3 .. p3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v13

    move-object v9, v0

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v17}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to perform digest calculation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_3
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v7}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Lorg/bouncycastle/util/io/TeeOutputStream;->close()V

    new-instance v7, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v6

    invoke-direct {v15, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v4, :cond_4

    new-instance v5, Lorg/bouncycastle/asn1/BERSet;

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v4, v6}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :cond_4
    move-object/from16 v16, v5

    new-instance v13, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v13, v0, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v9, v1, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v10, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    :goto_1
    new-instance v3, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/cms/CMSAuthenticatedData;

    new-instance v4, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;

    invoke-direct {v4, v1, v2}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;Lorg/bouncycastle/operator/DigestCalculator;)V

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
