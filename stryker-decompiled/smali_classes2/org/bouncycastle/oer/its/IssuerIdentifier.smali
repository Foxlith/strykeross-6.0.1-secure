.class public Lorg/bouncycastle/oer/its/IssuerIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    }
.end annotation


# static fields
.field public static final extension:I = 0x2

.field public static final self:I = 0x1

.field public static final sha256AndDigest:I = 0x0

.field public static final sha384AndDigest:I = 0x3


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/IssuerIdentifier$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/IssuerIdentifier;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

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
    if-eqz v0, :cond_4

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
    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lorg/bouncycastle/oer/its/HashedId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "unable to decode into known choice"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lorg/bouncycastle/oer/its/HashAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashAlgorithm;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    new-instance v0, Lorg/bouncycastle/oer/its/IssuerIdentifier;

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p0}, Lorg/bouncycastle/oer/its/HashedId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/HashedId;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->choice:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public isSelf()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->choice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/IssuerIdentifier;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
