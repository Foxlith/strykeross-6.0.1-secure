.class public Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/EcdsaP384Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private rSig:Lorg/bouncycastle/oer/its/EccP384CurvePoint;

.field private sSig:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEcdsaP384Signature()Lorg/bouncycastle/oer/its/EcdsaP384Signature;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/EcdsaP384Signature;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/EcdsaP384Signature;-><init>(Lorg/bouncycastle/oer/its/EccP384CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setrSig(Lorg/bouncycastle/oer/its/EccP384CurvePoint;)Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    return-object p0
.end method

.method public setsSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EcdsaP384Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method
