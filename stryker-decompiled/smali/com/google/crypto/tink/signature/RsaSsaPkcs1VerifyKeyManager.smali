.class Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;
.super Lcom/google/crypto/tink/KeyTypeManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager<",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;

    new-instance v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager$1;

    const-class v2, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    invoke-direct {p0, v1, v0}, Lcom/google/crypto/tink/KeyTypeManager;-><init>(Ljava/lang/Class;[Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;)V

    return-void
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;->getParams()Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/signature/SigUtil;->validateRsaSsaPkcs1Params(Lcom/google/crypto/tink/proto/RsaSsaPkcs1Params;)V

    return-void
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;->validateKey(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)V

    return-void
.end method
