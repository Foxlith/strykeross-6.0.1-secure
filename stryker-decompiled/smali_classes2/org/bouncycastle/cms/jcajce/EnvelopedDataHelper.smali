.class public Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;
    }
.end annotation


# static fields
.field protected static final BASE_CIPHER_NAMES:Ljava/util/Map;

.field protected static final CIPHER_ALG_NAMES:Ljava/util/Map;

.field protected static final KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field protected static final MAC_ALG_NAMES:Ljava/util/Map;

.field private static final PBKDF2_ALG_NAMES:Ljava/util/Map;

.field private static final authEnvelopedAlgorithms:Ljava/util/Set;

.field private static final rc2Ekb:[S

.field private static final rc2Table:[S


# instance fields
.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->authEnvelopedAlgorithms:Ljava/util/Set;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->PBKDF2_ALG_NAMES:Ljava/util/Map;

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "DES"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "DESEDE"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "AES"

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/bouncycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "RC2"

    invoke-interface {v1, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "CAST5"

    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "Camellia"

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lorg/bouncycastle/cms/CMSAlgorithm;->CAMELLIA256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lorg/bouncycastle/cms/CMSAlgorithm;->SEED_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v0

    const-string v0, "SEED"

    invoke-interface {v1, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v4

    const-string v4, "RC4"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v3

    sget-object v3, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR28147_gcfb:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v0

    const-string v0, "GOST28147"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DES/CBC/PKCS5Padding"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RC2/CBC/PKCS5Padding"

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DESEDE/CBC/PKCS5Padding"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CAST5/CBC/PKCS5Padding"

    invoke-interface {v2, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Camellia/CBC/PKCS5Padding"

    invoke-interface {v2, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SEED/CBC/PKCS5Padding"

    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DESEDEMac"

    move-object/from16 v1, v18

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AESMac"

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RC2Mac"

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA1:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const-string v1, "PBKDF2WITHHMACSHA1"

    move-object/from16 v2, v17

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA224:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const-string v1, "PBKDF2WITHHMACSHA224"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA256:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const-string v1, "PBKDF2WITHHMACSHA256"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA384:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const-string v1, "PBKDF2WITHHMACSHA384"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->HMacSHA512:Lorg/bouncycastle/cms/PasswordRecipient$PRF;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/PasswordRecipient$PRF;->getAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const-string v1, "PBKDF2WITHHMACSHA512"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x100

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Table:[S

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Ekb:[S

    return-void

    :array_0
    .array-data 2
        0xbds
        0x56s
        0xeas
        0xf2s
        0xa2s
        0xf1s
        0xacs
        0x2as
        0xb0s
        0x93s
        0xd1s
        0x9cs
        0x1bs
        0x33s
        0xfds
        0xd0s
        0x30s
        0x4s
        0xb6s
        0xdcs
        0x7ds
        0xdfs
        0x32s
        0x4bs
        0xf7s
        0xcbs
        0x45s
        0x9bs
        0x31s
        0xbbs
        0x21s
        0x5as
        0x41s
        0x9fs
        0xe1s
        0xd9s
        0x4as
        0x4ds
        0x9es
        0xdas
        0xa0s
        0x68s
        0x2cs
        0xc3s
        0x27s
        0x5fs
        0x80s
        0x36s
        0x3es
        0xees
        0xfbs
        0x95s
        0x1as
        0xfes
        0xces
        0xa8s
        0x34s
        0xa9s
        0x13s
        0xf0s
        0xa6s
        0x3fs
        0xd8s
        0xcs
        0x78s
        0x24s
        0xafs
        0x23s
        0x52s
        0xc1s
        0x67s
        0x17s
        0xf5s
        0x66s
        0x90s
        0xe7s
        0xe8s
        0x7s
        0xb8s
        0x60s
        0x48s
        0xe6s
        0x1es
        0x53s
        0xf3s
        0x92s
        0xa4s
        0x72s
        0x8cs
        0x8s
        0x15s
        0x6es
        0x86s
        0x0s
        0x84s
        0xfas
        0xf4s
        0x7fs
        0x8as
        0x42s
        0x19s
        0xf6s
        0xdbs
        0xcds
        0x14s
        0x8ds
        0x50s
        0x12s
        0xbas
        0x3cs
        0x6s
        0x4es
        0xecs
        0xb3s
        0x35s
        0x11s
        0xa1s
        0x88s
        0x8es
        0x2bs
        0x94s
        0x99s
        0xb7s
        0x71s
        0x74s
        0xd3s
        0xe4s
        0xbfs
        0x3as
        0xdes
        0x96s
        0xes
        0xbcs
        0xas
        0xeds
        0x77s
        0xfcs
        0x37s
        0x6bs
        0x3s
        0x79s
        0x89s
        0x62s
        0xc6s
        0xd7s
        0xc0s
        0xd2s
        0x7cs
        0x6as
        0x8bs
        0x22s
        0xa3s
        0x5bs
        0x5s
        0x5ds
        0x2s
        0x75s
        0xd5s
        0x61s
        0xe3s
        0x18s
        0x8fs
        0x55s
        0x51s
        0xads
        0x1fs
        0xbs
        0x5es
        0x85s
        0xe5s
        0xc2s
        0x57s
        0x63s
        0xcas
        0x3ds
        0x6cs
        0xb4s
        0xc5s
        0xccs
        0x70s
        0xb2s
        0x91s
        0x59s
        0xds
        0x47s
        0x20s
        0xc8s
        0x4fs
        0x58s
        0xe0s
        0x1s
        0xe2s
        0x16s
        0x38s
        0xc4s
        0x6fs
        0x3bs
        0xfs
        0x65s
        0x46s
        0xbes
        0x7es
        0x2ds
        0x7bs
        0x82s
        0xf9s
        0x40s
        0xb5s
        0x1ds
        0x73s
        0xf8s
        0xebs
        0x26s
        0xc7s
        0x87s
        0x97s
        0x25s
        0x54s
        0xb1s
        0x28s
        0xaas
        0x98s
        0x9ds
        0xa5s
        0x64s
        0x6ds
        0x7as
        0xd4s
        0x10s
        0x81s
        0x44s
        0xefs
        0x49s
        0xd6s
        0xaes
        0x2es
        0xdds
        0x76s
        0x5cs
        0x2fs
        0xa7s
        0x1cs
        0xc9s
        0x9s
        0x69s
        0x9as
        0x83s
        0xcfs
        0x29s
        0x39s
        0xb9s
        0xe9s
        0x4cs
        0xffs
        0x43s
        0xabs
    .end array-data

    :array_1
    .array-data 2
        0x5ds
        0xbes
        0x9bs
        0x8bs
        0x11s
        0x99s
        0x6es
        0x4ds
        0x59s
        0xf3s
        0x85s
        0xa6s
        0x3fs
        0xb7s
        0x83s
        0xc5s
        0xe4s
        0x73s
        0x6bs
        0x3as
        0x68s
        0x5as
        0xc0s
        0x47s
        0xa0s
        0x64s
        0x34s
        0xcs
        0xf1s
        0xd0s
        0x52s
        0xa5s
        0xb9s
        0x1es
        0x96s
        0x43s
        0x41s
        0xd8s
        0xd4s
        0x2cs
        0xdbs
        0xf8s
        0x7s
        0x77s
        0x2as
        0xcas
        0xebs
        0xefs
        0x10s
        0x1cs
        0x16s
        0xds
        0x38s
        0x72s
        0x2fs
        0x89s
        0xc1s
        0xf9s
        0x80s
        0xc4s
        0x6ds
        0xaes
        0x30s
        0x3ds
        0xces
        0x20s
        0x63s
        0xfes
        0xe6s
        0x1as
        0xc7s
        0xb8s
        0x50s
        0xe8s
        0x24s
        0x17s
        0xfcs
        0x25s
        0x6fs
        0xbbs
        0x6as
        0xa3s
        0x44s
        0x53s
        0xd9s
        0xa2s
        0x1s
        0xabs
        0xbcs
        0xb6s
        0x1fs
        0x98s
        0xees
        0x9as
        0xa7s
        0x2ds
        0x4fs
        0x9es
        0x8es
        0xacs
        0xe0s
        0xc6s
        0x49s
        0x46s
        0x29s
        0xf4s
        0x94s
        0x8as
        0xafs
        0xe1s
        0x5bs
        0xc3s
        0xb3s
        0x7bs
        0x57s
        0xd1s
        0x7cs
        0x9cs
        0xeds
        0x87s
        0x40s
        0x8cs
        0xe2s
        0xcbs
        0x93s
        0x14s
        0xc9s
        0x61s
        0x2es
        0xe5s
        0xccs
        0xf6s
        0x5es
        0xa8s
        0x5cs
        0xd6s
        0x75s
        0x8ds
        0x62s
        0x95s
        0x58s
        0x69s
        0x76s
        0xa1s
        0x4as
        0xb5s
        0x55s
        0x9s
        0x78s
        0x33s
        0x82s
        0xd7s
        0xdds
        0x79s
        0xf5s
        0x1bs
        0xbs
        0xdes
        0x26s
        0x21s
        0x28s
        0x74s
        0x4s
        0x97s
        0x56s
        0xdfs
        0x3cs
        0xf0s
        0x37s
        0x39s
        0xdcs
        0xffs
        0x6s
        0xa4s
        0xeas
        0x42s
        0x8s
        0xdas
        0xb4s
        0x71s
        0xb0s
        0xcfs
        0x12s
        0x7as
        0x4es
        0xfas
        0x6cs
        0x1ds
        0x84s
        0x0s
        0xc8s
        0x7fs
        0x91s
        0x45s
        0xaas
        0x2bs
        0xc2s
        0xb1s
        0x8fs
        0xd5s
        0xbas
        0xf2s
        0xads
        0x19s
        0xb2s
        0x67s
        0x36s
        0xf7s
        0xfs
        0xas
        0x92s
        0x7ds
        0xe3s
        0x9ds
        0xe9s
        0x90s
        0x3es
        0x23s
        0x27s
        0x66s
        0x13s
        0xecs
        0x81s
        0x15s
        0xbds
        0x22s
        0xbfs
        0x9fs
        0x7es
        0xa9s
        0x51s
        0x4bs
        0x4cs
        0xfbs
        0x2s
        0xd3s
        0x70s
        0x86s
        0x31s
        0xe7s
        0x3bs
        0x5s
        0x3s
        0x54s
        0x60s
        0x48s
        0x65s
        0x18s
        0xd2s
        0xcds
        0x5fs
        0x32s
        0x88s
        0xes
        0x35s
        0xfds
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-void
.end method

.method public static execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;->doInJCE()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "MAC algorithm parameter spec invalid."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "algorithm parameters invalid."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "required padding not supported."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "can\'t find provider."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "key invalid in message."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_5
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "can\'t find algorithm."

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public calculateDerivedKey(I[CLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .locals 2

    .line 1
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    const-string v0, "PBKDF2with8BIT"

    .line 14
    .line 15
    :goto_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 23
    .line 24
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->PBKDF2_ALG_NAMES:Ljava/util/Map;

    .line 25
    .line 26
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 38
    .line 39
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-direct {v0, p2, v1, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p4, "Unable to calculate derived key from password: "

    .line 68
    .line 69
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method

.method public createAlgorithmParameterGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameterGenerator;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameterGenerator(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameterGenerator(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p1

    return-object p1
.end method

.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

.method public createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

.method public createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->CIPHER_ALG_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create cipher: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$1;-><init>(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    return-object p1
.end method

.method public createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;-><init>(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->execute(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    return-object p1
.end method

.method public createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create key agreement: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createKeyFactory(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyFactory;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create key factory: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create key generator: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create key pair generator: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Mac;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->MAC_ALG_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    return-object p1

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create mac: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "RFC3211Wrap"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "cannot create cipher: "

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 43
    .line 44
    const-string v1, "no name for "

    .line 45
    .line 46
    invoke-static {v1, p1}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    return-object p1
.end method

.method public createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;->createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;

    move-result-object p1

    return-object p1
.end method

.method public generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;
    .locals 4

    const-string v0, "parameters generation error: "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameterGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    new-array v2, p1, [B

    invoke-virtual {p3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    mul-int/2addr p2, p1

    invoke-direct {v3, p2, v2}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v3, p3}, Ljava/security/AlgorithmParameterGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "exception creating algorithm parameter generator: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->extractParameters(Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    .line 2
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_3

    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->rc2Table:[S

    aget-short v0, v1, v0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(I[B)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown parameter spec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->BASE_CIPHER_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getJceKey(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/Key;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getBaseCipherName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown generic key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/Key;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/operator/GenericKey;->getRepresentation()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v1, "ENC"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown generic key type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAuthEnveloped(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->authEnvelopedAlgorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public keySizeCheck(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result p1

    if-lez p1, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "Expected key size for algorithm OID not found in recipient."

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
