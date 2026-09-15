.class public abstract Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/KeyTransRecipient;


# instance fields
.field protected contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field protected extraMappings:Ljava/util/Map;

.field protected helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private recipientKey:Ljava/security/PrivateKey;

.field protected unwrappedKeyMustBeEncodable:Z

.field protected validateKeySize:Z


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "exception unwrapping key: "

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getTransportParameters()Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getEphemeralPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v3, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    .line 59
    .line 60
    new-instance v4, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-direct {v4, v5}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-virtual {p1, v2, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 74
    .line 75
    .line 76
    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    .line 78
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p1, v3}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getEncryptionParamSet()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cryptopro/GostR3410TransportParameters;->getUkm()[B

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    invoke-virtual {v2, v0, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/cryptopro/GostR3410KeyTransport;->getSessionEncryptedKey()Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getEncryptedKey()[B

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getMacKey()[B

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p3, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 126
    .line 127
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p3, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    const/4 p3, 0x3

    .line 136
    invoke-virtual {v2, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-object p1

    .line 141
    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 143
    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {p1, p3}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    throw p2

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 158
    .line 159
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->recipientKey:Ljava/security/PrivateKey;

    .line 160
    .line 161
    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-boolean v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->unwrappedKeyMustBeEncodable:Z

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setMustProduceEncodableUnwrappedKey(Z)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_1

    .line 178
    .line 179
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    .line 201
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    .line 202
    .line 203
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 214
    .line 215
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-boolean p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    .line 228
    .line 229
    if-eqz p3, :cond_2

    .line 230
    .line 231
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 232
    .line 233
    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->keySizeCheck(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catch_1
    move-exception p1

    .line 238
    goto :goto_2

    .line 239
    :cond_2
    :goto_1
    return-object p1

    .line 240
    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 241
    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 259
    .line 260
    .line 261
    throw p2
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createContentHelper(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setKeySizeValidation(Z)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->validateKeySize:Z

    return-object p0
.end method

.method public setMustProduceEncodableUnwrappedKey(Z)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->unwrappedKeyMustBeEncodable:Z

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method
