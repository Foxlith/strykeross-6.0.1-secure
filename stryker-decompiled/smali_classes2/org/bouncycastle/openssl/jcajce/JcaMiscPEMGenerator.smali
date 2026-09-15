.class public Lorg/bouncycastle/openssl/jcajce/JcaMiscPEMGenerator;
.super Lorg/bouncycastle/openssl/MiscPEMGenerator;
.source "SourceFile"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private password:[C

.field private provider:Ljava/security/Provider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/openssl/jcajce/JcaMiscPEMGenerator;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/PEMEncryptor;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/openssl/jcajce/JcaMiscPEMGenerator;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/openssl/MiscPEMGenerator;-><init>(Ljava/lang/Object;Lorg/bouncycastle/openssl/PEMEncryptor;)V

    return-void
.end method

.method private static convertObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    const-string v1, "Cannot encode object: "

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p0, Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLHolder;

    check-cast p0, Ljava/security/cert/X509CRL;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLHolder;-><init>(Ljava/security/cert/X509CRL;)V
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Ljava/security/KeyPair;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/security/KeyPair;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/openssl/jcajce/JcaMiscPEMGenerator;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/security/Key;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/security/PublicKey;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/security/PublicKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    :cond_4
    return-object p0
.end method
