.class public Ljcifs/smb/Dfs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Dfs$CacheEntry;
    }
.end annotation


# static fields
.field static final DISABLED:Z

.field protected static FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

.field static final TTL:J

.field static log:Ljcifs/util/LogStream;

.field static final strictView:Z


# instance fields
.field protected _domains:Ljcifs/smb/Dfs$CacheEntry;

.field protected referrals:Ljcifs/smb/Dfs$CacheEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Ljcifs/smb/Dfs;->TTL:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    sput-object v0, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    return-void
.end method


# virtual methods
.method public getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;
    .locals 6

    const-string v0, "\\"

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p2, p1, v1}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    move-object p2, p1

    :goto_0
    :try_start_1
    iget-object v0, p2, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-static {v0, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object p2, p2, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_4
    :goto_1
    return-object v2
.end method

.method public getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 3

    const-string v0, "\\"

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p1, p5, p2, p3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    return-object p1

    :goto_1
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x4

    if-lt p2, p3, :cond_2

    sget-object p2, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    sget-boolean p2, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljcifs/smb/SmbAuthException;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_4
    :goto_2
    return-object v2
.end method

.method public getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;
    .locals 8

    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v4, v0, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iput-object v1, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    :cond_1
    iget-object v0, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_2

    iget-object p1, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    return-object p1

    :cond_2
    :try_start_0
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    sget-wide v4, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    const-string v4, ""

    invoke-virtual {v0, p1, v4, v2}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v0, p1

    :cond_3
    iget-object v2, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, p1, :cond_3

    iput-object v3, p0, Ljcifs/smb/Dfs;->_domains:Ljcifs/smb/Dfs$CacheEntry;

    iget-object p1, v3, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    sget-object v0, Ljcifs/smb/Dfs;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    sget-boolean v0, Ljcifs/smb/Dfs;->strictView:Z

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljcifs/smb/SmbAuthException;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    check-cast p1, Ljcifs/smb/SmbAuthException;

    throw p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public declared-synchronized insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Ljcifs/smb/Dfs;->DISABLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-le v4, v1, :cond_1

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p2, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-wide v2, v2, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_3
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v0, :cond_4

    new-instance v0, Ljcifs/smb/Dfs$CacheEntry;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_4
    iget-object v0, p0, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v0, v0, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1

    invoke-virtual {p0, p2}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public declared-synchronized resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-boolean v1, Ljcifs/smb/Dfs;->DISABLED:Z

    const/4 v11, 0x0

    if-nez v1, :cond_b

    const-string v1, "IPC$"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v7, v8}, Ljcifs/smb/Dfs;->getTrustedDomains(Ljcifs/smb/NtlmPasswordAuthentication;)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v12, 0x0

    if-eqz v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/HashMap;

    if-eqz v15, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v1, :cond_1

    iget-wide v2, v1, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v2, v9, v2

    if-lez v2, :cond_1

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    move-object v5, v1

    :goto_0
    if-nez v5, :cond_7

    invoke-virtual {v7, v14, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_2

    monitor-exit p0

    return-object v11

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v14

    move-object v4, v6

    move-object v11, v5

    move-object/from16 v5, p3

    move-object/from16 p1, v6

    move-object/from16 v6, p4

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v5, Ljcifs/smb/Dfs$CacheEntry;

    invoke-direct {v5, v12, v13}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    move-object v3, v1

    :cond_3
    if-nez v0, :cond_4

    iget-object v4, v5, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    iput-object v4, v3, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    const-string v4, "\\"

    iput-object v4, v3, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    :cond_4
    iget v4, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    sub-int/2addr v4, v2

    iput v4, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v3, v1, :cond_3

    iget-object v2, v1, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, v5, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v6, p1

    invoke-virtual {v15, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v5

    goto :goto_2

    :cond_6
    move-object/from16 v6, p1

    if-nez v0, :cond_9

    sget-object v2, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    invoke-virtual {v15, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object v11, v5

    sget-object v1, Ljcifs/smb/Dfs;->FALSE_ENTRY:Ljcifs/smb/Dfs$CacheEntry;

    if-ne v11, v1, :cond_8

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_1
    const/16 v16, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    :goto_2
    if-eqz v11, :cond_f

    const-string v15, "\\"

    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;

    if-eqz v1, :cond_a

    iget-wide v2, v1, Ljcifs/smb/DfsReferral;->expiration:J

    cmp-long v2, v9, v2

    if-lez v2, :cond_a

    iget-object v1, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_a
    if-nez v1, :cond_f

    if-nez v16, :cond_d

    invoke-virtual {v7, v14, v8}, Ljcifs/smb/Dfs;->getDc(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbTransport;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_c

    :cond_b
    :goto_3
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_c
    move-object v2, v1

    goto :goto_4

    :cond_d
    move-object/from16 v2, v16

    :goto_4
    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v6

    move-object/from16 v5, p3

    move-object/from16 v16, v6

    move-object/from16 v6, p4

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/Dfs;->getReferral(Ljcifs/smb/SmbTransport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iput-object v15, v1, Ljcifs/smb/DfsReferral;->link:Ljava/lang/String;

    iget-object v2, v11, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_5
    move-object/from16 v2, v16

    goto :goto_7

    :cond_f
    move-object/from16 v16, v6

    goto :goto_5

    :cond_10
    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v14, p1

    goto :goto_6

    :goto_7
    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    iget-object v3, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-eqz v3, :cond_12

    iget-wide v3, v3, Ljcifs/smb/Dfs$CacheEntry;->expiration:J

    cmp-long v3, v9, v3

    if-lez v3, :cond_12

    const/4 v3, 0x0

    iput-object v3, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_12
    iget-object v3, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    if-nez v3, :cond_13

    new-instance v3, Ljcifs/smb/Dfs$CacheEntry;

    invoke-direct {v3, v12, v13}, Ljcifs/smb/Dfs$CacheEntry;-><init>(J)V

    iput-object v3, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v2, v2, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_9

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_15

    :goto_9
    iget-object v1, v7, Ljcifs/smb/Dfs;->referrals:Ljcifs/smb/Dfs$CacheEntry;

    iget-object v1, v1, Ljcifs/smb/Dfs$CacheEntry;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/DfsReferral;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_17
    monitor-exit p0

    return-object v1

    :goto_a
    monitor-exit p0

    throw v0
.end method
