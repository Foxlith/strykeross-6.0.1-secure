.class public Lorg/bouncycastle/oer/its/NinetyDegreeInt;
.super Lorg/bouncycastle/asn1/ASN1Integer;
.source "SourceFile"


# static fields
.field private static final loweBound:Ljava/math/BigInteger;

.field private static final unknown:Ljava/math/BigInteger;

.field private static final upperBound:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "-900000000"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->loweBound:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "900000000"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->upperBound:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "900000001"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->unknown:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->assertValue()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->assertValue()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->assertValue()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/NinetyDegreeInt;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public assertValue()V
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->loweBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    sget-object v1, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->unknown:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/bouncycastle/oer/its/NinetyDegreeInt;->upperBound:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ninety degree int cannot be greater than 900000000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ninety degree int cannot be less than -900000000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
