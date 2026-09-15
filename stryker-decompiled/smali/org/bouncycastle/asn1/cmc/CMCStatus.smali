.class public Lorg/bouncycastle/asn1/cmc/CMCStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field public static final confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private static range:Ljava/util/Map;

.field public static final success:Lorg/bouncycastle/asn1/cmc/CMCStatus;


# instance fields
.field private final value:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x3

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v3, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x4

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v3, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v4, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v6, 0x5

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v5, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x6

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v5, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v6, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v8, 0x7

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v6, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v8, v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v7, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v1, v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v1, v3, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v1, v4, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v1, v5, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    iget-object v1, v6, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p0, :cond_2

    .line 9
    .line 10
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "unknown object in getInstance(): "

    .line 28
    .line 29
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
