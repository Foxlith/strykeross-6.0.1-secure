.class Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CertSelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 5
    .line 6
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->access$100(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Ljava/security/cert/X509CertSelector;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->access$100(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/security/cert/X509CertSelector;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setAuthorityKeyIdentifier([B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setBasicConstraints(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setCertificateValid(Ljava/util/Date;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setMatchAllSubjectAltNames(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    .line 88
    .line 89
    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getIssuerAsBytes()[B

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setNameConstraints([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setPathToNames(Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setPolicy(Ljava/util/Set;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CertSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Ljava/security/cert/X509CertSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v2, "base selector invalid: "

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    :goto_0
    return p1
.end method
