.class public Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Extension;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Extension;)V
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private static fromCertificate(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 9
    .line 10
    invoke-static {p0}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 30
    .line 31
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 48
    .line 49
    return-object p0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 53
    .line 54
    invoke-static {p0}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    .line 63
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p0, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-static {v1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 78
    .line 79
    new-instance v2, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 86
    .line 87
    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 117
    .line 118
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 119
    .line 120
    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {v2, v1, v3, p0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    return-object p0

    .line 137
    :goto_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "Exception extracting certificate details: "

    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p0, v1}, Ll1/e;->A(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method private static fromKey(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 23
    .line 24
    const-string v1, "can\'t process key: "

    .line 25
    .line 26
    invoke-static {v1, p0}, Ll1/e;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
