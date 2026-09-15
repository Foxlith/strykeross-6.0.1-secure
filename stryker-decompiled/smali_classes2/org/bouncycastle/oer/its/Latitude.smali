.class public Lorg/bouncycastle/oer/its/Latitude;
.super Lorg/bouncycastle/oer/its/NinetyDegreeInt;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/NinetyDegreeInt;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Latitude;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Latitude;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Latitude;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/Latitude;

    check-cast p0, Lorg/bouncycastle/oer/its/NinetyDegreeInt;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Latitude;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/oer/its/Latitude;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Latitude;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
