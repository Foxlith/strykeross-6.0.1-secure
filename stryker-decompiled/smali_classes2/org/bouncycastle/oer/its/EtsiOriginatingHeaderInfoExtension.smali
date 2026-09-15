.class public Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final etsiHeaderInfoContributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

.field private final extension:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HeaderInfoContributorId;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->etsiHeaderInfoContributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->extension:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/HeaderInfoContributorId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;-><init>(Lorg/bouncycastle/oer/its/HeaderInfoContributorId;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v1

    :cond_1
    new-instance p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;-><init>(Lorg/bouncycastle/oer/its/HeaderInfoContributorId;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object p0
.end method


# virtual methods
.method public getEtsiHeaderInfoContributorId()Lorg/bouncycastle/oer/its/HeaderInfoContributorId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->etsiHeaderInfoContributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    return-object v0
.end method

.method public getExtension()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->extension:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->etsiHeaderInfoContributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->extension:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
