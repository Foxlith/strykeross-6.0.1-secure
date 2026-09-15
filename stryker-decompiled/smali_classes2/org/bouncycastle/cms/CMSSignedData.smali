.class public Lorg/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# static fields
.field private static final HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

.field private static final dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;


# instance fields
.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private hashes:Ljava/util/Map;

.field signedContent:Lorg/bouncycastle/cms/CMSTypedData;

.field signedData:Lorg/bouncycastle/asn1/cms/SignedData;

.field signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedData;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 0

    .line 3
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/cms/CMSTypedData;

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSSignedData$1;-><init>(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 0

    .line 7
    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    iget-object p1, p1, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 9
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public static addDigestAlgorithm(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getDigestAlgorithmIDs()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sget-object v2, Lorg/bouncycastle/cms/CMSSignedData;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v1, p1, v2}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/cms/CMSSignedData;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->convertToBERSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq p1, v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p0

    iput-object p0, v1, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v1, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object v0, v1, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v1, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v1
.end method

.method private getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;
    .locals 3

    const-string v0, "Malformed content."

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :goto_1
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static replaceCertificatesAndCRLs(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 8

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eqz p2, :cond_3

    move-object v5, p1

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    if-eqz p3, :cond_4

    invoke-static {p3}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p2

    if-eqz p2, :cond_4

    move-object v6, p1

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    new-instance p1, Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object p1, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object p2, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public static replaceSigners(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 5

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    iput-object p1, v0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v4, Lorg/bouncycastle/cms/CMSSignedData;->dgstAlgFinder:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->convertToBERSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/asn1/DLSet;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance p0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object p1, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iget-object v1, v0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p0, v0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method private verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bouncycastle/util/Store<",
            "Lorg/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/util/Store;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object p1

    return-object p1
.end method

.method public getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-instance v5, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    invoke-direct {v5, v3, v4, v7, v6}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    goto :goto_1

    :goto_2
    new-instance v7, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {v7, v3, v4, v6, v5}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isCertificateManagementMessage()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDetachedSignature()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;->verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z

    move-result p1

    return p1
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/SignerInformation;

    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z

    move-result v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    return v3

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failure in verifier provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
