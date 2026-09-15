.class public Lorg/bouncycastle/oer/its/PsidGroupPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/PsidGroupPermissions$Builder;
    }
.end annotation


# instance fields
.field private final chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final eeType:Lorg/bouncycastle/oer/its/EndEntityType;

.field private final minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final subjectPermissions:Lorg/bouncycastle/oer/its/SubjectPermissions;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/SubjectPermissions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SubjectPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/SubjectPermissions;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object p1

    const-class v0, Lorg/bouncycastle/oer/its/EndEntityType;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/oer/its/EndEntityType;

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/EndEntityType;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/SubjectPermissions;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/EndEntityType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/SubjectPermissions;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/EndEntityType;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/PsidGroupPermissions$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/PsidGroupPermissions$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/PsidGroupPermissions$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PsidGroupPermissions;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/PsidGroupPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChainLengthRange()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getEeType()Lorg/bouncycastle/oer/its/EndEntityType;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/EndEntityType;

    return-object v0
.end method

.method public getMinChainLength()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSubjectPermissions()Lorg/bouncycastle/oer/its/SubjectPermissions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/SubjectPermissions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/SubjectPermissions;

    aput-object v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bouncycastle/oer/its/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/EndEntityType;

    invoke-static {v2}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
