.class public Lorg/bouncycastle/oer/its/PKRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/PKRecipientInfo$Builder;
    }
.end annotation


# instance fields
.field private final encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

.field private final recipientId:Lorg/bouncycastle/oer/its/HashedId;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PKRecipientInfo;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/PKRecipientInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/HashedId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lorg/bouncycastle/oer/its/PKRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/HashedId;Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;)V

    return-object v0
.end method


# virtual methods
.method public getEncKey()Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    return-object v0
.end method

.method public getRecipientId()Lorg/bouncycastle/oer/its/HashedId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->recipientId:Lorg/bouncycastle/oer/its/HashedId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PKRecipientInfo;->encKey:Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
