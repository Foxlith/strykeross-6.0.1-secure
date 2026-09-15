.class public final Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# instance fields
.field private final privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toRsaSsaPkcs1Algo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    sget-object p2, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v0, "RSA"

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/KeyFactory;

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 3

    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->SIGNATURE:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->signatureAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Security bug: RSA signature computation error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
