.class public Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Serpent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$Mappings;->PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "$ECB"

    .line 9
    .line 10
    const-string v3, "Cipher.Serpent"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "$KeyGen"

    .line 17
    .line 18
    const-string v4, "KeyGenerator.Serpent"

    .line 19
    .line 20
    invoke-static {v0, v1, v3, p1, v4}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v4, "$AlgParams"

    .line 25
    .line 26
    const-string v5, "AlgorithmParameters.Serpent"

    .line 27
    .line 28
    invoke-static {v0, v1, v4, p1, v5}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v4, "$TECB"

    .line 33
    .line 34
    const-string v5, "Cipher.Tnepres"

    .line 35
    .line 36
    invoke-static {v0, v1, v4, p1, v5}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v4, "$TKeyGen"

    .line 41
    .line 42
    const-string v5, "KeyGenerator.Tnepres"

    .line 43
    .line 44
    invoke-static {v0, v1, v4, p1, v5}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v5, "$TAlgParams"

    .line 49
    .line 50
    const-string v6, "AlgorithmParameters.Tnepres"

    .line 51
    .line 52
    invoke-static {v0, v1, v5, p1, v6}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    .line 57
    const-string v5, "Cipher"

    .line 58
    .line 59
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    .line 64
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    .line 69
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    const-string v2, "$CBC"

    .line 75
    .line 76
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    .line 81
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    .line 86
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    .line 91
    const-string v2, "$CFB"

    .line 92
    .line 93
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    .line 98
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    .line 103
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    .line 108
    const-string v2, "$OFB"

    .line 109
    .line 110
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 114
    .line 115
    invoke-static {v1, v2, p1, v5, v0}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {p1, v5, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v2, "$SerpentGMAC"

    .line 144
    .line 145
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "SERPENT"

    .line 154
    .line 155
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "$TSerpentGMAC"

    .line 159
    .line 160
    invoke-static {v1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v4}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string v4, "TNEPRES"

    .line 169
    .line 170
    invoke-virtual {p0, p1, v4, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "$Poly1305"

    .line 174
    .line 175
    invoke-static {v1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v2, "$Poly1305KeyGen"

    .line 180
    .line 181
    invoke-static {v1, v2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p0, p1, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
