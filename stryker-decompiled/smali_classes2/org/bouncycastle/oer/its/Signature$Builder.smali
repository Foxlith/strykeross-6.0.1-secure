.class public Lorg/bouncycastle/oer/its/Signature$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/Signature;
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


# virtual methods
.method public createSignature()Lorg/bouncycastle/oer/its/Signature;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/Signature;

    iget v1, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/Signature;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public ecdsaBrainpoolP256r1Signature(Lorg/bouncycastle/oer/its/EcdsaP256Signature;)Lorg/bouncycastle/oer/its/Signature$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public ecdsaBrainpoolP384r1Signature(Lorg/bouncycastle/oer/its/EcdsaP384Signature;)Lorg/bouncycastle/oer/its/Signature$Builder;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public ecdsaNistP256Signature(Lorg/bouncycastle/oer/its/EcdsaP256Signature;)Lorg/bouncycastle/oer/its/Signature$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Signature$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
