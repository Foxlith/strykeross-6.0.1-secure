.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "SourceFile"


# instance fields
.field protected authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field protected originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

.field final recipientInfoGenerators:Ljava/util/List;

.field protected unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method


# virtual methods
.method public addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAuthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method public setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/OriginatorInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    return-void
.end method

.method public setUnauthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method
