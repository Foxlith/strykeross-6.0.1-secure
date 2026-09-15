.class Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CmsAuthenticatedDataOutputStream"
.end annotation


# instance fields
.field private cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private dataStream:Ljava/io/OutputStream;

.field private digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

.field private eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private macCalculator:Lorg/bouncycastle/operator/MacCalculator;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/bouncycastle/operator/MacCalculator;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object p4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    iput-object p6, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p7, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p8, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->digestCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, v2, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v3, :cond_0

    new-instance v3, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;-><init>()V

    iput-object v3, v2, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v3, v3, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v3, v0}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {v3}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->macCalculator:Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v2, v2, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/BERSet;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;

    iget-object v5, v5, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v5, v0}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v0, 0x3

    invoke-direct {v3, v1, v0, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;->dataStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
