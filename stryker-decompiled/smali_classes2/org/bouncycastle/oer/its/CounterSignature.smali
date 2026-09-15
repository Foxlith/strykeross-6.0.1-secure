.class public Lorg/bouncycastle/oer/its/CounterSignature;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

.field private final signedData:Lorg/bouncycastle/oer/its/SignedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Uint8;Lorg/bouncycastle/oer/its/SignedData;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/CounterSignature;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/CounterSignature;->signedData:Lorg/bouncycastle/oer/its/SignedData;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CounterSignature;
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/oer/its/CounterSignature;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/oer/its/CounterSignature;

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/oer/its/CounterSignature;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Uint8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Uint8;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/its/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SignedData;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/oer/its/CounterSignature;-><init>(Lorg/bouncycastle/oer/its/Uint8;Lorg/bouncycastle/oer/its/SignedData;)V

    return-object v0
.end method

.method public getProtocolVersion()Lorg/bouncycastle/oer/its/Uint8;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CounterSignature;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    return-object v0
.end method

.method public getSignedData()Lorg/bouncycastle/oer/its/SignedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CounterSignature;->signedData:Lorg/bouncycastle/oer/its/SignedData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CounterSignature;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CounterSignature;->signedData:Lorg/bouncycastle/oer/its/SignedData;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
