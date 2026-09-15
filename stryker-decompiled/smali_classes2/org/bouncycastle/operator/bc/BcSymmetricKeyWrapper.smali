.class public Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/SymmetricKeyWrapper;
.source "SourceFile"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private wrapper:Lorg/bouncycastle/crypto/Wrapper;

.field private wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/Wrapper;Lorg/bouncycastle/crypto/params/KeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/SymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    iput-object p3, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    return-void
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 5

    invoke-static {p1}, Lorg/bouncycastle/operator/bc/OperatorUtils;->getKeyBytes(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    iget-object v2, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v4, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
