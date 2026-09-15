.class Ljcifs/smb/Dfs$CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Dfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheEntry"
.end annotation


# instance fields
.field expiration:J

.field map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-wide p1, Ljcifs/smb/Dfs;->TTL:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    return-void
.end method
