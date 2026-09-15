.class public Lorg/bouncycastle/oer/its/EncryptedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/EncryptedData$Builder;
    }
.end annotation


# instance fields
.field private final ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

.field private final recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;Lorg/bouncycastle/oer/its/SymmetricCiphertext;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EncryptedData;
    .locals 3

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/EncryptedData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/EncryptedData;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/SymmetricCiphertext;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/EncryptedData;-><init>(Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;Lorg/bouncycastle/oer/its/SymmetricCiphertext;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, Lorg/bouncycastle/oer/its/EncryptedData;

    return-object p0
.end method


# virtual methods
.method public getCiphertext()Lorg/bouncycastle/oer/its/SymmetricCiphertext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-object v0
.end method

.method public getRecipients()Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
