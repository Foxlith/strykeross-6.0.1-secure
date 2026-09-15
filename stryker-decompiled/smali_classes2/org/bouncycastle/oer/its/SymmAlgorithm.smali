.class public Lorg/bouncycastle/oer/its/SymmAlgorithm;
.super Lorg/bouncycastle/asn1/ASN1Enumerated;
.source "SourceFile"


# static fields
.field public static aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/SymmAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/SymmAlgorithm;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ordinal can only be zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SymmAlgorithm;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/SymmAlgorithm;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/oer/its/SymmAlgorithm;

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lorg/bouncycastle/oer/its/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/SymmAlgorithm;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unaccounted enum value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
