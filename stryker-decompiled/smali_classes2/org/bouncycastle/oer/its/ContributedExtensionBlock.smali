.class public Lorg/bouncycastle/oer/its/ContributedExtensionBlock;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final contributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

.field private final extns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HeaderInfoContributorId;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/oer/its/HeaderInfoContributorId;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->contributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->extns:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ContributedExtensionBlock;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;

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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;-><init>(Lorg/bouncycastle/oer/its/HeaderInfoContributorId;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getContributorId()Lorg/bouncycastle/oer/its/HeaderInfoContributorId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->contributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    return-object v0
.end method

.method public getExtns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/EtsiOriginatingHeaderInfoExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->extns:Ljava/util/List;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->contributorId:Lorg/bouncycastle/oer/its/HeaderInfoContributorId;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ContributedExtensionBlock;->extns:Ljava/util/List;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Utils;->toSequence(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
