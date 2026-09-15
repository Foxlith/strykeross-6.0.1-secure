.class public Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;
    }
.end annotation


# instance fields
.field private final content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

.field private final protocolVersion:Lorg/bouncycastle/oer/its/Uint8;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Uint8;Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Uint8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Uint8;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;-><init>(Lorg/bouncycastle/oer/its/Uint8;Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/bouncycastle/oer/its/Uint8;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->protocolVersion:Lorg/bouncycastle/oer/its/Uint8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/Ieee1609Dot2Data;->content:Lorg/bouncycastle/oer/its/Ieee1609Dot2Content;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
