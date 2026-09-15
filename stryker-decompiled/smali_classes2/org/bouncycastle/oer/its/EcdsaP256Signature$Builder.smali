.class public Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/EcdsaP256Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

.field private sSig:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEcdsaP256Signature()Lorg/bouncycastle/oer/its/EcdsaP256Signature;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP256Signature;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/EcdsaP256Signature;-><init>(Lorg/bouncycastle/oer/its/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setrSig(Lorg/bouncycastle/oer/its/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    return-object p0
.end method

.method public setsSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EcdsaP256Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method
