.class public Lorg/bouncycastle/oer/its/ToBeSignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;
    }
.end annotation


# instance fields
.field private final headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

.field private final payload:Lorg/bouncycastle/oer/its/SignedDataPayload;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/SignedDataPayload;Lorg/bouncycastle/oer/its/HeaderInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->payload:Lorg/bouncycastle/oer/its/SignedDataPayload;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ToBeSignedData;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ToBeSignedData;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/SignedDataPayload;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SignedDataPayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->setPayload(Lorg/bouncycastle/oer/its/SignedDataPayload;)Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/HeaderInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HeaderInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->setHeaderInfo(Lorg/bouncycastle/oer/its/HeaderInfo;)Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ToBeSignedData$Builder;->createToBeSignedData()Lorg/bouncycastle/oer/its/ToBeSignedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeaderInfo()Lorg/bouncycastle/oer/its/HeaderInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

    return-object v0
.end method

.method public getPayload()Lorg/bouncycastle/oer/its/SignedDataPayload;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->payload:Lorg/bouncycastle/oer/its/SignedDataPayload;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->payload:Lorg/bouncycastle/oer/its/SignedDataPayload;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ToBeSignedData;->headerInfo:Lorg/bouncycastle/oer/its/HeaderInfo;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
