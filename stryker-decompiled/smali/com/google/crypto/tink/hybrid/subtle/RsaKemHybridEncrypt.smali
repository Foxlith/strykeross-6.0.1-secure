.class public final Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/HybridEncrypt;


# instance fields
.field private final aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;[BLcom/google/crypto/tink/aead/subtle/AeadFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->validateRsaModulus(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    return-void
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 5

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->generateSecret(Ljava/math/BigInteger;)[B

    move-result-object v0

    const-string v1, "RSA/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->recipientPublicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->hkdfSalt:[B

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    invoke-interface {v4}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->getKeySizeInBytes()I

    move-result v4

    invoke-static {v2, v0, v3, p2, v4}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p2

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/RsaKemHybridEncrypt;->aeadFactory:Lcom/google/crypto/tink/aead/subtle/AeadFactory;

    invoke-interface {v0, p2}, Lcom/google/crypto/tink/aead/subtle/AeadFactory;->createAead([B)Lcom/google/crypto/tink/Aead;

    move-result-object p2

    sget-object v0, Lcom/google/crypto/tink/hybrid/subtle/RsaKem;->EMPTY_AAD:[B

    invoke-interface {p2, p1, v0}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    array-length p2, v1

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
