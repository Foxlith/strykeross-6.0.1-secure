.class public Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
.super Lorg/bouncycastle/asn1/ASN1Integer;
.source "SourceFile"


# static fields
.field public static final challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

.field public static final encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    new-instance v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-void
.end method

.method public static valueOf(I)Lorg/bouncycastle/asn1/crmf/SubsequentMessage;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->encrCert:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Lorg/bouncycastle/asn1/crmf/SubsequentMessage;->challengeResp:Lorg/bouncycastle/asn1/crmf/SubsequentMessage;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "unknown value: "

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method
