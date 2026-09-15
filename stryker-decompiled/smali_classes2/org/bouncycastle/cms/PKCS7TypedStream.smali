.class public Lorg/bouncycastle/cms/PKCS7TypedStream;
.super Lorg/bouncycastle/cms/CMSTypedStream;
.source "SourceFile"


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSTypedStream;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private getContentStream(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;
    .locals 3

    .line 6
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x1f

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    move v2, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v0, v1

    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-direct {v1, p1, v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public drain()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public getContent()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/PKCS7TypedStream;->content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/PKCS7TypedStream;->getContentStream(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to convert content to stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
