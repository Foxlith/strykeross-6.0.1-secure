.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$Ed25519;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$Ed448;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$EdDSA;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X25519;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X448;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$XDH;
    }
.end annotation


# static fields
.field static final Ed25519Prefix:[B

.field private static final Ed25519_type:B = 0x70t

.field static final Ed448Prefix:[B

.field private static final Ed448_type:B = 0x71t

.field static final x25519Prefix:[B

.field private static final x25519_type:B = 0x6et

.field static final x448Prefix:[B

.field private static final x448_type:B = 0x6ft


# instance fields
.field algorithm:Ljava/lang/String;

.field private final isXdh:Z

.field private final specificBase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "3042300506032b656f033900"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    const-string v0, "302a300506032b656e032100"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    const-string v0, "3043300506032b6571033a00"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed448Prefix:[B

    const-string v0, "302a300506032b6570032100"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->parsePrivateKeyBlob([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    check-cast p1, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "openssh private key not Ed25519 private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    aget-byte v3, v0, v2

    .line 19
    .line 20
    if-ne v1, v3, :cond_5

    .line 21
    .line 22
    :cond_0
    const/16 v1, 0x9

    .line 23
    .line 24
    aget-byte v1, v0, v1

    .line 25
    .line 26
    const/4 v3, 0x5

    .line 27
    if-ne v1, v3, :cond_1

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    aget-byte v1, v0, v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 40
    .line 41
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 63
    .line 64
    .line 65
    :try_start_0
    const-string v0, "DER"

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "attempt to reconstruct key failed: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_1
    :goto_0
    aget-byte v1, v0, v2

    .line 91
    .line 92
    packed-switch v1, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_0
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 101
    .line 102
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed448Prefix:[B

    .line 103
    .line 104
    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_1
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 109
    .line 110
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    .line 111
    .line 112
    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :pswitch_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 117
    .line 118
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    .line 119
    .line 120
    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>([B[B)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :pswitch_3
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 125
    .line 126
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    .line 127
    .line 128
    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>([B[B)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    check-cast p1, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 143
    .line 144
    packed-switch v0, :pswitch_data_1

    .line 145
    .line 146
    .line 147
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 148
    .line 149
    const-string v0, "factory not a specific type, cannot recognise raw encoding"

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1

    .line 155
    :pswitch_4
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 156
    .line 157
    new-instance v1, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    .line 158
    .line 159
    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;-><init>([B)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 163
    .line 164
    .line 165
    return-object v0

    .line 166
    :pswitch_5
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 167
    .line 168
    new-instance v1, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 169
    .line 170
    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>([B)V

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 174
    .line 175
    .line 176
    return-object v0

    .line 177
    :pswitch_6
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 178
    .line 179
    new-instance v1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    .line 180
    .line 181
    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([B)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 185
    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_7
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 189
    .line 190
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 191
    .line 192
    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 196
    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 200
    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    check-cast p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->parsePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 214
    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    new-array v1, v1, [B

    .line 221
    .line 222
    check-cast p1, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    .line 223
    .line 224
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->getEncoded()[B

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    .line 229
    .line 230
    .line 231
    return-object v0

    .line 232
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 233
    .line 234
    const-string v0, "openssh public key not Ed25519 public key"

    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_5
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    return-object p1

    .line 245
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7

    const-class v0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    new-instance v0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/OpenSSHPrivateKeyUtil;->encodePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    sget-object p2, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    const/4 v2, 0x0

    array-length v3, p2

    const/4 v5, 0x0

    array-length v0, p1

    add-int/lit8 v6, v0, -0x20

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>([BI)V

    new-instance p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->encodePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;-><init>([B)V

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Invalid Ed25519 public key encoding"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const-class v0, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;

    if-eqz v0, :cond_3

    new-instance p2, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    check-cast p1, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/XDHPublicKey;->getUEncoding()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/jcajce/interfaces/EdDSAPublicKey;

    if-eqz v0, :cond_4

    new-instance p2, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;

    check-cast p1, Lorg/bouncycastle/jcajce/interfaces/EdDSAPublicKey;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/EdDSAPublicKey;->getPointEncoding()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/spec/RawEncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_4
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x6f

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x6e

    .line 40
    .line 41
    if-ne v1, v2, :cond_8

    .line 42
    .line 43
    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_8

    .line 72
    .line 73
    :cond_4
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    const/16 v3, 0x71

    .line 78
    .line 79
    if-ne v2, v3, :cond_6

    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    .line 88
    .line 89
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_6
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    const/16 v2, 0x70

    .line 98
    .line 99
    if-ne v1, v2, :cond_8

    .line 100
    .line 101
    :cond_7
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 116
    .line 117
    const-string v1, "algorithm identifier "

    .line 118
    .line 119
    const-string v2, " in key not recognized"

    .line 120
    .line 121
    invoke-static {v1, v0, v2}, Ll1/e;->j(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x6f

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x6e

    .line 40
    .line 41
    if-ne v1, v2, :cond_8

    .line 42
    .line 43
    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_8

    .line 50
    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    sget-object v2, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_8

    .line 72
    .line 73
    :cond_4
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    const/16 v3, 0x71

    .line 78
    .line 79
    if-ne v2, v3, :cond_6

    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 88
    .line 89
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_6
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    const/16 v2, 0x70

    .line 98
    .line 99
    if-ne v1, v2, :cond_8

    .line 100
    .line 101
    :cond_7
    sget-object v1, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 116
    .line 117
    const-string v1, "algorithm identifier "

    .line 118
    .line 119
    const-string v2, " in key not recognized"

    .line 120
    .line 121
    invoke-static {v1, v0, v2}, Ll1/e;->j(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method
