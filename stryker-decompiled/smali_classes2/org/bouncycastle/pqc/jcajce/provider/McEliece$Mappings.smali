.class public Lorg/bouncycastle/pqc/jcajce/provider/McEliece$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/McEliece;
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
    .locals 5

    .line 1
    const-string v0, "KeyPairGenerator.McElieceKobaraImai"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceCCA2KeyPairGeneratorSpi"

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "KeyPairGenerator.McEliecePointcheval"

    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "KeyPairGenerator.McElieceFujisaki"

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "KeyPairGenerator.McEliece"

    .line 19
    .line 20
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceKeyPairGeneratorSpi"

    .line 21
    .line 22
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "KeyPairGenerator.McEliece-CCA2"

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "KeyFactory.McElieceKobaraImai"

    .line 31
    .line 32
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceCCA2KeyFactorySpi"

    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "KeyFactory.McEliecePointcheval"

    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "KeyFactory.McElieceFujisaki"

    .line 43
    .line 44
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "KeyFactory.McEliece"

    .line 48
    .line 49
    const-string v2, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceKeyFactorySpi"

    .line 50
    .line 51
    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "KeyFactory.McEliece-CCA2"

    .line 55
    .line 56
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "KeyFactory."

    .line 62
    .line 63
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v4, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 67
    .line 68
    invoke-static {v0, v4, p1, v1, v3}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcEliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .line 74
    invoke-static {v0, v1, p1, v2}, Ll1/e;->y(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "Cipher.McEliece"

    .line 78
    .line 79
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McEliecePKCSCipherSpi$McEliecePKCS"

    .line 80
    .line 81
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "Cipher.McEliecePointcheval"

    .line 85
    .line 86
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McEliecePointchevalCipherSpi$McEliecePointcheval"

    .line 87
    .line 88
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "Cipher.McElieceKobaraImai"

    .line 92
    .line 93
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceKobaraImaiCipherSpi$McElieceKobaraImai"

    .line 94
    .line 95
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "Cipher.McElieceFujisaki"

    .line 99
    .line 100
    const-string v1, "org.bouncycastle.pqc.jcajce.provider.mceliece.McElieceFujisakiCipherSpi$McElieceFujisaki"

    .line 101
    .line 102
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
