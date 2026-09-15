.class public Lorg/bouncycastle/oer/its/CertificateBase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/CertificateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

.field private signature:Lorg/bouncycastle/oer/its/Signature;

.field private toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

.field private type:Lorg/bouncycastle/oer/its/CertificateType;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;
    .locals 7

    new-instance v6, Lorg/bouncycastle/oer/its/CertificateBase;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->type:Lorg/bouncycastle/oer/its/CertificateType;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    iget-object v5, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/Signature;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/CertificateBase;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/CertificateType;Lorg/bouncycastle/oer/its/IssuerIdentifier;Lorg/bouncycastle/oer/its/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/Signature;)V

    return-object v6
.end method

.method public setIssuer(Lorg/bouncycastle/oer/its/IssuerIdentifier;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->issuer:Lorg/bouncycastle/oer/its/IssuerIdentifier;

    return-object p0
.end method

.method public setSignature(Lorg/bouncycastle/oer/its/Signature;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-object p0
.end method

.method public setToBeSignedCertificate(Lorg/bouncycastle/oer/its/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->toBeSignedCertificate:Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    return-object p0
.end method

.method public setType(Lorg/bouncycastle/oer/its/CertificateType;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->type:Lorg/bouncycastle/oer/its/CertificateType;

    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/CertificateBase$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CertificateBase$Builder;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method
