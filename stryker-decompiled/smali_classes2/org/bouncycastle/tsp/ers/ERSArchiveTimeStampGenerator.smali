.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation
.end field

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    return-void
.end method

.method private getPartialHashtrees()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    iget-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/tsp/ers/ERSCachingData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B

    move-result-object v7

    invoke-static {v7, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [[B

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    invoke-direct {v7, v5}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([[B)V

    aput-object v7, v1, v3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_4

    new-instance v5, Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([B)V

    aput-object v5, v1, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addData(Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generateArchiveTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    move-object v0, v1

    :goto_0
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong root hash"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v0, "time stamp imprint for wrong algorithm"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method
