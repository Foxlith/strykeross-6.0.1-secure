.class public Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;
    }
.end annotation


# instance fields
.field private final recipientInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/RecipientInfo;",
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
            "Lorg/bouncycastle/oer/its/RecipientInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;->recipientInfos:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/RecipientInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;

    invoke-direct {p0}, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;->setRecipientInfos(Ljava/util/List;)Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo$Builder;->createSequenceOfRecipientInfo()Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRecipientInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/oer/its/RecipientInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/oer/its/SequenceOfRecipientInfo;->recipientInfos:Ljava/util/List;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
