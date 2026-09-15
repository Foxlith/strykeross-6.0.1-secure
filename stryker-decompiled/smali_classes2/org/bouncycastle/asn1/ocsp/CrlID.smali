.class public Lorg/bouncycastle/asn1/ocsp/CrlID;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

.field private crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v1, v3, :cond_0

    .line 31
    .line 32
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "unknown tag number: "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CrlID;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CrlID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/CrlID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCrlNum()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getCrlTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getCrlUrl()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    :goto_1
    return-object v0
.end method

.method public getCrlUrlIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/ASN1IA5String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
