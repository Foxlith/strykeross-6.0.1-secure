.class public Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;

    iget-boolean p1, p1, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->isEndEntity()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Issuer certificate KeyUsage extension does not permit key signing"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "KeyUsage extension not present in CA certificate"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
