.class Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tsp/TimeStampTokenGenerator;

.field final synthetic val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertID;

.field final synthetic val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertID;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;->this$0:Lorg/bouncycastle/tsp/TimeStampTokenGenerator;

    iput-object p2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;->val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;->val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;->val$signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getSignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ess/SigningCertificate;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;->val$essCertid:Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ess/SigningCertificate;-><init>(Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->add(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    :cond_0
    return-object p1
.end method
