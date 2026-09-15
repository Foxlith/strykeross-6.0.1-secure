.class public Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# instance fields
.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private final pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private final sigChoice:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ToBeSignedCertificate;->getVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PublicVerificationKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getChoice()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getChoice()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown key type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/bc/BcITSPublicVerificationKey;->getKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not public verification key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->pubParams:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 7

    .line 1
    iget v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->sigChoice:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_2

    .line 4
    .line 5
    sget-object p1, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    new-array v6, p1, [B

    .line 18
    .line 19
    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->parentData:[B

    .line 20
    .line 21
    array-length v0, p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {v4, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/IssuerIdentifier;->isSelf()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    new-array p1, p1, [B

    .line 46
    .line 47
    :goto_0
    move-object v5, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    if-eqz v5, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 54
    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/Certificate;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v0, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 68
    .line 69
    invoke-static {p1, v0}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    array-length v0, p1

    .line 74
    invoke-interface {v4, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v4, v5, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 78
    .line 79
    .line 80
    :cond_1
    new-instance v3, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;

    .line 81
    .line 82
    invoke-direct {v3, p0, v4}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Lorg/bouncycastle/crypto/Digest;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;

    .line 86
    .line 87
    move-object v1, p1

    .line 88
    move-object v2, p0

    .line 89
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;-><init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V

    .line 90
    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 94
    .line 95
    const-string v1, "wrong verifier for algorithm: "

    .line 96
    .line 97
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
