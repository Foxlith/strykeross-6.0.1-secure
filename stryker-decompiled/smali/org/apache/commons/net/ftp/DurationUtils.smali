.class Lorg/apache/commons/net/ftp/DurationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPositive(Ljava/time/Duration;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lf4/b;->w(Ljava/time/Duration;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lf4/b;->C(Ljava/time/Duration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toMillisInt(Ljava/time/Duration;)I
    .locals 4

    invoke-static {p0}, Lf4/b;->b(Ljava/time/Duration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int p0, v0

    goto :goto_1

    :cond_0
    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lf4/b;->l()Ljava/time/Duration;

    move-result-object p0

    :cond_0
    return-object p0
.end method
