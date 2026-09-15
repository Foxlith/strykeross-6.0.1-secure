.class public Lorg/bouncycastle/oer/its/SignedDataPayload;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;
    }
.end annotation


# instance fields
.field private final data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

.field private final extDataHash:Lorg/bouncycastle/oer/its/HashedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/HashedData;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/HashedData;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/SignedDataPayload$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SignedDataPayload;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SignedDataPayload;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SignedDataPayload;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/SignedDataPayload;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/HashedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedData;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/SignedDataPayload;-><init>(Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;Lorg/bouncycastle/oer/its/HashedData;)V

    return-object v0
.end method


# virtual methods
.method public getData()Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedDataPayload;->data:Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    return-object v0
.end method

.method public getExtDataHash()Lorg/bouncycastle/oer/its/HashedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedDataPayload;->extDataHash:Lorg/bouncycastle/oer/its/HashedData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
