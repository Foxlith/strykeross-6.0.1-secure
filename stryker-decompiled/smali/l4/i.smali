.class public final synthetic Ll4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll4/l;

.field public final synthetic b:Ljava/lang/Process;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ll4/l;Ljava/lang/Process;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/i;->a:Ll4/l;

    iput-object p2, p0, Ll4/i;->b:Ljava/lang/Process;

    iput-object p3, p0, Ll4/i;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Ll4/i;->d:Z

    iput-object p5, p0, Ll4/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Ll4/i;->a:Ll4/l;

    .line 2
    .line 3
    iget-object v1, p0, Ll4/i;->b:Ljava/lang/Process;

    .line 4
    .line 5
    iget-object v2, p0, Ll4/i;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-boolean v3, p0, Ll4/i;->d:Z

    .line 8
    .line 9
    iget-object v4, p0, Ll4/i;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 15
    .line 16
    new-instance v6, Ljava/io/InputStreamReader;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    :try_start_3
    iget-object v6, v0, Ll4/l;->f:Lu3/g;

    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    invoke-virtual {v6, v7, v1, v4}, Lu3/g;->f(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 53
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_1
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_2
    move-exception v1

    .line 62
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 66
    :catch_0
    :goto_3
    return-void
.end method
