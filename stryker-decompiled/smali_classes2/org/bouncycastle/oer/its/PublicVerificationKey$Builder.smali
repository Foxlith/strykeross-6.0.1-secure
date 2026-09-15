.class public Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/PublicVerificationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private choice:I

.field private curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPublicVerificationKey()Lorg/bouncycastle/oer/its/PublicVerificationKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    iget v1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PublicVerificationKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public ecdsaBrainpoolP256r1(Lorg/bouncycastle/oer/its/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public ecdsaBrainpoolP384r1(Lorg/bouncycastle/oer/its/EccP384CurvePoint;)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public ecdsaNistP256(Lorg/bouncycastle/oer/its/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public extension([B)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->choice:I

    return-object p0
.end method

.method public setCurvePoint(Lorg/bouncycastle/oer/its/EccCurvePoint;)Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
