.class public Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
    }
.end annotation


# instance fields
.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private final pubParams:Ljava/security/interfaces/ECPublicKey;

.field private final sigChoice:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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

    iput v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

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
    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;->getKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not public verification key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to extract parent data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 9

    .line 1
    const-string v0, "choice "

    .line 2
    .line 3
    iget v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    .line 4
    .line 5
    if-ne v1, p1, :cond_3

    .line 6
    .line 7
    :try_start_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 23
    .line 24
    invoke-interface {p1, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :try_start_1
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    .line 33
    .line 34
    array-length v1, p1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v4, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/IssuerIdentifier;->isSelf()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/Certificate;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Certificate;->getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/CertificateBase;->getToBeSignedCertificate()Lorg/bouncycastle/oer/its/ToBeSignedCertificate;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v1, Lorg/bouncycastle/oer/its/template/IEEE1609dot2;->tbsCertificate:Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 70
    .line 71
    invoke-static {p1, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)[B

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    array-length v1, p1

    .line 76
    invoke-virtual {v4, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    move-object v7, p1

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_4

    .line 87
    :cond_0
    const/4 p1, 0x0

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    iget p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    if-eq p1, v1, :cond_2

    .line 95
    .line 96
    const/4 v1, 0x3

    .line 97
    if-ne p1, v1, :cond_1

    .line 98
    .line 99
    iget-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 100
    .line 101
    const-string v0, "SHA384withECDSA"

    .line 102
    .line 103
    :goto_2
    invoke-interface {p1, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    move-object v6, p1

    .line 108
    goto :goto_3

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, " not supported"

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 135
    .line 136
    const-string v0, "SHA256withECDSA"

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :goto_3
    new-instance p1, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;

    .line 140
    .line 141
    move-object v2, p1

    .line 142
    move-object v3, p0

    .line 143
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :goto_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :catch_1
    move-exception p1

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    .line 169
    .line 170
    const-string v1, "wrong verifier for algorithm: "

    .line 171
    .line 172
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v0
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
