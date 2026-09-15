.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

.field private final timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object p3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method


# virtual methods
.method public checkContainsHashValue([BLorg/bouncycastle/operator/DigestCalculator;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->containsHash([B)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValueCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[[B)[B

    move-result-object v2

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "object hash not found"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "object hash not found in wrapped timestamp"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "timestamp hash does not match root"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    return-void
.end method

.method public validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent([BLjava/util/Date;)V

    return-void
.end method

.method public validatePresent([BLjava/util/Date;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkContainsHashValue([BLorg/bouncycastle/operator/DigestCalculator;)V

    iget-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string p2, "timestamp generation time is in the future"

    invoke-direct {p1, p2}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
