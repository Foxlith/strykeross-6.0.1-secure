.class public Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/EccP384CurvePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private choice:I

.field private value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->createEccP384CurvePoint()Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object p0

    return-object p0
.end method

.method private createEccP384CurvePoint()Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    iget v1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/EccP384CurvePoint;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public createCompressedY0(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 1

    const/4 p1, 0x2

    iput p1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not fully implemented."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCompressedY1(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 1

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not fully implemented."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFill()Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->createEccP384CurvePoint()Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object v0

    return-object v0
.end method

.method public createUncompressedP384(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 4

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    const/16 v3, 0x30

    invoke-static {v3, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {v3, p2}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->createEccP384CurvePoint()Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object p1

    return-object p1
.end method

.method public createXOnly(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->createEccP384CurvePoint()Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    move-result-object p1

    return-object p1
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->choice:I

    return-object p0
.end method

.method public setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EccP384CurvePoint$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
