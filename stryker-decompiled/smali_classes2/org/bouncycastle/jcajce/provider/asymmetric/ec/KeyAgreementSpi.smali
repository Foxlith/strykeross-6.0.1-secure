.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$CDHwithSHA1KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$CDHwithSHA224KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$CDHwithSHA256KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$CDHwithSHA384KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$CDHwithSHA512KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DH;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA1CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA1KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA224CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA224KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA256KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA384CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA384KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUwithSHA512KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA1KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA224KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA256KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA384CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA384KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHwithSHA512KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithRIPEMD160KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithSHA1KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithSHA224KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithSHA256KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithSHA384KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$ECKAEGwithSHA512KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQV;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA1KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA224CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA224KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA224KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA256KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA256KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA384CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA384KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA384KDFAndSharedInfo;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA512KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA512KDFAndSharedInfo;
    }
.end annotation


# static fields
.field private static final converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private agreement:Ljava/lang/Object;

.field private dheParameters:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

.field private kaAlgorithm:Ljava/lang/String;

.field private mqvParameters:Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

.field private parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private result:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    return-void
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    .line 4
    .line 5
    const-string v2, " for initialisation"

    .line 6
    .line 7
    const-string v3, " key agreement requires "

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->mqvParameters:Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 13
    .line 14
    instance-of v0, p1, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-class v0, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 39
    .line 40
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p2, v0, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    .line 54
    check-cast p1, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;

    .line 55
    .line 56
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getStaticPrivateKey()Ljava/security/PrivateKey;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 65
    .line 66
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 75
    .line 76
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move-object v4, p1

    .line 91
    check-cast v4, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    check-cast p2, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 95
    .line 96
    check-cast p1, Ljava/security/PrivateKey;

    .line 97
    .line 98
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 103
    .line 104
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 113
    .line 114
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    move-object v4, v1

    .line 129
    check-cast v4, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 130
    .line 131
    :cond_3
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->mqvParameters:Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 132
    .line 133
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;->getUserKeyingMaterial()[B

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    .line 138
    .line 139
    move-object p2, p1

    .line 140
    :cond_4
    :goto_1
    new-instance p1, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;

    .line 141
    .line 142
    invoke-direct {p1, p2, v0, v4}, Lorg/bouncycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 150
    .line 151
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p2, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_5
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 161
    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    instance-of v0, v0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    check-cast p2, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 169
    .line 170
    check-cast p1, Ljava/security/PrivateKey;

    .line 171
    .line 172
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 177
    .line 178
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 187
    .line 188
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getEphemeralPublicKey()Ljava/security/PublicKey;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    move-object v4, v1

    .line 203
    check-cast v4, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 204
    .line 205
    :cond_6
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->dheParameters:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 206
    .line 207
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getUserKeyingMaterial()[B

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    .line 212
    .line 213
    new-instance p2, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;

    .line 214
    .line 215
    invoke-direct {p2, p1, v0, v4}, Lorg/bouncycastle/crypto/params/ECDHUPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 223
    .line 224
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p1, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;

    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v0, " key agreement cannot be used with "

    .line 245
    .line 246
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-class v0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 250
    .line 251
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p1

    .line 266
    :cond_8
    instance-of v0, p1, Ljava/security/PrivateKey;

    .line 267
    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 271
    .line 272
    if-nez v0, :cond_a

    .line 273
    .line 274
    instance-of v0, p2, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 275
    .line 276
    if-nez v0, :cond_9

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 280
    .line 281
    const-string p2, "no KDF specified for UserKeyingMaterialSpec"

    .line 282
    .line 283
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1

    .line 287
    :cond_a
    :goto_2
    check-cast p1, Ljava/security/PrivateKey;

    .line 288
    .line 289
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 294
    .line 295
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 300
    .line 301
    instance-of v0, p2, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 302
    .line 303
    if-eqz v0, :cond_b

    .line 304
    .line 305
    check-cast p2, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 306
    .line 307
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->getUserKeyingMaterial()[B

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    :cond_b
    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;->ukmParameters:[B

    .line 312
    .line 313
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p2, Lorg/bouncycastle/crypto/BasicAgreement;

    .line 316
    .line 317
    invoke-interface {p2, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 318
    .line 319
    .line 320
    :goto_3
    return-void

    .line 321
    :cond_c
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 322
    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-class v0, Lorg/bouncycastle/jce/interfaces/ECPrivateKey;

    .line 337
    .line 338
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {p2, v0, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p1
.end method


# virtual methods
.method public bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->converter:Lorg/bouncycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1
.end method

.method public calcSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->parameters:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    if-eqz p2, :cond_5

    .line 6
    .line 7
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 8
    .line 9
    instance-of v0, p2, Lorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of p2, p1, Lorg/bouncycastle/jce/interfaces/MQVPublicKey;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Ljava/security/PublicKey;

    .line 18
    .line 19
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 24
    .line 25
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->mqvParameters:Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 26
    .line 27
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;->getOtherPartyEphemeralKey()Ljava/security/PublicKey;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 36
    .line 37
    new-instance v0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;

    .line 38
    .line 39
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/interfaces/MQVPublicKey;

    .line 44
    .line 45
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPublicKey;->getStaticKey()Ljava/security/PublicKey;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 54
    .line 55
    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/MQVPublicKey;->getEphemeralKey()Ljava/security/PublicKey;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 64
    .line 65
    new-instance v0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;

    .line 66
    .line 67
    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    instance-of p2, p2, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;

    .line 72
    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    check-cast p1, Ljava/security/PublicKey;

    .line 76
    .line 77
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 82
    .line 83
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->dheParameters:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 84
    .line 85
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getOtherPartyEphemeralKey()Ljava/security/PublicKey;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 94
    .line 95
    new-instance v0, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;

    .line 96
    .line 97
    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/ECDHUPublicParameters;-><init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    instance-of p2, p1, Ljava/security/PublicKey;

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    check-cast p1, Ljava/security/PublicKey;

    .line 106
    .line 107
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->agreement:Ljava/lang/Object;

    .line 112
    .line 113
    instance-of p2, p1, Lorg/bouncycastle/crypto/BasicAgreement;

    .line 114
    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    check-cast p1, Lorg/bouncycastle/crypto/BasicAgreement;

    .line 118
    .line 119
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->bigIntToBytes(Ljava/math/BigInteger;)[B

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:[B

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception p1

    .line 131
    goto :goto_2

    .line 132
    :cond_3
    check-cast p1, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)[B

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->result:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    :goto_1
    const/4 p1, 0x0

    .line 141
    return-object p1

    .line 142
    :goto_2
    new-instance p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v1, "calculation failed: "

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v0}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p2, p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    .line 157
    .line 158
    throw p2

    .line 159
    :cond_4
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 160
    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v0, " key agreement requires "

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-class v0, Lorg/bouncycastle/jce/interfaces/ECPublicKey;

    .line 177
    .line 178
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, " for doPhase"

    .line 183
    .line 184
    invoke-static {p2, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 200
    .line 201
    const-string v1, " can only be between two parties."

    .line 202
    .line 203
    invoke-static {p2, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p1

    .line 211
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    .line 219
    .line 220
    const-string v1, " not initialised."

    .line 221
    .line 222
    invoke-static {p2, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    if-eqz p2, :cond_1

    instance-of p3, p2, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    if-nez p3, :cond_1

    instance-of p3, p2, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    if-nez p3, :cond_1

    instance-of p3, p2, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "No algorithm parameters supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;->initFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method
