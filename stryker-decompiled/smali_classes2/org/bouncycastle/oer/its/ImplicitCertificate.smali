.class public Lorg/bouncycastle/oer/its/ImplicitCertificate;
.super Lorg/bouncycastle/oer/its/CertificateBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/IssuerIdentifier;Lorg/bouncycastle/oer/its/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/Signature;)V
    .locals 6

    sget-object v2, Lorg/bouncycastle/oer/its/CertificateType;->Implicit:Lorg/bouncycastle/oer/its/CertificateType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/oer/its/CertificateBase;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/CertificateType;Lorg/bouncycastle/oer/its/IssuerIdentifier;Lorg/bouncycastle/oer/its/ToBeSignedCertificate;Lorg/bouncycastle/oer/its/Signature;)V

    return-void
.end method
