.class public Lorg/bouncycastle/oer/its/PsidSspRange;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
    }
.end annotation


# instance fields
.field private final psid:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final sspRange:Lorg/bouncycastle/oer/OEROptional;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/OEROptional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/SspRange;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/PsidSspRange$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/PsidSspRange$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PsidSspRange;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/oer/its/PsidSspRange;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/oer/its/PsidSspRange;

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSspRange;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PsidSspRange;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/OEROptional;)V

    return-object v0
.end method


# virtual methods
.method public getPsid()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSspRange()Lorg/bouncycastle/oer/OEROptional;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->psid:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PsidSspRange;->sspRange:Lorg/bouncycastle/oer/OEROptional;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
