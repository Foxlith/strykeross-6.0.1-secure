.class public Lorg/bouncycastle/asn1/cmc/TaggedRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final CRM:I = 0x1

.field public static final ORM:I = 0x2

.field public static final TCR:I


# instance fields
.field private final tagNo:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/TaggedCertificationRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->tagNo:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_6

    .line 9
    .line 10
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 15
    .line 16
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 38
    .line 39
    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "unknown tag in getInstance(): "

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v1}, Ll1/e;->l(Lorg/bouncycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 65
    .line 66
    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 75
    .line 76
    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/cmc/TaggedCertificationRequest;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmc/TaggedCertificationRequest;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/bouncycastle/asn1/cmc/TaggedCertificationRequest;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    instance-of v0, p0, [B

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    :try_start_0
    check-cast p0, [B

    .line 89
    .line 90
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    .line 95
    .line 96
    .line 97
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object p0

    .line 99
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v0, "unknown encoding in getInstance()"

    .line 102
    .line 103
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v1, "unknown object in getInstance(): "

    .line 110
    .line 111
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_6
    const/4 p0, 0x0

    .line 120
    return-object p0
.end method


# virtual methods
.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->tagNo:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
