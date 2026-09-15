.class public Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/PsidSspRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private psid:Lorg/bouncycastle/asn1/ASN1Integer;

.field private sspRange:Lorg/bouncycastle/oer/OEROptional;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    return-void
.end method


# virtual methods
.method public createPsidSspRange()Lorg/bouncycastle/oer/its/PsidSspRange;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSspRange;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/PsidSspRange;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/OEROptional;)V

    return-object v0
.end method

.method public setPsid(J)Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setPsid(Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public setSspRange(Lorg/bouncycastle/oer/its/SspRange;)Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    return-object p0
.end method
