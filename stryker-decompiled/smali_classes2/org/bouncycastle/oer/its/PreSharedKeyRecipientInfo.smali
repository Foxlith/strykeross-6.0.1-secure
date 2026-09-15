.class public Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;
.super Lorg/bouncycastle/oer/its/HashedId;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/HashedId;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/PreSharedKeyRecipientInfo;-><init>([B)V

    return-object v0
.end method
