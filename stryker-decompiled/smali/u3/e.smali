.class public final Lu3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/regex/Pattern;

.field public static volatile k:Lu3/e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu3/c;

.field public final c:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile g:J

.field public volatile h:Z

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "((\\w{2}:){5}\\w{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lu3/e;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0x4e20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lu3/e;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    new-instance v0, Lu2/e;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-direct {v0, v1}, Lu2/e;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lu3/e;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lu3/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lu3/e;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    iput-wide v2, p0, Lu3/e;->g:J

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lu3/e;->h:Z

    .line 46
    .line 47
    iput v1, p0, Lu3/e;->i:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lu3/e;->a:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v2, Lu3/c;

    .line 56
    .line 57
    const-string v3, "stryker_logs.db"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lu3/e;->b:Lu3/c;

    .line 67
    .line 68
    new-instance p1, Ljava/lang/Thread;

    .line 69
    .line 70
    new-instance v2, Lu3/b;

    .line 71
    .line 72
    invoke-direct {v2, p0, v1}, Lu3/b;-><init>(Lu3/e;I)V

    .line 73
    .line 74
    .line 75
    const-string v1, "log-writer"

    .line 76
    .line 77
    invoke-direct {p1, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static c(Landroid/content/Context;)Lu3/e;
    .locals 1

    .line 1
    sget-object v0, Lu3/e;->k:Lu3/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lu3/e;->d(Landroid/content/Context;)Lu3/e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lu3/e;
    .locals 2

    .line 1
    sget-object v0, Lu3/e;->k:Lu3/e;

    if-nez v0, :cond_1

    const-class v1, Lu3/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu3/e;->k:Lu3/e;

    if-nez v0, :cond_0

    new-instance v0, Lu3/e;

    invoke-direct {v0, p0}, Lu3/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu3/e;->k:Lu3/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "INSERT INTO log(ts,level,tool,msg) VALUES(?,?,?,?)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/d;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    iget-wide v3, v2, Lu3/d;->a:J

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    iget v3, v2, Lu3/d;->b:I

    int-to-long v3, v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    iget-object v4, v2, Lu3/d;->c:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    :goto_2
    iget-object v2, v2, Lu3/d;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    throw p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lu3/e;->j:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "XX:XX:XX:XX:XX:XX"

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "((\\w{2}:){5}\\w{2})"

    .line 23
    .line 24
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    :cond_1
    move-object v5, p3

    .line 29
    new-instance p3, Lu3/d;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    const-string p2, ""

    .line 38
    .line 39
    :cond_2
    move-object v4, p2

    .line 40
    move-object v0, p3

    .line 41
    move v3, p1

    .line 42
    invoke-direct/range {v0 .. v5}, Lu3/d;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lu3/e;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lu3/e;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    const-wide/16 v0, 0x1

    .line 60
    .line 61
    cmp-long p3, p1, v0

    .line 62
    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    const-wide/16 v0, 0x3e8

    .line 66
    .line 67
    rem-long v0, p1, v0

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    cmp-long p3, v0, v2

    .line 72
    .line 73
    if-nez p3, :cond_4

    .line 74
    .line 75
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "log queue full, dropped "

    .line 78
    .line 79
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " line(s)"

    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p2, "LogStore"

    .line 95
    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void
.end method

.method public final b(Lv1/t;)J
    .locals 8

    .line 1
    const-string v0, "SELECT COUNT(*) FROM log WHERE "

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lv1/t;->h(JJLjava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lu3/e;->b:Lu3/c;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v1
.end method

.method public final f()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu3/e;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iput-wide v0, p0, Lu3/e;->g:J

    invoke-virtual {p0}, Lu3/e;->j()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu3/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu3/e;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lu3/b;

    invoke-direct {v1, p0, v6}, Lu3/b;-><init>(Lu3/e;I)V

    sub-long/2addr v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lu3/e;->b:Lu3/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lu3/d;

    .line 40
    .line 41
    iget-object v5, v4, Lu3/d;->e:Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-static {v0, v1}, Lu3/e;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    add-int/2addr v3, v5

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    const-string v5, "DELETE FROM log"

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    const-string v5, "VACUUM"

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :catchall_0
    iget-object v4, v4, Lu3/d;->e:Ljava/util/concurrent/CountDownLatch;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {v0, v1}, Lu3/e;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr p1, v3

    .line 78
    iget v1, p0, Lu3/e;->i:I

    .line 79
    .line 80
    add-int/2addr v1, p1

    .line 81
    iput v1, p0, Lu3/e;->i:I

    .line 82
    .line 83
    const/16 p1, 0xfa0

    .line 84
    .line 85
    if-lt v1, p1, :cond_3

    .line 86
    .line 87
    iput v2, p0, Lu3/e;->i:I

    .line 88
    .line 89
    :try_start_1
    const-string p1, "SELECT MAX(_id) FROM log"

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-static {v0, p1, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    const-wide/32 v5, 0x30d40

    .line 97
    .line 98
    .line 99
    cmp-long p1, v3, v5

    .line 100
    .line 101
    if-lez p1, :cond_3

    .line 102
    .line 103
    const-string p1, "DELETE FROM log WHERE _id < ?"

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    sub-long/2addr v3, v5

    .line 109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    aput-object v3, v1, v2

    .line 114
    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    const-string v0, "LogStore"

    .line 121
    .line 122
    const-string v1, "trim failed"

    .line 123
    .line 124
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_1
    return-void
.end method

.method public final h(Lv1/t;J)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    move-wide v1, p2

    .line 10
    move-object v5, v6

    .line 11
    invoke-virtual/range {v0 .. v5}, Lv1/t;->h(JJLjava/util/ArrayList;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "SELECT _id,ts,level,tool,msg FROM log WHERE "

    .line 16
    .line 17
    const-string p3, " ORDER BY _id DESC LIMIT "

    .line 18
    .line 19
    invoke-static {p2, p1, p3}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    const/16 p3, 0xc8

    .line 25
    .line 26
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x0

    .line 38
    new-array p3, p2, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p3, p2}, Lu3/e;->i(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final i(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lu3/e;->b:Lu3/c;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lu3/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v1, ""

    :goto_1
    move-object v7, v1

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lu3/a;-><init>(JJILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_5

    :goto_3
    if-eqz p1, :cond_2

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    const-string p2, "LogStore"

    const-string v1, "query failed"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-eqz p3, :cond_3

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :catchall_3
    :cond_3
    return-object v0
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/e;->a:Landroid/content/Context;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zalexdev.stryker.LOG_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
