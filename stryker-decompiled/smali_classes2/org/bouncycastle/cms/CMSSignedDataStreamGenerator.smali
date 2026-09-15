.class public Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;
    }
.end annotation


# instance fields
.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->certs:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_0

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v1, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    move v4, v3

    move v5, v4

    :cond_4
    const-wide/16 v6, 0x5

    if-eqz v3, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->crls:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_6

    move v2, v1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_8
    if-eqz v5, :cond_9

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v0, 0x4

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_9
    const-wide/16 v0, 0x3

    if-eqz v4, :cond_a

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_a
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->checkForVersion3(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_b
    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1

    :cond_c
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object p1
.end method

.method private checkForVersion3(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getGeneratedVersion()I

    move-result p2

    if-ne p2, v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDigestAlgorithms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v3, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1

    .line 2
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    .line 3
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7

    .line 5
    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v5, p2, v0, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {v5, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->_signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {p2, v3, v6}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->convertToBERSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v6, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    if-eqz p3, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    invoke-static {p2, v0, v1, p3}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-static {p4, p2}, Lorg/bouncycastle/cms/CMSUtils;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    iget-object p3, p0, Lorg/bouncycastle/cms/CMSSignedGenerator;->signerGens:Ljava/util/List;

    invoke-static {p3, p2}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    new-instance p2, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object p2
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    return-void
.end method
