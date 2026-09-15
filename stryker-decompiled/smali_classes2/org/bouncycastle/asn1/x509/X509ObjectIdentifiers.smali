.class public interface abstract Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final commonName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final countryName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final crlAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_caIssuers:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_organizationIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_at_telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final localityName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ocspAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organization:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final organizationalUnitName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ripemd160WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final stateOrProvinceName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "2.5.4.3"

    .line 2
    .line 3
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    const-string v0, "2.5.4.6"

    .line 10
    .line 11
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    .line 17
    const-string v0, "2.5.4.7"

    .line 18
    .line 19
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    .line 25
    const-string v0, "2.5.4.8"

    .line 26
    .line 27
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    const-string v0, "2.5.4.10"

    .line 34
    .line 35
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    .line 41
    const-string v0, "2.5.4.11"

    .line 42
    .line 43
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    .line 49
    const-string v0, "2.5.4.20"

    .line 50
    .line 51
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    const-string v0, "2.5.4.41"

    .line 58
    .line 59
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    .line 65
    const-string v0, "2.5.4.97"

    .line 66
    .line 67
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_organizationIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    const-string v0, "1.3.14.3.2.26"

    .line 74
    .line 75
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    .line 81
    const-string v0, "1.3.36.3.2.1"

    .line 82
    .line 83
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    .line 89
    const-string v0, "1.3.36.3.3.1.2"

    .line 90
    .line 91
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    .line 97
    const-string v0, "2.5.8.1.1"

    .line 98
    .line 99
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 106
    .line 107
    const-string v1, "1.3.6.1.5.5.7"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 113
    .line 114
    const-string v1, "6.30"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 121
    .line 122
    const-string v1, "6.31"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 129
    .line 130
    const-string v1, "6.32"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 137
    .line 138
    const-string v1, "6.33"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sput-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 145
    .line 146
    const-string v1, "1"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 153
    .line 154
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    .line 156
    const-string v3, "2.5.29"

    .line 157
    .line 158
    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 162
    .line 163
    const-string v2, "48"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 170
    .line 171
    const-string v2, "2"

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    sput-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 194
    .line 195
    sput-object v2, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 196
    .line 197
    return-void
.end method
