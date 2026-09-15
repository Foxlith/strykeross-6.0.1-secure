.class public Lorg/bouncycastle/cert/ocsp/jcajce/JcaBasicOCSPRespBuilder;
.super Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/cert/ocsp/jcajce/JcaRespID;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/ocsp/jcajce/JcaRespID;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lorg/bouncycastle/cert/ocsp/RespID;)V

    return-void
.end method
