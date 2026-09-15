.class public final Lf/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lf/u0;


# instance fields
.field public a:J

.field public b:J

.field public c:I


# direct methods
.method public static c(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-le v5, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v0

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    const/16 v4, 0xff

    if-le v3, v4, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    return v0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public static d(ILjava/lang/String;)Lf/u0;
    .locals 6

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0x18

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x20

    .line 6
    .line 7
    if-le p0, v0, :cond_1

    .line 8
    .line 9
    move p0, v0

    .line 10
    :cond_1
    invoke-static {p1}, Lf/u0;->g(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    rsub-int/lit8 p1, p0, 0x20

    .line 25
    .line 26
    shl-long v4, v2, p1

    .line 27
    .line 28
    and-long/2addr v4, v2

    .line 29
    :goto_0
    and-long/2addr v0, v4

    .line 30
    not-long v4, v4

    .line 31
    and-long/2addr v2, v4

    .line 32
    or-long/2addr v2, v0

    .line 33
    new-instance p1, Lf/u0;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-wide v0, p1, Lf/u0;->a:J

    .line 39
    .line 40
    iput-wide v2, p1, Lf/u0;->b:J

    .line 41
    .line 42
    iput p0, p1, Lf/u0;->c:I

    .line 43
    .line 44
    return-object p1
.end method

.method public static f(J)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x18

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    shr-long v5, p0, v2

    and-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x8

    shr-long v5, p0, v5

    and-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    and-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%d.%d.%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)J
    .locals 9

    .line 1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    array-length v5, p0

    if-ge v2, v5, :cond_0

    aget-object v5, p0, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_0
    move-wide v5, v0

    :goto_1
    const/16 v7, 0x8

    shl-long/2addr v3, v7

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lf/u0;->b:J

    iget-wide v2, p0, Lf/u0;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide/16 v6, 0x2

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    :goto_0
    int-to-long v0, p1

    add-long/2addr v2, v0

    goto :goto_1

    :cond_0
    add-long/2addr v2, v4

    goto :goto_0

    :goto_1
    invoke-static {v2, v3}, Lf/u0;->f(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(DDJ)V
    .locals 15

    .line 1
    move-object v0, p0

    const-wide v1, 0xdc6d62da00L

    sub-long v3, p5, v1

    long-to-float v3, v3

    const v4, 0x4ca4cb80    # 8.64E7f

    div-float/2addr v3, v4

    const v4, 0x3c8ceb25

    mul-float/2addr v4, v3

    const v5, 0x40c7ae92

    add-float/2addr v4, v5

    float-to-double v5, v4

    const-wide v7, 0x3fa11c5fc0000000L    # 0.03341960161924362

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v11, 0x3f36e05b00000000L    # 3.4906598739326E-4

    mul-double/2addr v7, v11

    add-double/2addr v7, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide v11, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    mul-double/2addr v9, v11

    add-double/2addr v9, v7

    const-wide v7, 0x3ffcbed85e1ce332L    # 1.796593063

    add-double/2addr v9, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v9, v7

    move-wide/from16 v7, p3

    neg-double v7, v7

    const-wide v11, 0x4076800000000000L    # 360.0

    div-double/2addr v7, v11

    const v4, 0x3a6bedfa    # 9.0E-4f

    sub-float/2addr v3, v4

    float-to-double v11, v3

    sub-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-float v3, v11

    add-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v7

    const-wide v7, 0x3f75b573eab367a1L    # 0.0053

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide v7, -0x4083bcd35a858794L    # -0.0069

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    const-wide v7, 0x3f91df46a0000000L    # 0.01745329238474369

    mul-double v7, v7, p1

    const-wide v9, -0x4045311600000000L    # -0.10471975803375244

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    sub-double/2addr v9, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    div-double/2addr v9, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v9, v5

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    if-ltz v5, :cond_0

    iput v6, v0, Lf/u0;->c:I

    :goto_0
    iput-wide v7, v0, Lf/u0;->a:J

    iput-wide v7, v0, Lf/u0;->b:J

    return-void

    :cond_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpg-double v5, v9, v11

    const/4 v11, 0x0

    if-gtz v5, :cond_1

    iput v11, v0, Lf/u0;->c:I

    goto :goto_0

    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v9

    double-to-float v5, v7

    float-to-double v7, v5

    add-double v9, v3, v7

    const-wide v12, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    add-long/2addr v9, v1

    iput-wide v9, v0, Lf/u0;->a:J

    sub-double/2addr v3, v7

    mul-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, v0, Lf/u0;->b:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_2

    iget-wide v1, v0, Lf/u0;->a:J

    cmp-long v1, v1, p5

    if-lez v1, :cond_2

    iput v11, v0, Lf/u0;->c:I

    goto :goto_1

    :cond_2
    iput v6, v0, Lf/u0;->c:I

    :goto_1
    return-void
.end method

.method public final e()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lf/u0;->b:J

    iget-wide v2, p0, Lf/u0;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2000

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    long-to-int v0, v0

    return v0
.end method
