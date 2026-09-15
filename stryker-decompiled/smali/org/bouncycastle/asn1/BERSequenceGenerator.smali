.class public Lorg/bouncycastle/asn1/BERSequenceGenerator;
.super Lorg/bouncycastle/asn1/BERGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeBERHeader(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/BERGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/BERGenerator;->writeBERHeader(I)V

    return-void
.end method


# virtual methods
.method public addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERGenerator;->writeBEREnd()V

    return-void
.end method
