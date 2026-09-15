.class public Lorg/bouncycastle/cert/X509v2CRLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    iget-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/util/Date;Ljava/util/Locale;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    iget-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    iget-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/X509CRLHolder;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getThisUpdate()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->addCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;I)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V

    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance p2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3, p2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-object p0
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/cert/CertUtils;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object p0
.end method

.method public addExtension(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CRLHolder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/CertUtils;->generateFullCRL(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertList;)Lorg/bouncycastle/cert/X509CRLHolder;

    move-result-object p1

    return-object p1
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    return-object p1
.end method

.method public hasExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->doGetExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lorg/bouncycastle/cert/CertUtils;->doRemoveExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p3

    const-string v2, "DER"

    invoke-virtual {p3, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/CertIOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cannot encode extension: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-direct {v1, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    invoke-static {v0, v1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public replaceExtension(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1}, Lorg/bouncycastle/cert/CertUtils;->doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    return-object p0
.end method

.method public setNextUpdate(Ljava/util/Date;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNextUpdate(Ljava/util/Date;Ljava/util/Locale;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/X509v2CRLBuilder;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)Lorg/bouncycastle/cert/X509v2CRLBuilder;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cert/X509v2CRLBuilder;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-object p0
.end method
