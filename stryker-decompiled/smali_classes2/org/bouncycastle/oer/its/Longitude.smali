.class public Lorg/bouncycastle/oer/its/Longitude;
.super Lorg/bouncycastle/oer/its/OneEightyDegreeInt;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/oer/its/OneEightyDegreeInt;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/OneEightyDegreeInt;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/OneEightyDegreeInt;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Longitude;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Longitude;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Longitude;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/OneEightyDegreeInt;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/Longitude;

    check-cast p0, Lorg/bouncycastle/oer/its/OneEightyDegreeInt;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Longitude;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/oer/its/Longitude;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Longitude;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
