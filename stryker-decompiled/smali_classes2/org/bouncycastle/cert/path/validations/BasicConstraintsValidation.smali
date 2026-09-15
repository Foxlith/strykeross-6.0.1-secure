.class public Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z

.field private maxPathLength:Ljava/lang/Integer;

.field private previousCertWasCA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    invoke-direct {v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>()V

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iget-boolean v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object p1, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    if-nez v1, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ltz p2, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Basic constraints violated: path length exceeded"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-nez p2, :cond_5

    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    :cond_6
    return-void

    :cond_7
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string p2, "Basic constraints violated: issuer is not a CA"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
