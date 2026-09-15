.class public Lorg/bouncycastle/cert/bc/BcX509ExtensionUtils;
.super Lorg/bouncycastle/cert/X509ExtensionUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/bc/BcX509ExtensionUtils$SHA1DigestCalculator;-><init>(Lorg/bouncycastle/cert/bc/BcX509ExtensionUtils$1;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/X509ExtensionUtils;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;-><init>(Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method


# virtual methods
.method public createAuthorityKeyIdentifier(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->createAuthorityKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object p1

    return-object p1
.end method

.method public createSubjectKeyIdentifier(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->createSubjectKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object p1

    return-object p1
.end method
