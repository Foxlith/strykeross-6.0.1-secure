.class public Lorg/bouncycastle/oer/its/SymmetricCiphertext;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;
    }
.end annotation


# static fields
.field public static final aes128ccm:I


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SymmetricCiphertext;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->createSymmetricCiphertext()Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->choice:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
