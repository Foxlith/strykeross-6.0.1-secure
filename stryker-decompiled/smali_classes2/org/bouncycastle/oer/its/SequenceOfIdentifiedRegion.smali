.class public Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final identifiedRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/IdentifiedRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/IdentifiedRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;->identifiedRegions:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;

    const-class v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/bouncycastle/oer/its/Utils;->fillList(Ljava/lang/Class;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getIdentifiedRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/IdentifiedRegion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;->identifiedRegions:Ljava/util/List;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;->identifiedRegions:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
