.class public Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

.field private workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

.field private workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    return-void
.end method

.method private isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p1, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;-><init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object p1, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 17
    .line 18
    const-string p2, "Certificate issue does not match parent"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :catch_1
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :catch_2
    move-exception p1

    .line 48
    goto :goto_4

    .line 49
    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 50
    .line 51
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    .line 53
    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;->build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_3
    new-instance p1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 76
    .line 77
    const-string p2, "Certificate signature not for public key in parent"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/cert/CertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Unable to build public key: "

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 97
    .line 98
    .line 99
    throw p2

    .line 100
    :goto_3
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Unable to validate signature: "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    .line 122
    .line 123
    throw p2

    .line 124
    :goto_4
    new-instance p2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v1, "Unable to create verifier: "

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    throw p2

    .line 148
    :cond_4
    :goto_5
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 153
    .line 154
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 159
    .line 160
    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p2, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object p2, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 173
    .line 174
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 185
    .line 186
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_7

    .line 199
    .line 200
    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 201
    .line 202
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    :cond_6
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 207
    .line 208
    :cond_7
    return-void
.end method
