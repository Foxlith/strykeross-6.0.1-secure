.class public Lorg/bouncycastle/oer/its/PublicVerificationKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    }
.end annotation


# static fields
.field public static final ecdsaBrainpoolP256r1:I = 0x1

.field public static final ecdsaBrainpoolP384r1:I = 0x3

.field public static final ecdsaNistP256:I = 0x0

.field public static final extension:I = 0x2


# instance fields
.field final choice:I

.field final curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/PublicVerificationKey$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PublicVerificationKey;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lorg/bouncycastle/oer/its/EccP384CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EccP384CurvePoint;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "unknown tag value "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_0
    new-instance v1, Lorg/bouncycastle/oer/its/PublicVerificationKey;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->choice:I

    return v0
.end method

.method public getCurvePoint()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PublicVerificationKey;->curvePoint:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
