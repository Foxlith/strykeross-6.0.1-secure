.class public Lorg/bouncycastle/oer/its/PsidSsp;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/PsidSsp$Builder;
    }
.end annotation


# instance fields
.field private final psid:Lorg/bouncycastle/oer/its/Psid;

.field private final ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/Psid;Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidSsp;->psid:Lorg/bouncycastle/oer/its/Psid;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PsidSsp;->ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/PsidSsp$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSsp$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/PsidSsp$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PsidSsp;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PsidSsp;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PsidSsp;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/oer/its/PsidSsp;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/Psid;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Psid;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    const-class v2, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    invoke-static {v2, p0}, Lorg/bouncycastle/oer/OEROptional;->getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/PsidSsp;-><init>(Lorg/bouncycastle/oer/its/Psid;Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;)V

    return-object v0
.end method


# virtual methods
.method public getPsid()Lorg/bouncycastle/oer/its/Psid;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidSsp;->psid:Lorg/bouncycastle/oer/its/Psid;

    return-object v0
.end method

.method public getSsp()Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidSsp;->ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidSsp;->psid:Lorg/bouncycastle/oer/its/Psid;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/oer/its/PsidSsp;->ssp:Lorg/bouncycastle/oer/its/ServiceSpecificPermissions;

    invoke-static {v1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
