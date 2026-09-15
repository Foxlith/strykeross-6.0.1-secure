.class public final Lu2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/Socket;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/io/BufferedReader;

.field public final d:Ljava/lang/String;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/b;->a:Ljava/net/Socket;

    iput-object p2, p0, Lu2/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lu2/b;->b:Ljava/io/InputStream;

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lu2/b;->c:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lu2/b;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    iput-boolean v1, p0, Lu2/b;->e:Z

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lu2/b;->a:Ljava/net/Socket;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lu2/b;->d:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "/tmp/stryker-"

    .line 19
    .line 20
    const-string v2, ".pid"

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "if [ -f "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " ]; then __g=$(cat "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, " 2>/dev/null); if [ -n \"$__g\" ]; then kill -TERM -$__g 2>/dev/null || kill -TERM $__g 2>/dev/null; sleep 1; kill -KILL -$__g 2>/dev/null || kill -KILL $__g 2>/dev/null; fi; fi; rm -f /tmp/stryker-"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ".sh "

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/Thread;

    .line 65
    .line 66
    new-instance v2, Landroidx/activity/b;

    .line 67
    .line 68
    const/16 v3, 0xe

    .line 69
    .line 70
    invoke-direct {v2, v0, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    const-string v0, "guest-killjob"

    .line 74
    .line 75
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method
