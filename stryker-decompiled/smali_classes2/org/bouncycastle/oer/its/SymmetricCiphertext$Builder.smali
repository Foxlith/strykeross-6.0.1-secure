.class public Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SymmetricCiphertext;
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
.method public createSymmetricCiphertext()Lorg/bouncycastle/oer/its/SymmetricCiphertext;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    iget v1, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SymmetricCiphertext;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public setChoice(I)Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->choice:I

    return-object p0
.end method

.method public setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SymmetricCiphertext$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
