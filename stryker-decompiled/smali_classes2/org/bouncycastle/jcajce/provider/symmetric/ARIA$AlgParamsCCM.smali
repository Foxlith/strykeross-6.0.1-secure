.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/ARIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsCCM"
.end annotation


# instance fields
.field private ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unknown format specified"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    check-cast p1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineInit([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unknown format specified"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "CCM"

    return-object v0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getIcvLen()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object p1

    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getIcvLen()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object p1
.end method
