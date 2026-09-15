.class public Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final rectangularRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/RectangularRegion;",
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
            "Lorg/bouncycastle/oer/its/RectangularRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;->rectangularRegions:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;

    const-class v1, Lorg/bouncycastle/oer/its/RectangularRegion;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/bouncycastle/oer/its/Utils;->fillList(Ljava/lang/Class;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getRectangularRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/RectangularRegion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;->rectangularRegions:Ljava/util/List;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;->rectangularRegions:Ljava/util/List;

    invoke-static {v0}, Lorg/bouncycastle/oer/its/Utils;->toSequence(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
