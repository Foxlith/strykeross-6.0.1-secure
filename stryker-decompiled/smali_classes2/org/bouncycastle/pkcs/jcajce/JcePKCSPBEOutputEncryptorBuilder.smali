.class public Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private algorithmNameFinder:Lorg/bouncycastle/operator/AlgorithmNameFinder;

.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iterationCount:I

.field private keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private final pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

.field private pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithmNameFinder:Lorg/bouncycastle/operator/AlgorithmNameFinder;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/util/PBKDFConfig;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithmNameFinder:Lorg/bouncycastle/operator/AlgorithmNameFinder;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    iput-object p2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private static PKCS12PasswordToBytes([C)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method private static PKCS5PasswordToBytes([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v2, v1, [B

    :goto_0
    if-eq v0, v1, :cond_0

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-array p0, v0, [B

    return-object p0
.end method

.method public static synthetic access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100([C)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200([C)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method private isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private simplifyPbeKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithmNameFinder:Lorg/bouncycastle/operator/AlgorithmNameFinder;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/AlgorithmNameFinder;->hasAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithmNameFinder:Lorg/bouncycastle/operator/AlgorithmNameFinder;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/AlgorithmNameFinder;->getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x14

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 31
    .line 32
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    .line 43
    .line 44
    iget v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    .line 45
    .line 46
    invoke-direct {v3, p1, v0, v4}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;-><init>([C[BI)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    .line 54
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    .line 56
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 57
    .line 58
    iget v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    .line 59
    .line 60
    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 82
    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_2
    sget-object v2, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDFConfig;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    check-cast v0, Lorg/bouncycastle/crypto/util/ScryptConfig;

    .line 104
    .line 105
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getSaltLength()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    new-array v6, v3, [B

    .line 110
    .line 111
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 112
    .line 113
    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Lorg/bouncycastle/asn1/misc/ScryptParams;

    .line 117
    .line 118
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getCostParameter()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getBlockSize()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getParallelizationParameter()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-direct {v3, v6, v4, v5, v7}, Lorg/bouncycastle/asn1/misc/ScryptParams;-><init>([BIII)V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 134
    .line 135
    const-string v5, "SCRYPT"

    .line 136
    .line 137
    invoke-interface {v4, v5}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    new-instance v12, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;

    .line 142
    .line 143
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getCostParameter()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getBlockSize()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/ScryptConfig;->getParallelizationParameter()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 156
    .line 157
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 158
    .line 159
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 160
    .line 161
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v4}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    move-object v4, v12

    .line 169
    move-object v5, p1

    .line 170
    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;-><init>([C[BIIII)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v12}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 178
    .line 179
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    .line 181
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-interface {v4, v5}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->simplifyPbeKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 194
    .line 195
    invoke-virtual {v4, v1, v0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 205
    .line 206
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 207
    .line 208
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 212
    .line 213
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-direct {v2, v3, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 235
    .line 236
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 237
    .line 238
    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 242
    .line 243
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 244
    .line 245
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    .line 249
    .line 250
    .line 251
    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 252
    .line 253
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 254
    .line 255
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    move-object v2, v4

    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :cond_4
    check-cast v0, Lorg/bouncycastle/crypto/util/PBKDF2Config;

    .line 262
    .line 263
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getSaltLength()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    new-array v2, v2, [B

    .line 268
    .line 269
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 270
    .line 271
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 275
    .line 276
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getPRF()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v4}, Lorg/bouncycastle/pkcs/jcajce/JceUtils;->getAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-interface {v3, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    .line 293
    .line 294
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getIterationCount()I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    iget-object v6, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 299
    .line 300
    new-instance v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 301
    .line 302
    iget-object v8, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 303
    .line 304
    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v6, v7}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    invoke-direct {v4, p1, v2, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 319
    .line 320
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 321
    .line 322
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-interface {v4, v5}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-direct {p0, v3}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->simplifyPbeKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iget-object v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    .line 335
    .line 336
    invoke-virtual {v4, v1, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    if-eqz v1, :cond_5

    .line 344
    .line 345
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 346
    .line 347
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 348
    .line 349
    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 350
    .line 351
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 352
    .line 353
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getIterationCount()I

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getPRF()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-direct {v6, v2, v7, v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 365
    .line 366
    .line 367
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 368
    .line 369
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 370
    .line 371
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-direct {v0, v2, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 384
    .line 385
    .line 386
    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    .line 387
    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    .line 391
    .line 392
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 393
    .line 394
    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 395
    .line 396
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 397
    .line 398
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getIterationCount()I

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config;->getPRF()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-direct {v6, v2, v7, v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 407
    .line 408
    .line 409
    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 410
    .line 411
    .line 412
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 413
    .line 414
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 415
    .line 416
    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 417
    .line 418
    .line 419
    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    .line 420
    .line 421
    .line 422
    :goto_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 423
    .line 424
    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 425
    .line 426
    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 427
    .line 428
    .line 429
    move-object v1, v0

    .line 430
    goto/16 :goto_1

    .line 431
    .line 432
    :goto_3
    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;

    .line 433
    .line 434
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;[C)V

    .line 435
    .line 436
    .line 437
    return-object v0

    .line 438
    :cond_6
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 439
    .line 440
    const-string v0, "unrecognised algorithm"

    .line 441
    .line 442
    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_4
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 447
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const-string v2, "unable to create OutputEncryptor: "

    .line 451
    .line 452
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    throw v0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    if-nez v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "set iteration count using PBKDFDef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeySizeProvider(Lorg/bouncycastle/operator/SecretKeySizeProvider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-object p0
.end method

.method public setPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdf:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->pbkdfBuilder:Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "set PRF count using PBKDFDef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
