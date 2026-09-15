.class public Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentSigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$Builder;
    }
.end annotation


# instance fields
.field private final curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/operator/DigestCalculator;

.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final parentData:[B

.field private final parentDigest:[B

.field private final privateKey:Ljava/security/interfaces/ECPrivateKey;

.field private final signer:Ljava/lang/String;

.field private final signerCert:Lorg/bouncycastle/its/ITSCertificate;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const-string v1, "SHA256withECDSA"

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const-string p1, "SHA384withECDSA"

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    :goto_1
    :try_start_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, p3}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_2

    :try_start_2
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "signer certificate encoding failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    :goto_2
    return-void

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cannot recognise digest type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentSigner$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;-><init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public getAssociatedCertificateDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->signer:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->privateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->digest:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isForSelfSigning()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentSigner;->parentData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
