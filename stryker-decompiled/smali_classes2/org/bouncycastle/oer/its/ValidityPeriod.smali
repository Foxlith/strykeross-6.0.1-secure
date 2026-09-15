.class public Lorg/bouncycastle/oer/its/ValidityPeriod;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;
    }
.end annotation


# instance fields
.field private final duration:Lorg/bouncycastle/oer/its/Duration;

.field private final time32:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/Duration;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->time32:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->duration:Lorg/bouncycastle/oer/its/Duration;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ValidityPeriod;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ValidityPeriod;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->setTime32(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Duration;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->setDuration(Lorg/bouncycastle/oer/its/Duration;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->createValidityPeriod()Lorg/bouncycastle/oer/its/ValidityPeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDuration()Lorg/bouncycastle/oer/its/Duration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->duration:Lorg/bouncycastle/oer/its/Duration;

    return-object v0
.end method

.method public getTime32()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->time32:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->time32:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ValidityPeriod;->duration:Lorg/bouncycastle/oer/its/Duration;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
