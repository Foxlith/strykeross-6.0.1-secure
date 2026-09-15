.class public Lorg/bouncycastle/oer/its/EcdsaP256Signature;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;
    }
.end annotation


# instance fields
.field private final rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

.field private final sSig:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EcdsaP256Signature;
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->setrSig(Lorg/bouncycastle/oer/its/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->setsSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->createEcdsaP256Signature()Lorg/bouncycastle/oer/its/EcdsaP256Signature;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getrSig()Lorg/bouncycastle/oer/its/EccP256CurvePoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    return-object v0
.end method

.method public getsSig()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
