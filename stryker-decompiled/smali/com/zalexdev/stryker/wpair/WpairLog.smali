.class public final Lcom/zalexdev/stryker/wpair/WpairLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_UPDATED:Ljava/lang/String; = "com.zalexdev.stryker.WPAIR_LOG_UPDATED"

.field private static final DIR_NAME:Ljava/lang/String; = "wpair-logs"

.field private static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final LOG_FILENAME:Ljava/lang/String; = "wpair.log"

.field private static currentFile:Ljava/io/File;

.field private static writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/WpairLog;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static broadcast(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zalexdev.stryker.WPAIR_LOG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static closeWriterLocked()V
    .locals 1

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    :cond_0
    return-void
.end method

.method private static ensureWriterLocked(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairLog;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->currentFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zalexdev/stryker/wpair/WpairLog;->closeWriterLocked()V

    sput-object p0, Lcom/zalexdev/stryker/wpair/WpairLog;->currentFile:Ljava/io/File;

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    return-void
.end method

.method public static info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "INFO"

    invoke-static {p0, p1, v0, p2}, Lcom/zalexdev/stryker/wpair/WpairLog;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "wpair-logs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "wpair.log"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private static teeToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "["

    :try_start_0
    invoke-static {p0}, Lu3/e;->c(Landroid/content/Context;)Lu3/e;

    move-result-object p0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ERR"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    const-string v1, "wpair"

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {p0, p2, v1, p3}, Lu3/e;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static truncate(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/zalexdev/stryker/wpair/WpairLog;->closeWriterLocked()V

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairLog;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairLog;->broadcast(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method private static write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairLog;->ensureWriterLocked(Landroid/content/Context;)V

    const-string v1, "HH:mm:ss"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    rem-long/2addr v2, v4

    if-nez p1, :cond_0

    const-string v4, "-"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v4, p1

    :goto_0
    sget-object v5, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    const-string v6, "%s.%03d [%s] [%s] %s%n"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    aput-object p2, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object p3, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    sget-object v1, Lcom/zalexdev/stryker/wpair/WpairLog;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/WpairLog;->broadcast(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    sget-object p1, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :catch_0
    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairLog;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    :goto_3
    invoke-static {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/WpairLog;->teeToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
