.class Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;


# instance fields
.field private aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

.field private aesCtrKeySize:I

.field private aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

.field private final demKeyTypeUrl:Ljava/lang/String;

.field private final symmetricKeySize:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_TYPE_URL:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesGcmKeyFormat;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/crypto/tink/Registry;->newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmKey;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesGcmKeyFormat;->getKeySize()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    .line 49
    .line 50
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_0
    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    :try_start_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p1}, Lcom/google/crypto/tink/Registry;->newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getAesCtrKeyFormat()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getKeySize()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getHmacKeyFormat()Lcom/google/crypto/tink/proto/HmacKeyFormat;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->getKeySize()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iget v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    .line 101
    .line 102
    add-int/2addr v0, p1

    .line 103
    iput v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :catch_1
    move-exception p1

    .line 107
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 108
    .line 109
    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    .line 110
    .line 111
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 116
    .line 117
    const-string v1, "unsupported AEAD DEM key type: "

    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method


# virtual methods
.method public getAead([B)Lcom/google/crypto/tink/Aead;
    .locals 4

    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->getSymmetricKeySizeInBytes()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lcom/google/crypto/tink/Aead;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKey;->newBuilder()Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesGcmKey:Lcom/google/crypto/tink/proto/AesGcmKey;

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    iget v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    invoke-static {p1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([BII)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesGcmKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesGcmKey$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesGcmKey;

    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/Registry;->getPrimitive(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Aead;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->demKeyTypeUrl:Ljava/lang/String;

    sget-object v3, Lcom/google/crypto/tink/aead/AeadConfig;->AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v2, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrKeySize:I

    iget v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getAesCtrKey()Lcom/google/crypto/tink/proto/AesCtrKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey;

    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKey;->newBuilder()Lcom/google/crypto/tink/proto/HmacKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getHmacKey()Lcom/google/crypto/tink/proto/HmacKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/HmacKey$Builder;

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/proto/HmacKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HmacKey$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/HmacKey;

    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->aesCtrHmacAeadKey:Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSymmetricKeySizeInBytes()I
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/hybrid/RegistryEciesAeadHkdfDemHelper;->symmetricKeySize:I

    return v0
.end method
