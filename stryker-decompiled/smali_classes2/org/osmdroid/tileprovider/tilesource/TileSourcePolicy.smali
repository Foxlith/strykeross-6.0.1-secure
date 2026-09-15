.class public Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_NO_BULK:I = 0x1

.field public static final FLAG_NO_PREVENTIVE:I = 0x2

.field public static final FLAG_USER_AGENT_MEANINGFUL:I = 0x4

.field public static final FLAG_USER_AGENT_NORMALIZED:I = 0x8


# instance fields
.field private final mFlags:I

.field private final mMaxConcurrent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mMaxConcurrent:I

    iput p2, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    return-void
.end method

.method private acceptsMeaninglessUserAgent()Z
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public acceptsBulkDownload()Z
    .locals 2

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public acceptsPreventive()Z
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public acceptsUserAgent(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsMeaninglessUserAgent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "osmdroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 4

    .line 1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationOverrideDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, p3

    return-wide p1

    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getExpirationExtendedDuration()J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr p1, p3

    add-long/2addr p1, v0

    return-wide p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1

    :cond_2
    const-wide/32 p1, 0x240c8400

    add-long/2addr p3, p1

    add-long/2addr p3, v0

    return-wide p3
.end method

.method public computeExpirationTime(Ljava/net/HttpURLConnection;J)J
    .locals 2

    .line 2
    const-string v0, "Expires"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->computeExpirationTime(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p3

    invoke-interface {p3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    return-wide p1
.end method

.method public getHttpCacheControlDuration(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "max-age="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHttpExpiresTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getHttpHeaderDateTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapTileDownloader()Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxConcurrent()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mMaxConcurrent:I

    return v0
.end method

.method public normalizesUserAgent()Z
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
