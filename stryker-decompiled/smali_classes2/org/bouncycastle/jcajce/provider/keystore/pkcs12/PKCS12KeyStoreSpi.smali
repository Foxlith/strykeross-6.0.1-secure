.class public Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefPKCS12KeyStore3DES;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0xc800

.field static final NULL:I = 0x0

.field static final PKCS12_MAX_IT_COUNT_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs12.max_it_count"

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private itCount:I

.field private keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 10
    .line 11
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 18
    .line 19
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 25
    .line 26
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 32
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 39
    .line 40
    new-instance v0, Ljava/util/Hashtable;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 46
    .line 47
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 52
    .line 53
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    .line 55
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    .line 64
    const v0, 0x19000

    .line 65
    .line 66
    .line 67
    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 68
    .line 69
    const/16 v0, 0x14

    .line 70
    .line 71
    iput v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 72
    .line 73
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    .line 75
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    :try_start_0
    const-string p2, "X.509"

    .line 78
    .line 79
    invoke-interface {p1, p2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "can\'t create cert factory - "

    .line 92
    .line 93
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p3}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2
.end method

.method public static synthetic access$100(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p0

    return-object p0
.end method

.method private calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 1

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p2, p4, p5}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p6}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method private createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 10

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    sget-object v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v1

    invoke-direct {v3, p2, v4, v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v3, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    move-object v3, v9

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v2, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p3

    instance-of v1, p3, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p3

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_1
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_2

    :cond_1
    invoke-static {p3}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;

    move-result-object p3

    new-instance v1, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GOST28147Parameters;->getIV()[B

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    goto :goto_1

    :goto_2
    return-object v0
.end method

.method private createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v2, p2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v2, :cond_4

    check-cast p2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p2, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    invoke-interface {p2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {p2, v4}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    :cond_4
    new-instance p2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    new-instance v3, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    new-instance p1, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object p2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p1, p2, v0, v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object p1
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "error creating key"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->size()I

    move-result v1

    const-string v9, "BER"

    const-string v2, "Error encoding certificate: "

    const-string v10, "DER"

    if-nez v1, :cond_2

    if-nez v7, :cond_3

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-direct {v8, v4, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz p3, :cond_1

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/Pfx;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v5, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    invoke-virtual {v3, v0, v10}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v5, Lorg/bouncycastle/asn1/BEROctetString;

    new-instance v6, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/Pfx;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v6, Lorg/bouncycastle/asn1/BEROctetString;

    new-instance v7, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v5, v4, v6}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v5, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    invoke-virtual {v3, v0, v9}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    if-eqz v7, :cond_1b

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const v5, 0xc800

    const/16 v6, 0x14

    if-eqz v4, :cond_a

    new-array v4, v6, [B

    iget-object v6, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v13, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v13, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/PrivateKey;

    new-instance v14, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v14, v4, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iget-object v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v13, v14, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v15, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    invoke-direct {v5, v15, v14}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v14, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v14, v5, v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v5, v13, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v5, :cond_8

    check-cast v13, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    :cond_4
    new-instance v15, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v15, v6}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v5, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    if-nez v15, :cond_6

    invoke-virtual {v8, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v15

    invoke-interface {v13, v5, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_6
    invoke-interface {v13}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v5

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v15, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v13, v12}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v15, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v12, 0x1

    goto :goto_3

    :cond_7
    if-nez v12, :cond_9

    :cond_8
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v8, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v11}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v11

    invoke-direct {v12, v11}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v11, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v11, Lorg/bouncycastle/asn1/DERSet;

    new-instance v12, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v12, v6}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_9
    new-instance v5, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v6, v11, v12}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_2

    :cond_a
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v11, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v11, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    new-array v1, v6, [B

    iget-object v3, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    new-instance v13, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v13, v1, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_11

    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    new-instance v14, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v15, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v16, v4

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v14, v15, v12}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v12, v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v12, :cond_f

    move-object v12, v6

    check-cast v12, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    sget-object v15, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v12, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_b
    :goto_5
    new-instance v7, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v7, v5}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v15, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_c
    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v12, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    if-nez v15, :cond_d

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v15

    invoke-interface {v12, v7, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_d
    invoke-interface {v12}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v7

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v7

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v7, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v18, v9

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v12, v15}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v7, v17

    move-object/from16 v9, v18

    const/4 v15, 0x1

    goto :goto_6

    :cond_e
    move-object/from16 v18, v9

    if-nez v15, :cond_10

    goto :goto_7

    :cond_f
    move-object/from16 v18, v9

    :goto_7
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    new-instance v12, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v12, v5}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_10
    new-instance v5, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v7, v9, v12}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p2

    move-object/from16 v4, v16

    move-object/from16 v9, v18

    goto/16 :goto_4

    :goto_8
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v18, v9

    iget-object v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_13

    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    iget-object v7, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_12

    goto :goto_9

    :cond_12
    invoke-direct {v8, v5, v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_18

    :try_start_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    iget-object v7, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_15

    goto :goto_a

    :cond_15
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v9, v12}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    instance-of v12, v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v12, :cond_17

    check-cast v6, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v6}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v15, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v15

    if-eqz v15, :cond_16

    goto :goto_b

    :cond_16
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v15, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v16, v1

    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    invoke-interface {v6, v14}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-direct {v1, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v15, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v1, v16

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_17
    move-object/from16 v16, v1

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    new-instance v12, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v6, v7, v12}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v1, v16

    goto/16 :goto_a

    :goto_c
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v3, v13

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v13, v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v4, v3, v11}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x1

    aput-object v4, v1, v2

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    if-eqz p3, :cond_19

    move-object v1, v10

    goto :goto_d

    :cond_19
    move-object/from16 v1, v18

    :goto_d
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v9, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    new-instance v2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v9, v3, v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v11, v1, [B

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    :try_start_4
    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v11

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v3, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/MacData;

    iget v3, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    invoke-direct {v1, v2, v11, v3}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v2, v9, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    if-eqz p3, :cond_1a

    move-object v9, v10

    goto :goto_e

    :cond_1a
    move-object/from16 v9, v18

    :goto_e
    invoke-virtual {v2, v0, v9}, Lorg/bouncycastle/asn1/ASN1Object;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error constructing MAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v2}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied for PKCS#12 KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDigest(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v1
.end method

.method private getUsedCertificateSet()Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private validateIterationCount(Ljava/math/BigInteger;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    const-string v0, "org.bouncycastle.pkcs12.max_it_count"

    .line 8
    .line 9
    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt v1, p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "iteration count "

    .line 25
    .line 26
    const-string v3, " greater than "

    .line 27
    .line 28
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_0
    return p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "negative iteration count found"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method


# virtual methods
.method public cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 4

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    const-string v2, "exception decrypting data - "

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p2

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {v1, v3, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p2, Lorg/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p3, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p4

    if-eqz p4, :cond_2

    :try_start_1
    invoke-direct {p0, p1, p3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p3}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown PBE algorithm: "

    .line 5
    invoke-static {p2, v0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/security/cert/Certificate;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-eqz p1, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v5, p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :catch_0
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p1, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v3, p1, :cond_4

    move-object p1, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v1, p1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    :goto_2
    if-eq v2, p1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificateChain."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null alias passed to getKey."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_37

    const/16 v2, 0x30

    if-ne v0, v2, :cond_36

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v10

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v15

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    array-length v0, v15

    iput v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    :try_start_1
    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v14

    invoke-static {v1, v14}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    array-length v1, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_2

    :try_start_2
    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v15, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    invoke-static {v0, v14}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v12

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v15, v7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error constructing MAC: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v2}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied when one expected"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v9, :cond_6

    array-length v0, v9

    if-eqz v0, :cond_6

    const-string v0, "org.bouncycastle.pkcs12.ignore_useless_passwd"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password supplied for keystore that does not require one"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    move v0, v13

    :goto_3
    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v1, v7}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v14, "unmarked"

    const-string v15, "attempt to add existing attribute with different value"

    if-eqz v1, :cond_27

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v10

    move v6, v13

    move/from16 v16, v6

    :goto_4
    array-length v1, v10

    if-eq v6, v1, :cond_28

    aget-object v1, v10, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-object v1, v10, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    move v2, v13

    :goto_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_13

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v4

    invoke-virtual {v8, v5, v4, v9, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    move-object v5, v7

    move-object/from16 v17, v5

    :goto_6
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v18

    if-lez v18, :cond_9

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v12, v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v12, :cond_a

    move-object v12, v4

    check-cast v12, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v12, v13}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-virtual {v12, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_7

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-interface {v12, v13, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_7
    sget-object v12, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v12

    if-eqz v12, :cond_b

    check-cast v7, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v5, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    sget-object v12, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v17, v7

    check-cast v17, Lorg/bouncycastle/asn1/ASN1OctetString;

    :cond_c
    :goto_8
    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    const/16 v17, 0x0

    :cond_e
    if-eqz v17, :cond_10

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    if-nez v5, :cond_f

    iget-object v5, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    iget-object v4, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v5, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    iget-object v3, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v14, v4}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    :cond_12
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "extra in data "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_13
    move/from16 v17, v0

    move v13, v6

    goto/16 :goto_11

    :cond_14
    aget-object v1, v10, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_26

    aget-object v1, v10, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move v5, v0

    move v13, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v12, v2, :cond_25

    invoke-virtual {v1, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->certBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v11, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 v17, v0

    move-object/from16 v21, v1

    goto/16 :goto_10

    :cond_15
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v3

    invoke-virtual {v8, v4, v3, v9, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v1

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-interface {v4, v0}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-interface {v4, v0, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_c

    :cond_18
    const/4 v7, 0x0

    :goto_c
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_19

    check-cast v7, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_19
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v5, v7

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    :cond_1a
    :goto_d
    move/from16 v0, v17

    move-object/from16 v1, v21

    goto :goto_b

    :cond_1b
    move/from16 v17, v0

    move-object/from16 v21, v1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    if-nez v6, :cond_1c

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1c
    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v6, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1d
    move/from16 v17, v0

    move-object/from16 v21, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->keyBag:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1e
    :goto_e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-lez v6, :cond_1e

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-interface {v1, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_f

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-interface {v1, v7, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_f
    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_21

    check-cast v5, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v5, v4, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_21
    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v3, v5

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_e

    :cond_22
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    if-nez v4, :cond_23

    iget-object v2, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_23
    iget-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "extra in encryptedData "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    goto/16 :goto_a

    :cond_25
    move/from16 v17, v0

    goto :goto_11

    :cond_26
    move/from16 v17, v0

    move v13, v6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extra "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v10, v13

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v10, v13

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v6, v13, 0x1

    move/from16 v0, v17

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_27
    const/16 v16, 0x0

    :cond_28
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    const/4 v12, 0x0

    :goto_12
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v12, v0, :cond_35

    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->x509Certificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_34

    :try_start_3
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    move-object v3, v1

    move-object v4, v3

    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v10

    if-lez v10, :cond_29

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Primitive;

    instance-of v10, v2, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v10, :cond_2d

    move-object v10, v2

    check-cast v10, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v10, v7}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    if-eqz v13, :cond_2c

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_2a

    move-object v10, v5

    check-cast v10, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->access$200(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->access$200(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    :cond_29
    :goto_14
    const/4 v1, 0x0

    goto :goto_13

    :cond_2a
    invoke-interface {v13}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_15

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-interface {v10, v7, v5}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2d
    :goto_15
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_2e

    check-cast v5, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_14

    :cond_2e
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_29

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object v4, v5

    goto :goto_14

    :cond_2f
    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_16

    :cond_30
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    iget-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v1, v8, v5}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_31

    iget-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v14}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_31
    if-eqz v4, :cond_32

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    if-eqz v3, :cond_33

    iget-object v0, v8, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    :goto_17
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto/16 :goto_12

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported certificate type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no data in keystore stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 2

    .line 6
    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/keystore/util/ParameterUtil;->extractPassword(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "no support for \'param\' of type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 15
    .line 16
    new-instance v0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p2, Ljava/security/KeyStoreException;

    .line 30
    .line 31
    const-string v0, "There is a key entry with the name "

    .line 32
    .line 33
    const-string v1, "."

    .line 34
    .line 35
    invoke-static {v0, p1, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1

    .line 1
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "no certificate chain for private key"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    array-length p1, p4

    if-eq p3, p1, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance p2, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSize()I
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4

    .line 2
    if-eqz p1, :cond_5

    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No support for \'param\' of type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    :goto_1
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "No support for protection parameter of type "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'param\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v2, 0x2

    .line 12
    const-string v3, ""

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {v1, v5, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lorg/bouncycastle/jcajce/PKCS12Key;

    .line 53
    .line 54
    invoke-direct {v0, p3, p4}, Lorg/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/security/PrivateKey;

    .line 65
    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget-object p4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    .line 71
    invoke-virtual {v0, p4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    if-eqz p4, :cond_1

    .line 76
    .line 77
    invoke-direct {p0, v4, p3, p1}, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 89
    .line 90
    const-string p2, "exception unwrapping private key - cannot recognise: "

    .line 91
    .line 92
    invoke-static {p2, v0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :goto_0
    new-instance p2, Ljava/io/IOException;

    .line 101
    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p4, "exception unwrapping private key - "

    .line 105
    .line 106
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p3}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p2
.end method

.method public wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 3

    .line 1
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 2
    .line 3
    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 7
    .line 8
    invoke-interface {p4, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    .line 13
    .line 14
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 27
    .line 28
    .line 29
    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 30
    .line 31
    invoke-interface {p3, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/4 p4, 0x3

    .line 40
    invoke-virtual {p1, p4, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Ljava/io/IOException;

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p4, "exception encrypting data - "

    .line 54
    .line 55
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p3}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2
.end method
