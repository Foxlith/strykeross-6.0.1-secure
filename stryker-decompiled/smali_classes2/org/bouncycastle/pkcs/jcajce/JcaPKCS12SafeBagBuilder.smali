.class public Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;
.super Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/pkcs/jcajce/JcaPKCS12SafeBagBuilder;->convertCert(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBagBuilder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-void
.end method

.method private static convertCert(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/pkcs/PKCSIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot encode certificate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
