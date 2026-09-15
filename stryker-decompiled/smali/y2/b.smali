.class public final Ly2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:D

.field public final d:D

.field public final e:Ly2/a;

.field public f:J

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ly2/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ly2/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Ly2/b;->c:D

    iput-wide p5, p0, Ly2/b;->d:D

    if-nez p7, :cond_1

    sget-object p7, Ly2/a;->a:Ly2/a;

    :cond_1
    iput-object p7, p0, Ly2/b;->e:Ly2/a;

    const-wide/16 p1, 0x0

    cmp-long p1, p8, p1

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p8

    :cond_2
    iput-wide p8, p0, Ly2/b;->f:J

    iput-object p10, p0, Ly2/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ly2/b;
    .locals 13

    .line 1
    :try_start_0
    const-string v0, "cat"

    const-string v1, "LOOKUP"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly2/a;->valueOf(Ljava/lang/String;)Ly2/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :catch_0
    sget-object v0, Ly2/a;->a:Ly2/a;

    goto :goto_0

    :goto_1
    new-instance v0, Ly2/b;

    const-string v1, "bssid"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "ssid"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "lat"

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v1, "lon"

    invoke-virtual {p0, v1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {p0, v1, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v1, "note"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v9

    move-wide v9, v11

    move-object v11, p0

    invoke-direct/range {v1 .. v11}, Ly2/b;-><init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bssid"

    iget-object v2, p0, Ly2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Ly2/b;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "ssid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    iget-wide v2, p0, Ly2/b;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lon"

    iget-wide v2, p0, Ly2/b;->d:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Ly2/b;->e:Ly2/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cat"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    iget-wide v2, p0, Ly2/b;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Ly2/b;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "note"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method
