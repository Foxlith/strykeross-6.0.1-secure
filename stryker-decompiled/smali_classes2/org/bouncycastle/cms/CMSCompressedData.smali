.class public Lorg/bouncycastle/cms/CMSCompressedData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field comData:Lorg/bouncycastle/asn1/cms/CompressedData;

.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSCompressedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 2

    .line 2
    const-string v0, "Malformed content."

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSCompressedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/CompressedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CompressedData;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;
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

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSCompressedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method


# virtual methods
.method public getCompressedContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Lorg/bouncycastle/operator/InputExpanderProvider;)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/CompressedData;->getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/InputExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputExpander;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->streamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "exception reading compressed stream."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public getContentStream(Lorg/bouncycastle/operator/InputExpanderProvider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSCompressedData;->comData:Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/CompressedData;->getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/operator/InputExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;

    move-result-object p1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/InputExpander;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSCompressedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
