.class public Lorg/bouncycastle/oer/its/CertificateId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/CertificateId$Builder;
    }
.end annotation


# static fields
.field public static final binaryId:I = 0x2

.field public static final extension:I = 0x4

.field public static final linkageData:I = 0x0

.field public static final name:I = 0x1

.field public static final none:I = 0x3


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/CertificateId;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/CertificateId;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/CertificateId$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/CertificateId$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/CertificateId$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateId;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/CertificateId;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/CertificateId;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown choice in CertificateId"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lorg/bouncycastle/oer/its/CertificateId;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_3
    :goto_0
    new-instance v1, Lorg/bouncycastle/oer/its/CertificateId;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4
    new-instance v1, Lorg/bouncycastle/oer/its/CertificateId;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Hostname;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Hostname;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_5
    new-instance v1, Lorg/bouncycastle/oer/its/CertificateId;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/LinkageData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/LinkageData;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/CertificateId;->choice:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/CertificateId;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/CertificateId;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/CertificateId;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
