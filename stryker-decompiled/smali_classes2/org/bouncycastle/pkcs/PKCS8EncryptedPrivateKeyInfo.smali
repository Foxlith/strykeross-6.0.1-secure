.class public Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->parseBytes([B)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decryptPrivateKeyInfo(Lorg/bouncycastle/operator/InputDecryptorProvider;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputDecryptorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Lorg/bouncycastle/pkcs/PKCSException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "unable to read encrypted data: "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->encryptedPrivateKeyInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    return-object v0
.end method
