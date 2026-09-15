.class public Lorg/bouncycastle/oer/its/MissingCrlIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final cracaId:Lorg/bouncycastle/oer/its/HashedId$HashedId3;

.field private final crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/HashedId$HashedId3;Lorg/bouncycastle/oer/its/CrlSeries;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->cracaId:Lorg/bouncycastle/oer/its/HashedId$HashedId3;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/MissingCrlIdentifier;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/HashedId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/CrlSeries;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CrlSeries;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;

    check-cast v0, Lorg/bouncycastle/oer/its/HashedId$HashedId3;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;-><init>(Lorg/bouncycastle/oer/its/HashedId$HashedId3;Lorg/bouncycastle/oer/its/CrlSeries;)V

    return-object v1
.end method


# virtual methods
.method public getCracaId()Lorg/bouncycastle/oer/its/HashedId$HashedId3;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->cracaId:Lorg/bouncycastle/oer/its/HashedId$HashedId3;

    return-object v0
.end method

.method public getCrlSeries()Lorg/bouncycastle/oer/its/CrlSeries;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->cracaId:Lorg/bouncycastle/oer/its/HashedId$HashedId3;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/MissingCrlIdentifier;->crlSeries:Lorg/bouncycastle/oer/its/CrlSeries;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
