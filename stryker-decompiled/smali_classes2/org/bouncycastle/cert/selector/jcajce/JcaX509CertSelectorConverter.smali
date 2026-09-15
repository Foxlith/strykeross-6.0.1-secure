.class public Lorg/bouncycastle/cert/selector/jcajce/JcaX509CertSelectorConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doConversion(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;
    .locals 2

    .line 1
    new-instance v0, Ljava/security/cert/X509CertSelector;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unable to convert issuer: "

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p3, :cond_2

    .line 40
    .line 41
    :try_start_1
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p2

    .line 70
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getCertSelector(Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)Ljava/security/cert/X509CertSelector;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSubjectKeyIdentifier()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/bouncycastle/cert/selector/jcajce/JcaX509CertSelectorConverter;->doConversion(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;

    move-result-object p1

    return-object p1
.end method
