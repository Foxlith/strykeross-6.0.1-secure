.class public abstract Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method public abstract createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
.end method

.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyUnwrapper;->privateKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_0
    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to recover secret key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
