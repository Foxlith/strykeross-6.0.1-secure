.class public Lorg/bouncycastle/cert/crmf/EncryptedValueParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

.field private value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    return-void
.end method

.method private decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getValueHint()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getKeyAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getSymmAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncSymmKey()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;->getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 38
    .line 39
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncValue()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;->getUnpaddedData([B)[B

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-object p1

    .line 70
    :goto_0
    new-instance v0, Lorg/bouncycastle/cert/crmf/CRMFException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Cannot parse decrypted data: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1
.end method


# virtual methods
.method public getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public readCertificateHolder(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method public readPassphrase(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[C
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method

.method public readPrivateKeyInfo(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    return-object p1
.end method
