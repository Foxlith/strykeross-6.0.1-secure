.class public abstract Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field protected engineParams:Ljava/security/AlgorithmParameters;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iv:[B

.field private ivSize:I

.field protected wrapEngine:Lorg/bouncycastle/crypto/Wrapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->availableSpecs:[Ljava/lang/Class;

    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    return-void
.end method


# virtual methods
.method public final createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 2
    .line 3
    const-string v1, "can\'t support mode "

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    .line 2
    .line 3
    const-string v1, "Padding "

    .line 4
    .line 5
    const-string v2, " unknown."

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 5

    .line 1
    const-string v0, "Unknown key type "

    .line 2
    .line 3
    const-string v1, "algorithm "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    array-length v2, p1

    .line 11
    invoke-virtual {p0, p1, v3, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :catch_1
    move-exception p1

    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :catch_2
    move-exception p1

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    array-length v4, p1

    .line 26
    invoke-interface {v2, p1, v3, v4}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    const/4 v2, 0x3

    .line 31
    if-ne p3, v2, :cond_1

    .line 32
    .line 33
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p3

    .line 39
    :cond_1
    const-string v2, ""

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-ne p3, v3, :cond_3

    .line 49
    .line 50
    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_2
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " not supported"

    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    :catch_3
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 93
    .line 94
    const-string p2, "Invalid key encoding."

    .line 95
    .line 96
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 101
    .line 102
    invoke-interface {v1, p2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/4 v1, 0x1

    .line 107
    if-ne p3, v1, :cond_4

    .line 108
    .line 109
    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    .line 110
    .line 111
    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :catch_4
    move-exception p1

    .line 120
    goto :goto_1

    .line 121
    :catch_5
    move-exception p1

    .line 122
    goto :goto_2

    .line 123
    :catch_6
    move-exception p1

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    if-ne p3, v3, :cond_5

    .line 126
    .line 127
    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 128
    .line 129
    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 133
    .line 134
    .line 135
    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4

    .line 136
    return-object p1

    .line 137
    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 138
    .line 139
    invoke-static {v0, p3}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :goto_1
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 148
    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p2

    .line 169
    :goto_2
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 170
    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p2

    .line 191
    :goto_3
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 192
    .line 193
    new-instance p3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p2

    .line 213
    :goto_4
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p2

    .line 223
    :goto_5
    new-instance p2, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;

    .line 224
    .line 225
    const-string p3, "unable to unwrap"

    .line 226
    .line 227
    invoke-direct {p2, p0, p3, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;Ljava/lang/String;Ljavax/crypto/BadPaddingException;)V

    .line 228
    .line 229
    .line 230
    throw p2

    .line 231
    :goto_6
    new-instance p2, Ljava/security/InvalidKeyException;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p2
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 3

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;->wrapEngine:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Cannot wrap key, null encoding."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
