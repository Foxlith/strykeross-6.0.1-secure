.class Lorg/bouncycastle/openssl/bc/PEMUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEYSIZES:Ljava/util/Map;

.field private static final PKCS5_SCHEME_1:Ljava/util/Set;

.field private static final PKCS5_SCHEME_2:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x100

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v4}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crypt(Z[B[CLjava/lang/String;[B)[B
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    const-string v6, "-CFB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "CFB"

    const/4 v8, 0x0

    const-string v9, "CBC"

    if-eqz v6, :cond_0

    move-object v6, v7

    move-object v5, v8

    goto :goto_0

    :cond_0
    move-object v6, v9

    :goto_0
    const-string v10, "-ECB"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "DES-EDE3"

    const-string v12, "DES-EDE"

    if-nez v10, :cond_2

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v4

    goto :goto_2

    :cond_2
    :goto_1
    const-string v6, "ECB"

    move-object v10, v8

    :goto_2
    const-string v13, "-OFB"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "OFB"

    if-eqz v13, :cond_3

    move-object v6, v14

    goto :goto_3

    :cond_3
    move-object v8, v5

    :goto_3
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-eqz v5, :cond_4

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const/16 v5, 0x18

    invoke-static {v2, v5, v4, v3}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    goto/16 :goto_6

    :cond_4
    const-string v5, "DES-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v2, v13, v4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/engines/DESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    goto/16 :goto_6

    :cond_5
    const-string v5, "BF-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v3, 0x10

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/engines/BlowfishEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/BlowfishEngine;-><init>()V

    goto/16 :goto_6

    :cond_6
    const-string v5, "RC2-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v11, 0x80

    if-eqz v5, :cond_9

    const-string v5, "RC2-40-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v11, 0x28

    goto :goto_4

    :cond_7
    const-string v5, "RC2-64-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v11, 0x40

    :cond_8
    :goto_4
    new-instance v3, Lorg/bouncycastle/crypto/params/RC2Parameters;

    div-int/lit8 v5, v11, 0x8

    invoke-static {v2, v5, v4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-direct {v3, v2, v11}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    new-instance v2, Lorg/bouncycastle/crypto/engines/RC2Engine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/RC2Engine;-><init>()V

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_6

    :cond_9
    const-string v5, "AES-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    array-length v5, v4

    if-le v5, v13, :cond_a

    new-array v5, v13, [B

    invoke-static {v4, v12, v5, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    :cond_a
    const-string v5, "AES-128-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const-string v5, "AES-192-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v11, 0xc0

    goto :goto_5

    :cond_c
    const-string v5, "AES-256-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/16 v11, 0x100

    :goto_5
    div-int/2addr v11, v13

    invoke-static {v2, v11, v4}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    :goto_6
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_7
    move-object v3, v4

    goto :goto_8

    :cond_d
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/2addr v5, v13

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    goto :goto_7

    :cond_e
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/2addr v5, v13

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    goto :goto_7

    :cond_f
    :goto_8
    if-nez v8, :cond_10

    :try_start_0
    new-instance v4, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    :goto_9
    move-object v6, v4

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_10
    new-instance v4, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v4, v3, v8}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    goto :goto_9

    :goto_a
    if-nez v10, :cond_11

    invoke-virtual {v6, v0, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_b

    :cond_11
    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v2, v10}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v6, v0, v3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_b
    array-length v0, v1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v7

    new-array v8, v7, [B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    if-ne v0, v7, :cond_12

    return-object v8

    :cond_12
    new-array v1, v0, [B

    invoke-static {v8, v12, v1, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_c
    new-instance v1, Lorg/bouncycastle/openssl/EncryptionException;

    const-string v2, "exception using cipher - please check password and data."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    const-string v1, "unknown AES encryption with private key: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lorg/bouncycastle/openssl/EncryptionException;

    const-string v1, "unknown encryption with private key: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-static {p0}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/params/KeyParameter;

    return-object p0
.end method

.method private static getKey([CI[B)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/openssl/bc/PEMUtilities;->getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object p0

    return-object p0
.end method

.method private static getKey([CI[BZ)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    const/16 p0, 0x8

    mul-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x18

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x10

    invoke-static {p1, p2, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getKeySize(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "no key size for algorithm: "

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public static isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPKCS5Scheme1(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPKCS5Scheme2(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/openssl/bc/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
