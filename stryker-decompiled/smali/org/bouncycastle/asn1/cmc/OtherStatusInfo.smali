.class public Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

.field private final failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    move-object p0, v0

    .line 38
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    instance-of p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    new-instance p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 50
    .line 51
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 60
    .line 61
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PendInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_3
    instance-of v0, p0, [B

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    :try_start_0
    check-cast p0, [B

    .line 74
    .line 75
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "parsing error: "

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v1, "unknown object in getInstance(): "

    .line 105
    .line 106
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
.end method


# virtual methods
.method public isExtendedFailInfo()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailInfo()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingInfo()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
