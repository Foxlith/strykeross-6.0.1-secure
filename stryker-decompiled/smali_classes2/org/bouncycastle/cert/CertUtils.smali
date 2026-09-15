.class Lorg/bouncycastle/cert/CertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY_LIST:Ljava/util/List;

.field private static EMPTY_SET:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cert/CertUtils;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lorg/bouncycastle/cert/CertIOException;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p3, "cannot encode extension: "

    .line 11
    .line 12
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public static bitStringToBoolean(Lorg/bouncycastle/asn1/ASN1BitString;)[Z
    .locals 7

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v1, :cond_1

    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static booleanToBitString([Z)Lorg/bouncycastle/asn1/DERBitString;
    .locals 7

    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p0, v2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    return-object p0

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    rsub-int/lit8 p0, p0, 0x8

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v1
.end method

.method public static doRemoveExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v0, "remove - extension (OID = "

    .line 49
    .line 50
    const-string v1, ") not found"

    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Ll1/e;->j(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static doReplaceExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replace - original extension (OID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateAttrStructure(Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object p0

    return-object p0
.end method

.method private static generateCRLStructure(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/CertificateList;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object p0

    return-object p0
.end method

.method public static generateFullAttrCert(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;)Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/CertUtils;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/bouncycastle/cert/CertUtils;->generateAttrStructure(Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce attribute certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateFullCRL(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertList;)Lorg/bouncycastle/cert/X509CRLHolder;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/CertUtils;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/bouncycastle/cert/CertUtils;->generateCRLStructure(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/X509CRLHolder;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateFullCert(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/TBSCertificate;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/CertUtils;->generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lorg/bouncycastle/cert/CertUtils;->generateStructure(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static generateSig(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/ASN1Object;)[B
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method private static generateStructure(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/cert/CertUtils;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/cert/CertUtils;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static isAlgIdEqual(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    return v2
.end method

.method public static parseNonEmptyASN1([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no content found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static recoverDate(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Ljava/util/Date;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to recover date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
