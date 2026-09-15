.class public Lorg/bouncycastle/cms/CMSSignedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "SourceFile"


# static fields
.field private static final HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

.field private static final dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;


# instance fields
.field private _certSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private _crlSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private _isCertCrlParsed:Z

.field private _signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

.field private _signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private _signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

.field private _signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

.field private digestAlgorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private digests:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V
    .locals 4

    invoke-direct {p0, p3}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object p3, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    iget-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    instance-of v0, p3, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v0, :cond_3

    check-cast p3, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    new-instance v0, Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    iget-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez p3, :cond_2

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSTypedStream;->drain()V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    new-instance v0, Lorg/bouncycastle/cms/PKCS7TypedStream;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/cms/PKCS7TypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p3, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/cms/PKCS7TypedStream;->drain()V

    :cond_5
    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_4
    return-void

    :goto_5
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "io exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;[B)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;[B)V
    .locals 1

    .line 8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Ljava/io/InputStream;)V

    return-void
.end method

.method private static getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeOctetString(Lorg/bouncycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method private static pipeOctetString(Lorg/bouncycastle/asn1/ASN1OctetStringParser;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private populateCertCrlSets()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_isCertCrlParsed:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "problem parsing cert/crl sets"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static replaceCertificatesAndCRLs(Ljava/io/InputStream;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v1, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    if-nez p1, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p3

    if-lez p3, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v2, v3, v3, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p3, v3, v4, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-object p4
.end method

.method public static replaceSigners(Ljava/io/InputStream;Lorg/bouncycastle/cms/SignerInformationStore;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 9

    new-instance v0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v1, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v7, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v6}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/cms/CMSSignedDataParser;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v7, v6, v8}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v2

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/bouncycastle/cms/CMSSignedDataParser;->pipeEncapsulatedOctetString(Lorg/bouncycastle/asn1/cms/ContentInfoParser;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object p0

    invoke-static {v1, p0, v4}, Lorg/bouncycastle/cms/CMSSignedDataParser;->writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V

    new-instance p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-object p2
.end method

.method private static writeSetToGeneratorTagged(Lorg/bouncycastle/asn1/ASN1Generator;Lorg/bouncycastle/asn1/ASN1SetParser;I)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSSignedDataParser;->getASN1Set(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p1, p1, Lorg/bouncycastle/asn1/BERSetParser;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Generator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {p1, v1, p2, v0}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p1, v1, p2, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_certSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digestAlgorithms:Ljava/util/Set;

    return-object v0
.end method

.method public getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/util/Store;
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_crlSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object p1

    return-object p1
.end method

.method public getSignedContent()Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->attachDigestsToInputStream(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/CMSTypedStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedDataParser;->populateCertCrlSets()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->digests:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lorg/bouncycastle/operator/DigestCalculator;

    .line 45
    .line 46
    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, [B

    .line 87
    .line 88
    new-instance v5, Lorg/bouncycastle/cms/SignerInformation;

    .line 89
    .line 90
    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-direct {v5, v3, v6, v7, v4}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    new-instance v1, Lorg/bouncycastle/cms/SignerInformationStore;

    .line 103
    .line 104
    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :goto_2
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "io exception: "

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    .line 128
    .line 129
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedDataParser;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method
