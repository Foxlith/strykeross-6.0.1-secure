.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDH;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDSA;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECGOST3410;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECGOST3410_2012;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;

.field configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 24
    .line 25
    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    .line 26
    .line 27
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 28
    .line 29
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/sec/ECPrivateKey;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 52
    .line 53
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    .line 55
    sget-object v4, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/sec/ECPrivateKey;->getParametersObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "bad encoding: "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_2
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 9

    .line 1
    :try_start_0
    instance-of v0, p1, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/jce/spec/ECPublicKeySpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 26
    .line 27
    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 30
    .line 31
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    check-cast p1, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->parsePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 61
    .line 62
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v8, Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    move-object v2, v8

    .line 91
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, p1, v8}, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v0, "openssh key is not ec public key"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_3
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :goto_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "invalid KeySpec: "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9

    .line 1
    const-class v0, Ljava/security/spec/KeySpec;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-class v1, Ljava/security/spec/ECPublicKeySpec;

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :cond_1
    sget-object p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 44
    .line 45
    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    :cond_3
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    new-instance p2, Ljava/security/spec/ECPrivateKeySpec;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 112
    .line 113
    .line 114
    return-object p2

    .line 115
    :cond_4
    sget-object p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 116
    .line 117
    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_5
    const-class v0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_6

    .line 166
    .line 167
    new-instance p2, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 190
    .line 191
    .line 192
    return-object p2

    .line 193
    :cond_6
    sget-object p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 194
    .line 195
    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    new-instance v0, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 214
    .line 215
    .line 216
    return-object v0

    .line 217
    :cond_7
    const-class v0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 218
    .line 219
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 226
    .line 227
    if-eqz v0, :cond_9

    .line 228
    .line 229
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 230
    .line 231
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    if-eqz p2, :cond_8

    .line 236
    .line 237
    new-instance p2, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 252
    .line 253
    .line 254
    return-object p2

    .line 255
    :cond_8
    sget-object p2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 256
    .line 257
    invoke-interface {p2}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    new-instance v0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .line 262
    .line 263
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 268
    .line 269
    .line 270
    return-object v0

    .line 271
    :cond_9
    const-class v0, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 272
    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    const-string v1, "invalid key type: "

    .line 278
    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    .line 282
    .line 283
    if-eqz v0, :cond_b

    .line 284
    .line 285
    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 286
    .line 287
    if-eqz p2, :cond_a

    .line 288
    .line 289
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 290
    .line 291
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getParameters()Lorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;

    .line 296
    .line 297
    new-instance v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 298
    .line 299
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    new-instance v8, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 304
    .line 305
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual {p2}, Lorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    move-object v2, v8

    .line 326
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 327
    .line 328
    .line 329
    invoke-direct {v1, p1, v8}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v1}, Lorg/bouncycastle/crypto/util/OpenSSHPublicKeyUtil;->encodePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .line 338
    .line 339
    return-object v0

    .line 340
    :catch_0
    move-exception p1

    .line 341
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 342
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v1, "unable to produce encoding: "

    .line 346
    .line 347
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw p2

    .line 358
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p2

    .line 376
    :cond_b
    const-class v0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    .line 377
    .line 378
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_d

    .line 383
    .line 384
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    .line 385
    .line 386
    if-eqz v0, :cond_d

    .line 387
    .line 388
    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 389
    .line 390
    if-eqz p2, :cond_c

    .line 391
    .line 392
    :try_start_1
    new-instance p2, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;

    .line 393
    .line 394
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    .line 416
    .line 417
    return-object p2

    .line 418
    :catch_1
    move-exception p1

    .line 419
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 420
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v1, "cannot encoded key: "

    .line 424
    .line 425
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw p2

    .line 436
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 437
    .line 438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw p2

    .line 454
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 3

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
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    const-string v1, "algorithm identifier "

    .line 30
    .line 31
    const-string v2, " in key not recognised"

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Ll1/e;->j(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 3

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
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    const-string v1, "algorithm identifier "

    .line 30
    .line 31
    const-string v2, " in key not recognised"

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Ll1/e;->j(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
