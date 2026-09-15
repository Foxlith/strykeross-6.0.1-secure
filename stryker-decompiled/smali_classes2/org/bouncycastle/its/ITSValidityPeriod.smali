.class public Lorg/bouncycastle/its/ITSValidityPeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/ITSValidityPeriod$Builder;,
        Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    }
.end annotation


# instance fields
.field private final duration:I

.field private final startDate:J

.field private final timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;


# direct methods
.method public constructor <init>(JILorg/bouncycastle/its/ITSValidityPeriod$Unit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    iput p3, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:I

    iput-object p4, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ValidityPeriod;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ValidityPeriod;->getTime32()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->longValueExact()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ValidityPeriod;->getDuration()Lorg/bouncycastle/oer/its/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Duration;->getValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:I

    invoke-static {}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/Duration;->getTag()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method public static from(Ljava/util/Date;)Lorg/bouncycastle/its/ITSValidityPeriod$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;-><init>(Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public getStartDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/oer/its/ValidityPeriod;
    .locals 6

    invoke-static {}, Lorg/bouncycastle/oer/its/ValidityPeriod;->builder()Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-wide v2, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->setTime32(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/Duration;

    iget v2, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:I

    iget-object v3, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {v3}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->access$000(Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/oer/its/Duration;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->setDuration(Lorg/bouncycastle/oer/its/Duration;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->createValidityPeriod()Lorg/bouncycastle/oer/its/ValidityPeriod;

    move-result-object v0

    return-object v0
.end method
