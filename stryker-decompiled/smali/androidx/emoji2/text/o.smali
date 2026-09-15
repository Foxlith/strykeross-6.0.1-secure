.class public final Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    .line 2
    .line 3
    sget v1, Ld0/l;->a:I

    .line 4
    .line 5
    invoke-static {v0}, Ld0/k;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroidx/emoji2/text/l;->a()Landroidx/emoji2/text/l;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    invoke-static {}, Ld0/k;->b()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    sget v1, Ld0/l;->a:I

    .line 27
    .line 28
    invoke-static {}, Ld0/k;->b()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
