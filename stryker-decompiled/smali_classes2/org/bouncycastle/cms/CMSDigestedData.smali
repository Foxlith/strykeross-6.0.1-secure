.class public Lorg/bouncycastle/cms/CMSDigestedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSDigestedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 2

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSDigestedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/DigestedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/DigestedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSDigestedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method


# virtual methods
.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/DigestedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigestedContent()Lorg/bouncycastle/cms/CMSProcessable;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/DigestedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "exception reading digested stream."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/DigestedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/DigestedData;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSDigestedData;->digestedData:Lorg/bouncycastle/asn1/cms/DigestedData;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/DigestedData;->getDigest()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "unable process content: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_1
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "unable to create digest calculator: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method
