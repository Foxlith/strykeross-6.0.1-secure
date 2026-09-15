.class public Lorg/bouncycastle/asn1/x509/Extension;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field public static final auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final biometricInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificateIssuer:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final expiredCertsOnCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final instructionCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final logoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final noRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final privateKeyUsagePeriod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectDirectoryAttributes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private critical:Z

.field private extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "2.5.29.9"

    .line 2
    .line 3
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    .line 9
    const-string v0, "2.5.29.14"

    .line 10
    .line 11
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    .line 17
    const-string v0, "2.5.29.15"

    .line 18
    .line 19
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    .line 25
    const-string v0, "2.5.29.16"

    .line 26
    .line 27
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    .line 33
    const-string v0, "2.5.29.17"

    .line 34
    .line 35
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    .line 41
    const-string v0, "2.5.29.18"

    .line 42
    .line 43
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    .line 49
    const-string v0, "2.5.29.19"

    .line 50
    .line 51
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    const-string v0, "2.5.29.20"

    .line 58
    .line 59
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    .line 65
    const-string v0, "2.5.29.21"

    .line 66
    .line 67
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    .line 73
    const-string v0, "2.5.29.23"

    .line 74
    .line 75
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->instructionCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    .line 81
    const-string v0, "2.5.29.24"

    .line 82
    .line 83
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 88
    .line 89
    const-string v0, "2.5.29.27"

    .line 90
    .line 91
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    .line 97
    const-string v0, "2.5.29.28"

    .line 98
    .line 99
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    .line 105
    const-string v0, "2.5.29.29"

    .line 106
    .line 107
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    .line 113
    const-string v0, "2.5.29.30"

    .line 114
    .line 115
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .line 121
    const-string v0, "2.5.29.31"

    .line 122
    .line 123
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    const-string v0, "2.5.29.32"

    .line 130
    .line 131
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 136
    .line 137
    const-string v0, "2.5.29.33"

    .line 138
    .line 139
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 144
    .line 145
    const-string v0, "2.5.29.35"

    .line 146
    .line 147
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 152
    .line 153
    const-string v0, "2.5.29.36"

    .line 154
    .line 155
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 160
    .line 161
    const-string v0, "2.5.29.37"

    .line 162
    .line 163
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 168
    .line 169
    const-string v0, "2.5.29.46"

    .line 170
    .line 171
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 176
    .line 177
    const-string v0, "2.5.29.54"

    .line 178
    .line 179
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 184
    .line 185
    const-string v0, "1.3.6.1.5.5.7.1.1"

    .line 186
    .line 187
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    .line 193
    const-string v0, "1.3.6.1.5.5.7.1.11"

    .line 194
    .line 195
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    .line 201
    const-string v0, "1.3.6.1.5.5.7.1.12"

    .line 202
    .line 203
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->logoType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    .line 209
    const-string v0, "1.3.6.1.5.5.7.1.2"

    .line 210
    .line 211
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->biometricInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    .line 217
    const-string v0, "1.3.6.1.5.5.7.1.3"

    .line 218
    .line 219
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 224
    .line 225
    const-string v0, "1.3.6.1.5.5.7.1.4"

    .line 226
    .line 227
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->auditIdentity:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 232
    .line 233
    const-string v0, "2.5.29.56"

    .line 234
    .line 235
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->noRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 240
    .line 241
    const-string v0, "2.5.29.55"

    .line 242
    .line 243
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 248
    .line 249
    const-string v0, "2.5.29.60"

    .line 250
    .line 251
    invoke-static {v0}, Ll1/e;->u(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, Lorg/bouncycastle/asn1/x509/Extension;->expiredCertsOnCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 256
    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Extension;->extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-boolean p2, p0, Lorg/bouncycastle/asn1/x509/Extension;->critical:Z

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/Extension;->critical:Z

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->critical:Z

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v1}, Ll1/e;->k(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertValueToObject(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "can\'t convert extension: "

    .line 18
    .line 19
    invoke-static {v1, p0}, Ll1/e;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public static create(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-interface {p2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Extension;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/Extension;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/asn1/x509/Extension;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/x509/Extension;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Extension;->convertValueToObject(Lorg/bouncycastle/asn1/x509/Extension;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/Extension;->getExtnId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    not-int v0, v0

    return v0
.end method

.method public isCritical()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/Extension;->critical:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extension;->extnId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/x509/Extension;->critical:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
