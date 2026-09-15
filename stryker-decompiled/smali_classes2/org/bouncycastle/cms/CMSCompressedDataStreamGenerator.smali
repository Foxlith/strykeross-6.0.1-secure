.class public Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;
    }
.end annotation


# static fields
.field public static final ZLIB:Ljava/lang/String; = "1.2.840.113549.1.9.16.3.8"


# instance fields
.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputCompressor;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputCompressor;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputCompressor;)Ljava/io/OutputStream;
    .locals 7

    .line 2
    new-instance v3, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v4, p2, v0, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p2, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x0

    invoke-direct {p2, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-interface {p3}, Lorg/bouncycastle/operator/OutputCompressor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-virtual {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v5, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->_bufferSize:I

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;

    invoke-interface {p3, p1}, Lorg/bouncycastle/operator/OutputCompressor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator$CmsCompressedOutputStream;-><init>(Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object p2
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->_bufferSize:I

    return-void
.end method
