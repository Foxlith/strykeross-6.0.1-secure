.class public Lorg/bouncycastle/its/bc/BcITSContentSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentSigner;


# instance fields
.field private final curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final parentData:[B

.field private final parentDigest:[B

.field private final privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final signerCert:Lorg/bouncycastle/its/ITSCertificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/its/bc/BcITSContentSigner;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

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

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object p1, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    array-length v2, p2

    invoke-interface {p1, p2, v0, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signer certificate encoding failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-interface {p1, p2, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_2
    return-void

    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot recognise digest type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public getAssociatedCertificateDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v2, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v4, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2, v4, v5}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    array-length v1, v0

    invoke-virtual {v2, v0, v3, v1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public isForSelfSigning()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
