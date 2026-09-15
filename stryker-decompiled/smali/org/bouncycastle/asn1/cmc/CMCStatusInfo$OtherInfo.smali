.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfo"
.end annotation


# instance fields
.field private final failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 9
    .line 10
    if-eqz v0, :cond_2

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
    new-instance p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 24
    .line 25
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    .line 38
    .line 39
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PendInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v1, "unknown object in getInstance(): "

    .line 50
    .line 51
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method


# virtual methods
.method public isFailInfo()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

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

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
