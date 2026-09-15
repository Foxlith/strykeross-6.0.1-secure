.class public Lorg/bouncycastle/oer/its/SignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SignedData$Builder;
    }
.end annotation


# instance fields
.field private final hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

.field private final signature:Lorg/bouncycastle/oer/its/Signature;

.field private final signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

.field private final tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HashAlgorithm;Lorg/bouncycastle/oer/its/ToBeSignedData;Lorg/bouncycastle/oer/its/SignerIdentifier;Lorg/bouncycastle/oer/its/Signature;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SignedData;->hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/SignedData;->signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/SignedData;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SignedData;
    .locals 4

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SignedData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SignedData;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/SignedData;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/HashAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashAlgorithm;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/oer/its/ToBeSignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ToBeSignedData;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SignerIdentifier;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Signature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Signature;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/bouncycastle/oer/its/SignedData;-><init>(Lorg/bouncycastle/oer/its/HashAlgorithm;Lorg/bouncycastle/oer/its/ToBeSignedData;Lorg/bouncycastle/oer/its/SignerIdentifier;Lorg/bouncycastle/oer/its/Signature;)V

    return-object v0
.end method


# virtual methods
.method public builder()Lorg/bouncycastle/oer/its/SignedData$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/SignedData$Builder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/SignedData$Builder;-><init>(Lorg/bouncycastle/oer/its/SignedData;)V

    return-object v0
.end method

.method public getHashId()Lorg/bouncycastle/oer/its/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedData;->hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/oer/its/Signature;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedData;->signature:Lorg/bouncycastle/oer/its/Signature;

    return-object v0
.end method

.method public getSigner()Lorg/bouncycastle/oer/its/SignerIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedData;->signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

    return-object v0
.end method

.method public getTbsData()Lorg/bouncycastle/oer/its/ToBeSignedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedData;->hashId:Lorg/bouncycastle/oer/its/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedData;->tbsData:Lorg/bouncycastle/oer/its/ToBeSignedData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedData;->signer:Lorg/bouncycastle/oer/its/SignerIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SignedData;->signature:Lorg/bouncycastle/oer/its/Signature;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
