.class public Lorg/bouncycastle/cert/X509ExtensionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calculator:Lorg/bouncycastle/operator/DigestCalculator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculator:Lorg/bouncycastle/operator/DigestCalculator;

    return-void
.end method

.method private calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculator:Lorg/bouncycastle/operator/DigestCalculator;

    .line 10
    .line 11
    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculator:Lorg/bouncycastle/operator/DigestCalculator;

    .line 22
    .line 23
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Lorg/bouncycastle/cert/CertRuntimeException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "unable to calculate identifier: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/CertRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method private getSubjectKeyIdentifier(Lorg/bouncycastle/cert/X509CertificateHolder;)[B
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createAuthorityKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([B)V

    return-object v0
.end method

.method public createAuthorityKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createAuthorityKeyIdentifier(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 4

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->getSubjectKeyIdentifier(Lorg/bouncycastle/cert/X509CertificateHolder;)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public createSubjectKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object v0
.end method

.method public createTruncatedSubjectKeyIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p1

    const/16 v0, 0x8

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p1, v1, v3

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object p1
.end method
