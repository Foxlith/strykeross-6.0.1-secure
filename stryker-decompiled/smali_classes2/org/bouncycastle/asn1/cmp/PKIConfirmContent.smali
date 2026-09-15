.class public Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private val:Lorg/bouncycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Null;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    .line 13
    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Null;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;-><init>(Lorg/bouncycastle/asn1/ASN1Null;)V

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
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    .line 33
    .line 34
    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method
