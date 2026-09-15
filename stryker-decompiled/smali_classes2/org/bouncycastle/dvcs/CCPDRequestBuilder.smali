.class public Lorg/bouncycastle/dvcs/CCPDRequestBuilder;
.super Lorg/bouncycastle/dvcs/DVCSRequestBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/ServiceType;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/dvcs/MessageImprint;)Lorg/bouncycastle/dvcs/DVCSRequest;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/MessageImprint;->toASN1Structure()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/dvcs/Data;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;->createDVCRequest(Lorg/bouncycastle/asn1/dvcs/Data;)Lorg/bouncycastle/dvcs/DVCSRequest;

    move-result-object p1

    return-object p1
.end method
