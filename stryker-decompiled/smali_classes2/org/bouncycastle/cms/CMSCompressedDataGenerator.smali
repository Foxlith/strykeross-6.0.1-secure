.class public Lorg/bouncycastle/cms/CMSCompressedDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ZLIB:Ljava/lang/String; = "1.2.840.113549.1.9.16.3.8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputCompressor;)Lorg/bouncycastle/cms/CMSCompressedData;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputCompressor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputCompressor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v1, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/CompressedData;

    invoke-direct {v2, p2, v0}, Lorg/bouncycastle/asn1/cms/CompressedData;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/cms/CMSCompressedData;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSCompressedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string v0, "exception encoding data."

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
