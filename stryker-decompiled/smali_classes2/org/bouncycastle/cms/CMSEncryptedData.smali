.class public Lorg/bouncycastle/cms/CMSEncryptedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private encryptedData:Lorg/bouncycastle/asn1/cms/EncryptedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEncryptedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EncryptedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEncryptedData;->encryptedData:Lorg/bouncycastle/asn1/cms/EncryptedData;

    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/operator/InputDecryptorProvider;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/CMSEncryptedData;->getContentStream(Lorg/bouncycastle/operator/InputDecryptorProvider;)Lorg/bouncycastle/cms/CMSTypedStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "unable to parse internal stream: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public getContentStream(Lorg/bouncycastle/operator/InputDecryptorProvider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEncryptedData;->encryptedData:Lorg/bouncycastle/asn1/cms/EncryptedData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedData;->getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/InputDecryptorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputDecryptor;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lorg/bouncycastle/cms/CMSTypedStream;

    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v2, v0, p1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "unable to create stream: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEncryptedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
