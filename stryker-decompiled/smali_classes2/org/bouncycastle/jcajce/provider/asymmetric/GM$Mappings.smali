.class public Lorg/bouncycastle/jcajce/provider/asymmetric/GM$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/GM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    .line 1
    const-string v0, "Signature.SHA256WITHSM2"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sha256WithSM2"

    .line 4
    .line 5
    const-string v2, "Alg.Alias.Signature."

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    const-string v3, "SHA256WITHSM2"

    .line 14
    .line 15
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "Signature.SM3WITHSM2"

    .line 19
    .line 20
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMSignatureSpi$sm3WithSM2"

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    .line 28
    const-string v2, "SM3WITHSM2"

    .line 29
    .line 30
    invoke-static {v0, v1, p1, v2}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "Cipher.SM2"

    .line 34
    .line 35
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2"

    .line 36
    .line 37
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "Alg.Alias.Cipher.SM2WITHSM3"

    .line 41
    .line 42
    const-string v1, "SM2"

    .line 43
    .line 44
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "Alg.Alias.Cipher."

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    .line 56
    invoke-static {v0, v3, p1, v1}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "Cipher.SM2WITHBLAKE2B"

    .line 60
    .line 61
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2b"

    .line 62
    .line 63
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_blake2b512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .line 69
    const-string v3, "SM2WITHBLAKE2B"

    .line 70
    .line 71
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "Cipher.SM2WITHBLAKE2S"

    .line 75
    .line 76
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withBlake2s"

    .line 77
    .line 78
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_blake2s256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    .line 84
    const-string v3, "SM2WITHBLAKE2S"

    .line 85
    .line 86
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "Cipher.SM2WITHWHIRLPOOL"

    .line 90
    .line 91
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withWhirlpool"

    .line 92
    .line 93
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_whirlpool:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    .line 99
    const-string v3, "SM2WITHWHIRLPOOL"

    .line 100
    .line 101
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "Cipher.SM2WITHMD5"

    .line 105
    .line 106
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withMD5"

    .line 107
    .line 108
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 113
    .line 114
    const-string v3, "SM2WITHMD5"

    .line 115
    .line 116
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "Cipher.SM2WITHRIPEMD160"

    .line 120
    .line 121
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withRMD"

    .line 122
    .line 123
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_rmd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    .line 129
    const-string v3, "SM2WITHRIPEMD160"

    .line 130
    .line 131
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "Cipher.SM2WITHSHA1"

    .line 135
    .line 136
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha1"

    .line 137
    .line 138
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 143
    .line 144
    const-string v3, "SM2WITHSHA1"

    .line 145
    .line 146
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "Cipher.SM2WITHSHA224"

    .line 150
    .line 151
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha224"

    .line 152
    .line 153
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 158
    .line 159
    const-string v3, "SM2WITHSHA224"

    .line 160
    .line 161
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "Cipher.SM2WITHSHA256"

    .line 165
    .line 166
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha256"

    .line 167
    .line 168
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 173
    .line 174
    const-string v3, "SM2WITHSHA256"

    .line 175
    .line 176
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "Cipher.SM2WITHSHA384"

    .line 180
    .line 181
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha384"

    .line 182
    .line 183
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 188
    .line 189
    const-string v3, "SM2WITHSHA384"

    .line 190
    .line 191
    invoke-static {v0, v1, p1, v3}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v0, "Cipher.SM2WITHSHA512"

    .line 195
    .line 196
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ec.GMCipherSpi$SM2withSha512"

    .line 197
    .line 198
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2encrypt_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 203
    .line 204
    const-string v2, "SM2WITHSHA512"

    .line 205
    .line 206
    invoke-static {v0, v1, p1, v2}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method
