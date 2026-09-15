.class public Lorg/bouncycastle/cert/crmf/PKMACBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

.field private iterationCount:I

.field private mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maxIterations:I

.field private owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

.field private random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p4, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V
    .locals 4

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v1, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    iput p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    return-object p0
.end method

.method private checkIterationCountCeiling(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "iteration count exceeds limit ("

    .line 11
    .line 12
    const-string v2, " > "

    .line 13
    .line 14
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 4

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getSalt()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    array-length v1, p2

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    array-length v2, v0

    invoke-static {v0, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;->setup(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getIterationCount()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result p2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    invoke-interface {v0, v1}, Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;->calculateDigest([B)[B

    move-result-object v1

    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;

    invoke-direct {p2, p0, p1, v1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;-><init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;Lorg/bouncycastle/asn1/cmp/PBMParameter;[B)V

    return-object p2
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/asn1/cmp/PBMParameter;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/bouncycastle/asn1/cmp/PBMParameter;-><init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    return-object p1
.end method

.method public setIterationCount(I)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->checkIterationCountCeiling(I)V

    iput p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iteration count must be at least 100"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getIterationCount()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->checkIterationCountCeiling(I)V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    return-object p0
.end method

.method public setSaltLength(I)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "salt length must be at least 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
