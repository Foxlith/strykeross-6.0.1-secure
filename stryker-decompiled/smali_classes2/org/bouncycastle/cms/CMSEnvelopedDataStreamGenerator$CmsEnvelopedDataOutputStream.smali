.class Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmsEnvelopedDataOutputStream"
.end annotation


# instance fields
.field private _cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private final _cOut:Ljava/io/OutputStream;

.field private _eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private final _encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

.field private _envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _octetStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_octetStream:Ljava/io/OutputStream;

    invoke-interface {p2, p3}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p6, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    instance-of v1, v0, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_octetStream:Ljava/io/OutputStream;

    check-cast v0, Lorg/bouncycastle/operator/OutputAEADEncryptor;

    invoke-interface {v0}, Lorg/bouncycastle/operator/AADProcessor;->getMAC()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_octetStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    iget-object v0, v0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/BERSet;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
