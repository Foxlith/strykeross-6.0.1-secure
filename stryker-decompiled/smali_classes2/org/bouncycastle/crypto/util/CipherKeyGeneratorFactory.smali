.class public Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-object v0
.end method

.method public static createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;
    .locals 4

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v2, 0xc0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v3, 0x100

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_3
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_5
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_6
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_7
    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    .line 113
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_8
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    new-instance p0, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;

    .line 133
    .line 134
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    .line 138
    .line 139
    invoke-direct {v0, p1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_9
    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 147
    .line 148
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :cond_a
    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    invoke-static {p1, v2}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_b
    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_c

    .line 179
    .line 180
    invoke-static {p1, v3}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_c
    sget-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 186
    .line 187
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_d

    .line 192
    .line 193
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_d
    sget-object v0, Lorg/bouncycastle/crypto/util/AlgorithmIdentifierFactory;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_e

    .line 205
    .line 206
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_e
    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 212
    .line 213
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_f

    .line 218
    .line 219
    new-instance p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;

    .line 220
    .line 221
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    .line 225
    .line 226
    const/16 v1, 0x40

    .line 227
    .line 228
    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 232
    .line 233
    .line 234
    return-object p0

    .line 235
    :cond_f
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    .line 237
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_10

    .line 242
    .line 243
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :cond_10
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 249
    .line 250
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_11

    .line 255
    .line 256
    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/util/CipherKeyGeneratorFactory;->createCipherKeyGenerator(Ljava/security/SecureRandom;I)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 262
    .line 263
    const-string v0, "cannot recognise cipher: "

    .line 264
    .line 265
    invoke-static {v0, p0}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1
.end method
