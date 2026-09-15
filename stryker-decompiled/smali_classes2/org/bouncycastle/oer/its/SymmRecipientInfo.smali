.class public Lorg/bouncycastle/oer/its/SymmRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final encKey:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

.field private final recipientId:Lorg/bouncycastle/oer/its/HashedId;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/SymmetricCiphertext;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-void
.end method


# virtual methods
.method public getEncKey()Lorg/bouncycastle/oer/its/SymmetricCiphertext;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    return-object v0
.end method

.method public getRecipientId()Lorg/bouncycastle/oer/its/HashedId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SymmRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/SymmetricCiphertext;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
