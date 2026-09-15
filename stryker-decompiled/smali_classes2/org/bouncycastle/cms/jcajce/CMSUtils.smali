.class Lorg/bouncycastle/cms/jcajce/CMSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ecAlgs:Ljava/util/Set;

.field private static final gostAlgs:Ljava/util/Set;

.field private static final mqvAlgs:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/CMSUtils;->mqvAlgs:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/bouncycastle/cms/jcajce/CMSUtils;->ecAlgs:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lorg/bouncycastle/cms/jcajce/CMSUtils;->gostAlgs:Ljava/util/Set;

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->mqvSinglePass_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha224kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha256kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha384kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_cofactorDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->dhSinglePass_stdDH_sha512kdf_scheme:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_ESDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/util/AnnotatedPrivateKey;->getKey()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static createContentHelper(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    return-object p0
.end method

.method public static createContentHelper(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
    .locals 2

    .line 2
    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    return-object p0
.end method

.method public static extractParameters(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/util/AlgorithmParametersUtils;->extractParameters(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "cannot extract parameters: "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static getIssuerAndSerialNumber(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .locals 2

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static getSubjectKeyId(Ljava/security/cert/X509Certificate;)[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEC(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/CMSUtils;->ecAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/CMSUtils;->gostAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/CMSUtils;->mqvAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRFC2631(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_ESDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_SSDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loadParameters(Ljava/security/AlgorithmParameters;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/util/AlgorithmParametersUtils;->loadParameters(Ljava/security/AlgorithmParameters;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "error encoding algorithm parameters."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
