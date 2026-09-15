.class public Ljcifs/smb/TestLocking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field delay:J

.field ltime:J

.field numComplete:I

.field numIter:I

.field numThreads:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numThreads:I

    iput v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->delay:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->ltime:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljcifs/smb/TestLocking;

    invoke-direct {v0}, Ljcifs/smb/TestLocking;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/TestLocking;->ltime:J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_4

    aget-object v4, p0, v3

    const-string v5, "-t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljcifs/smb/TestLocking;->numThreads:I

    goto :goto_1

    :cond_1
    aget-object v4, p0, v3

    const-string v5, "-i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljcifs/smb/TestLocking;->numIter:I

    goto :goto_1

    :cond_2
    aget-object v4, p0, v3

    const-string v5, "-d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Ljcifs/smb/TestLocking;->delay:J

    goto :goto_1

    :cond_3
    aget-object v4, p0, v3

    iput-object v4, v0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_4
    iget p0, v0, Ljcifs/smb/TestLocking;->numThreads:I

    new-array p0, p0, [Ljava/lang/Thread;

    move v1, v2

    :goto_2
    iget v3, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v1, v3, :cond_5

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, p0, v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget v1, v0, Ljcifs/smb/TestLocking;->numComplete:I

    iget v3, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v1, v3, :cond_9

    :cond_6
    monitor-enter v0

    :try_start_0
    iget-wide v3, v0, Ljcifs/smb/TestLocking;->ltime:J

    iget-wide v5, v0, Ljcifs/smb/TestLocking;->delay:J

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    const-wide/16 v7, 0x2

    if-lez v1, :cond_7

    sub-long/2addr v3, v5

    goto :goto_4

    :cond_7
    move-wide v3, v7

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v1, v3, v7

    if-lez v1, :cond_8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "delay="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    if-gtz v1, :cond_6

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :goto_5
    iget v1, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-ge v2, v1, :cond_a

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Ljcifs/smb/TestLocking;->numIter:I

    if-ge v3, v4, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/TestLocking;->ltime:J

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd54fdf3b645a1dL    # 0.333

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_2

    :cond_0
    const-wide v6, 0x3fe55810624dd2f2L    # 0.667

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    goto :goto_3

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_4
    iget v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    goto :goto_6

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    iget v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    throw v0
.end method
