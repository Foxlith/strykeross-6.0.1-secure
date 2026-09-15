.class public Lorg/bouncycastle/pkcs/bc/BcPKCS10CertificationRequestBuilder;
.super Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pkcs/PKCS10CertificationRequestBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method
