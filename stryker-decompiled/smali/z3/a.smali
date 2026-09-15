.class public final synthetic Lz3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz3/d;


# direct methods
.method public synthetic constructor <init>(Lz3/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lz3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lz3/a;->b:Lz3/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lz3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lz3/a;->b:Lz3/d;

    .line 7
    .line 8
    iget-object v0, v0, Lz3/d;->e:Lz3/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Lz3/g;->a()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lz3/a;->b:Lz3/d;

    .line 15
    .line 16
    iget-object v1, v0, Lz3/d;->e:Lz3/g;

    .line 17
    .line 18
    invoke-virtual {v1}, Lz3/g;->m()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lz3/d;->f:Lz3/g;

    .line 22
    .line 23
    invoke-virtual {v0}, Lz3/g;->m()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lz3/a;->b:Lz3/d;

    .line 28
    .line 29
    iget-object v1, v0, Lz3/d;->f:Lz3/g;

    .line 30
    .line 31
    invoke-virtual {v1}, Lz3/g;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Lz3/d;->f:Lz3/g;

    .line 38
    .line 39
    invoke-virtual {v0}, Lz3/g;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    iget-object v1, v0, Lz3/g;->k:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v2, v0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 50
    .line 51
    const-string v3, "jobs -K\n"

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lz3/g;->e:Ljava/io/OutputStream;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v0

    .line 72
    :cond_1
    :goto_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
