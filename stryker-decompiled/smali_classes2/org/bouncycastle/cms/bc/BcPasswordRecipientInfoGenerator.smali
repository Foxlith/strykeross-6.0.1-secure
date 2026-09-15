.class public Lorg/bouncycastle/cms/bc/BcPasswordRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[C)V

    return-void
.end method


# virtual methods
.method public calculateDerivedKey(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)[B
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->password:[C

    .line 12
    .line 13
    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/PasswordRecipientInfoGenerator;->password:[C

    .line 19
    .line 20
    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->getPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 65
    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "exception creating derived key: "

    .line 69
    .line 70
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p3}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 78
    .line 79
    .line 80
    throw p2
.end method

.method public generateEncryptedBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/operator/GenericKey;)[B
    .locals 3

    invoke-static {p3}, Lorg/bouncycastle/cms/bc/CMSUtils;->getBcKey(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createRFC3211Wrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p1, p3

    const/4 p2, 0x0

    invoke-interface {v0, p3, p2, p1}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p1

    return-object p1
.end method
