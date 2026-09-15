.class public Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
.super Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->secretKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->getKeyAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, p2, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    const-string v0, "can\'t find algorithm."

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    const-string v0, "key invalid in message."

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceSymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
