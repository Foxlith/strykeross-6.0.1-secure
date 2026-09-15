.class public Lorg/bouncycastle/oer/its/CertificateBase;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    }
.end annotation


# instance fields
.field private final issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

.field private final signature:Lorg/bouncycastle/oer/its/Signature;

.field private final toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

.field private final type:Lorg/bouncycastle/oer/its/CertificateType;

.field private final version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/CertificateType;Lorg/bouncycastle/oer/its/IssuerIdentifier;Lorg/bouncycastle/oer/its/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/Signature;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/CertificateBase;->type:Lorg/bouncycastle/oer/its/CertificateType;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/CertificateBase;->toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    iput-object p5, p0, Lorg/bouncycastle/oer/its/CertificateBase;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateBase;
    .locals 5

    instance-of v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/CertificateBase;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/CertificateType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateType;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/IssuerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/IssuerIdentifier;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    const-class v4, Lorg/bouncycastle/oer/its/Signature;

    invoke-static {v4, p0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/oer/its/Signature;

    new-instance v4, Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;-><init>()V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/CertificateType;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/IssuerIdentifier;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setToBeSignedCertificate(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->setSignature(Lorg/bouncycastle/oer/its/Signature;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/oer/its/IssuerIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/oer/its/Signature;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-object v0
.end method

.method public getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;->toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    return-object v0
.end method

.method public getType()Lorg/bouncycastle/oer/its/CertificateType;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;->type:Lorg/bouncycastle/oer/its/CertificateType;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateBase;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateBase;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateBase;->type:Lorg/bouncycastle/oer/its/CertificateType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateBase;->issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateBase;->toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/CertificateBase;->signature:Lorg/bouncycastle/oer/its/Signature;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
