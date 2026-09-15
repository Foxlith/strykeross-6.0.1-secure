.class public Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/AesCcmCiphertext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAesCcmCiphertext()Lorg/bouncycastle/oer/its/AesCcmCiphertext;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/AesCcmCiphertext;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/SequenceOfOctetString;)V

    return-object v0
.end method

.method public setNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public setOpaque(Lorg/bouncycastle/oer/its/SequenceOfOctetString;)Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    return-object p0
.end method
