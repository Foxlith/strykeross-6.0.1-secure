.class public Lorg/bouncycastle/dvcs/VPKCRequestBuilder;
.super Lorg/bouncycastle/dvcs/DVCSRequestBuilder;
.source "SourceFile"


# instance fields
.field private chains:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/ServiceType;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/VPKCRequestBuilder;->chains:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTargetChain(Lorg/bouncycastle/asn1/x509/Extension;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VPKCRequestBuilder;->chains:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    new-instance v2, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/bouncycastle/asn1/x509/Extension;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetChain(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VPKCRequestBuilder;->chains:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    new-instance v2, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTargetChain(Lorg/bouncycastle/dvcs/TargetChain;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VPKCRequestBuilder;->chains:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/TargetChain;->toASN1Structure()Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lorg/bouncycastle/dvcs/DVCSRequest;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/Data;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/VPKCRequestBuilder;->chains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/Data;-><init>([Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->createDVCRequest(Lorg/bouncycastle/asn1/dvcs/Data;)Lorg/bouncycastle/dvcs/DVCSRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestTime(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->requestInformationBuilder:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    new-instance v1, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setRequestTime(Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V

    return-void
.end method
