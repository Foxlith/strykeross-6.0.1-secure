.class public Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    }
.end annotation


# static fields
.field public static final bitmapSsp:I = 0x2

.field public static final extension:I = 0x1

.field public static final opaque:I


# instance fields
.field private final choice:I

.field private final object:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

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
    if-eqz v0, :cond_2

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
    new-instance v0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "unknown choice "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    new-instance v0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->choice:I

    return v0
.end method

.method public getObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;->object:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
