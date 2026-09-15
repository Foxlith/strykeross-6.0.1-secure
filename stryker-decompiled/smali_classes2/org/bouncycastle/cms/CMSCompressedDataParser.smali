.class public Lorg/bouncycastle/cms/CMSCompressedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSCompressedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/operator/InputExpanderProvider;)Lorg/bouncycastle/cms/CMSTypedStream;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/CompressedDataParser;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CompressedDataParser;->getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    new-instance v2, Lorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/InputExpander;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "IOException reading compressed content."

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
