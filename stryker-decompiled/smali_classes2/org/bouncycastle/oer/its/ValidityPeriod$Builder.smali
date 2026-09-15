.class public Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private duration:Lorg/bouncycastle/oer/its/Duration;

.field private time32:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createValidityPeriod()Lorg/bouncycastle/oer/its/ValidityPeriod;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/ValidityPeriod;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->time32:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->duration:Lorg/bouncycastle/oer/its/Duration;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ValidityPeriod;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/Duration;)V

    return-object v0
.end method

.method public setDuration(Lorg/bouncycastle/oer/its/Duration;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->duration:Lorg/bouncycastle/oer/its/Duration;

    return-object p0
.end method

.method public setTime32(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ValidityPeriod$Builder;->time32:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method
