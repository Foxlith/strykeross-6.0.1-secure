.class public Lorg/bouncycastle/oer/its/AesCcmCiphertext;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;
    }
.end annotation


# instance fields
.field private final nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/oer/its/SequenceOfOctetString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;->opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/AesCcmCiphertext;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->setNonce(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->setOpaque(Lorg/bouncycastle/oer/its/SequenceOfOctetString;)Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/AesCcmCiphertext$Builder;->createAesCcmCiphertext()Lorg/bouncycastle/oer/its/AesCcmCiphertext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;->nonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/AesCcmCiphertext;->opaque:Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
