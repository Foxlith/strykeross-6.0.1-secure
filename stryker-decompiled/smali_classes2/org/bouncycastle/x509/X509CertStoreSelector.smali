.class public Lorg/bouncycastle/x509/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CertSelector;)Lorg/bouncycastle/x509/X509CertStoreSelector;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/bouncycastle/x509/X509CertStoreSelector;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setAuthorityKeyIdentifier([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setMatchAllSubjectAltNames(Z)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPathToNames(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setNameConstraints([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string v1, "error in passed in selector: "

    .line 139
    .line 140
    invoke-static {v1, p0}, Ll1/e;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v0, "cannot create from null selector"

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
