.class public Lorg/bouncycastle/cert/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# static fields
.field private static digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# instance fields
.field final holder:Lorg/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-direct {v1, p1, p3, v2, p2}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Holder;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->generateGeneralNames(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/Holder;-><init>(Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method private generateGeneralNames(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-object v0
.end method

.method private getPrincipals([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p1
.end method

.method private matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static setDigestCalculatorProvider(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    sput-object p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Holder;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/AttributeCertificateHolder;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    iget-object p1, p1, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDigestedObjectType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getEntityNames()[Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuer()[Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->getPrincipals([Lorg/bouncycastle/asn1/x509/GeneralName;)[Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtherObjectTypeID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getEntityName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    sget-object v0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v3, p0, Lorg/bouncycastle/cert/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/cert/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return v1
.end method
