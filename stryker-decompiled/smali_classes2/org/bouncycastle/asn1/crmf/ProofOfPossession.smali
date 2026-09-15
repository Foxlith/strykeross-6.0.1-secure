.class public Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final TYPE_KEY_AGREEMENT:I = 0x3

.field public static final TYPE_KEY_ENCIPHERMENT:I = 0x2

.field public static final TYPE_RA_VERIFIED:I = 0x0

.field public static final TYPE_SIGNING_KEY:I = 0x1


# instance fields
.field private obj:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/crmf/POPOPrivKey;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/crmf/POPOPrivKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/POPOPrivKey;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/ProofOfPossession;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    .line 13
    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Invalid object: "

    .line 23
    .line 24
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public getObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->tagNo:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
