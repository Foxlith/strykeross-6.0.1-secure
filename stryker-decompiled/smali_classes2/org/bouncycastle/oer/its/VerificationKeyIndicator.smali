.class public Lorg/bouncycastle/oer/its/VerificationKeyIndicator;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;
    }
.end annotation


# static fields
.field public static final extension:I = 0x2

.field public static final reconstructionValue:I = 0x1

.field public static final verificationKey:I


# instance fields
.field private final choice:I

.field private final object:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

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
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v2, "unhandled tag "

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_2
    new-instance v0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    .line 56
    .line 57
    invoke-direct {v0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lorg/bouncycastle/oer/its/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EccP256CurvePoint;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_0
    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->setObject(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->createVerificationKeyIndicator()Lorg/bouncycastle/oer/its/VerificationKeyIndicator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_3
    new-instance v0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    .line 82
    .line 83
    invoke-direct {v0}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/VerificationKeyIndicator$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lorg/bouncycastle/oer/its/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PublicVerificationKey;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->choice:I

    return v0
.end method

.method public getObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/VerificationKeyIndicator;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
