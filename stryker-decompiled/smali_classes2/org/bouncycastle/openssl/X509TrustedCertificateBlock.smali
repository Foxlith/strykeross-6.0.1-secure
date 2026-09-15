.class public Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

.field private final trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/openssl/CertificateTrustBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    iput-object p2, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/openssl/CertificateTrustBlock;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/openssl/CertificateTrustBlock;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCertificateHolder()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->certificateHolder:Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    invoke-virtual {v1}, Lorg/bouncycastle/openssl/CertificateTrustBlock;->toASN1Sequence()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getTrustBlock()Lorg/bouncycastle/openssl/CertificateTrustBlock;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/X509TrustedCertificateBlock;->trustBlock:Lorg/bouncycastle/openssl/CertificateTrustBlock;

    return-object v0
.end method
