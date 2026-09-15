.class public Lorg/bouncycastle/its/bc/BcITSImplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ToBeSignedCertificate$Builder;)V

    return-void
.end method
