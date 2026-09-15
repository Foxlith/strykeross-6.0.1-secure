.class public Lorg/bouncycastle/oer/its/Uint8;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/its/Uint8;->verify(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/oer/its/Uint8;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/oer/its/Uint8;->value:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Uint8;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Uint8;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Uint8;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/Uint8;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/Uint8;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v1, p0, Lorg/bouncycastle/oer/its/Uint8;->value:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method

.method public verify(I)I
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uint16 must be <= 0xFF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uint16 must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
