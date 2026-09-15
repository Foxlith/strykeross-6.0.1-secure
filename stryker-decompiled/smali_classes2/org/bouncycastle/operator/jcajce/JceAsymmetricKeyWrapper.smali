.class public Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyWrapper;
.source "SourceFile"


# static fields
.field private static final digests:Ljava/util/Map;

.field private static final gostAlgs:Ljava/util/Set;


# instance fields
.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private publicKey:Ljava/security/PublicKey;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->gostAlgs:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001_CryptoPro_ESDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->digests:Ljava/util/Map;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA1"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA384"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA512"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA512/224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA-512/224"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-512(224)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA512/256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v4, "SHA-512/256"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "SHA-512(256)"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;Ljava/security/PublicKey;)V
    .locals 1

    .line 1
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extractFromSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;-><init>(Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/PublicKey;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extractFromSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private static extractFromSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 8

    instance-of v0, p0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_2

    check-cast p0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v0

    instance-of v0, v0, Ljavax/crypto/spec/PSource$PSpecified;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v6

    check-cast v6, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v6}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p0}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p0

    invoke-direct {v7, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown PSource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown MGF: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown spec: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->digests:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "unknown digest name: "

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->gostAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 7

    .line 1
    const-string v0, "unable to encrypt contents key"

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x3

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 20
    .line 21
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 42
    .line 43
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget-object v6, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_0

    .line 94
    .line 95
    new-instance v5, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 96
    .line 97
    sget-object v6, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_28147_param_Z:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    .line 99
    invoke-direct {v5, v6, v4, v1}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;[B)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    :cond_0
    new-instance v5, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 106
    .line 107
    sget-object v6, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_A_ParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    .line 109
    invoke-direct {v5, v6, v4, v1}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;[B)V

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v1, v4}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v4, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 131
    .line 132
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-direct {v4, v6}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 143
    .line 144
    invoke-virtual {v1, v0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 145
    .line 146
    .line 147
    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    new-instance v2, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    .line 172
    .line 173
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 185
    .line 186
    .line 187
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 188
    .line 189
    const-string v2, "GOST"

    .line 190
    .line 191
    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v0, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    .line 199
    .line 200
    new-instance v1, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    const/16 v3, 0x20

    .line 204
    .line 205
    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const/16 v4, 0x24

    .line 210
    .line 211
    invoke-static {p1, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;-><init>([B[B)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;-><init>(Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 222
    .line 223
    .line 224
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-object p1

    .line 226
    :goto_1
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    .line 227
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v2, "exception wrapping key: "

    .line 231
    .line 232
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 244
    .line 245
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    .line 254
    .line 255
    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :try_start_1
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    .line 260
    .line 261
    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v4, v5}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/AlgorithmParameters;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-eqz v4, :cond_2

    .line 270
    .line 271
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 272
    .line 273
    iget-object v6, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 274
    .line 275
    invoke-virtual {v1, v3, v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 280
    .line 281
    iget-object v5, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 282
    .line 283
    invoke-virtual {v1, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 284
    .line 285
    .line 286
    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 291
    .line 292
    .line 293
    move-result-object v3
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    goto :goto_3

    .line 295
    :catch_1
    const/4 v3, 0x0

    .line 296
    :goto_3
    if-nez v3, :cond_3

    .line 297
    .line 298
    :try_start_2
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->publicKey:Ljava/security/PublicKey;

    .line 299
    .line 300
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 301
    .line 302
    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 303
    .line 304
    .line 305
    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 314
    .line 315
    .line 316
    move-result-object v3
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 317
    goto :goto_6

    .line 318
    :catch_2
    move-exception p1

    .line 319
    goto :goto_4

    .line 320
    :catch_3
    move-exception p1

    .line 321
    goto :goto_5

    .line 322
    :goto_4
    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    .line 323
    .line 324
    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :goto_5
    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    .line 329
    .line 330
    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :cond_3
    :goto_6
    return-object v3
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
