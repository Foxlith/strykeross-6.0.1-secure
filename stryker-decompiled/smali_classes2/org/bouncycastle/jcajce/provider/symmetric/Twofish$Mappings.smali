.class public Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Twofish;
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

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/Twofish;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/Twofish$Mappings;->PREFIX:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "$ECB"

    .line 9
    .line 10
    const-string v3, "Cipher.Twofish"

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "$KeyGen"

    .line 17
    .line 18
    const-string v3, "KeyGenerator.Twofish"

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1, v3}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "$AlgParams"

    .line 25
    .line 26
    const-string v4, "AlgorithmParameters.Twofish"

    .line 27
    .line 28
    invoke-static {v0, v1, v3, p1, v4}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH"

    .line 32
    .line 33
    const-string v3, "PKCS12PBE"

    .line 34
    .line 35
    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC"

    .line 39
    .line 40
    invoke-interface {p1, v0, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v3, "$PBEWithSHA"

    .line 49
    .line 50
    const-string v4, "Cipher.PBEWITHSHAANDTWOFISH-CBC"

    .line 51
    .line 52
    invoke-static {v0, v1, v3, p1, v4}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v3, "$PBEWithSHAKeyFactory"

    .line 57
    .line 58
    const-string v4, "SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC"

    .line 59
    .line 60
    invoke-static {v0, v1, v3, p1, v4}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v3, "$GMAC"

    .line 65
    .line 66
    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "Twofish"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addGMacAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "$Poly1305"

    .line 80
    .line 81
    invoke-static {v1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "$Poly1305KeyGen"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, p1, v3, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;->addPoly1305Algorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
