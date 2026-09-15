.class public Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;


# instance fields
.field private certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    sput-object v0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "certificationRequest cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->parseBytes([B)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/bouncycastle/asn1/pkcs/CertificationRequest;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/pkcs/PKCSIOException;

    const-string v1, "empty data passed to constructor"

    invoke-direct {p0, v1}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttributes()[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object p1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object p1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestedExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getAttributes()[Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_extensionRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-ne v4, v5, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_2

    :cond_0
    move v4, v1

    :goto_2
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v4, v1, v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ne v6, v5, :cond_2

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incorrect sequence size of Extension get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected 2 or three"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "DER"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->getSignature()[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lorg/bouncycastle/pkcs/PKCSException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "unable to process signature: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/bouncycastle/asn1/pkcs/CertificationRequest;

    return-object v0
.end method
