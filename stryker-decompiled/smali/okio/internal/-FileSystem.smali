.class public final Lokio/internal/-FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp5/i;",
            "Lokio/FileSystem;",
            "Lx4/j;",
            "Lokio/Path;",
            "ZZ",
            "La5/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move-object/from16 v3, p6

    instance-of v4, v3, Lokio/internal/-FileSystem$collectRecursively$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lokio/internal/-FileSystem$collectRecursively$1;

    iget v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lokio/internal/-FileSystem$collectRecursively$1;

    invoke-direct {v4, v3}, Lokio/internal/-FileSystem$collectRecursively$1;-><init>(La5/e;)V

    :goto_0
    iget-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->result:Ljava/lang/Object;

    sget-object v5, Lb5/a;->a:Lb5/a;

    iget v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    sget-object v7, Lw4/h;->a:Lw4/h;

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    if-eq v6, v10, :cond_2

    if-ne v6, v9, :cond_1

    invoke-static {v3}, Lv1/f;->W(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lokio/Path;

    iget-object v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lx4/j;

    iget-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lokio/FileSystem;

    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lp5/i;

    :try_start_0
    invoke-static {v3}, Lv1/f;->W(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lx4/j;

    iget-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lokio/FileSystem;

    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lp5/i;

    invoke-static {v3}, Lv1/f;->W(Ljava/lang/Object;)V

    move-object v15, v2

    move v2, v0

    move v0, v1

    move-object v1, v15

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lv1/f;->W(Ljava/lang/Object;)V

    if-nez v2, :cond_5

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    move/from16 v11, p4

    iput-boolean v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iput-boolean v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iput v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    invoke-virtual {v0, v1, v4}, Lp5/i;->a(Ljava/lang/Object;La5/e;)V

    return-object v5

    :cond_5
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v11, p4

    move-object v12, v0

    move v0, v11

    move-object v11, v3

    :goto_1
    invoke-virtual {v11, v1}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_6

    sget-object v3, Lx4/o;->a:Lx4/o;

    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v8, v13

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    move-object v13, v1

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v6, v13}, Lx4/j;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "symlink cycle at "

    .line 1
    invoke-static {v2, v1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    invoke-static {v11, v13}, Lokio/internal/-FileSystem;->symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;

    move-result-object v14

    if-nez v14, :cond_c

    if-nez v0, :cond_9

    if-nez v8, :cond_d

    :cond_9
    invoke-virtual {v6, v13}, Lx4/j;->e(Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v6

    move-object v6, v1

    move v1, v0

    move v0, v2

    move-object v2, v3

    :goto_4
    move-object v3, v5

    :cond_a
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokio/Path;

    iput-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    iput-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$0:Z

    iput-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->Z$1:Z

    iput v10, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    move-object/from16 p0, v12

    move-object/from16 p1, v11

    move-object/from16 p2, v8

    move-object/from16 p3, v13

    move/from16 p4, v1

    move/from16 p5, v0

    move-object/from16 p6, v4

    invoke-static/range {p0 .. p6}, Lokio/internal/-FileSystem;->collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v13, v3, :cond_a

    return-object v3

    :cond_b
    invoke-virtual {v8}, Lx4/j;->j()Ljava/lang/Object;

    move v2, v0

    move-object v1, v6

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v8, v6

    :goto_5
    invoke-virtual {v8}, Lx4/j;->j()Ljava/lang/Object;

    throw v0

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move-object v13, v14

    goto :goto_2

    :cond_d
    move-object v3, v5

    :goto_6
    if-eqz v2, :cond_e

    const/4 v0, 0x0

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->L$4:Ljava/lang/Object;

    iput v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    invoke-virtual {v12, v1, v4}, Lp5/i;->a(Ljava/lang/Object;La5/e;)V

    if-ne v5, v3, :cond_e

    return-object v3

    :cond_e
    :goto_7
    return-object v7
.end method

.method public static final commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lokio/FileSystem;->sink(Lokio/Path;)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-static {p2, p0}, Lv1/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    move-object p0, p2

    move-object p2, v0

    :goto_2
    if-nez p0, :cond_2

    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_4

    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :cond_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_3
    if-eqz p1, :cond_3

    :try_start_7
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-static {p0, p1}, Lv1/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :cond_4
    :goto_5
    if-nez v0, :cond_5

    invoke-static {p0}, Li5/a;->m(Ljava/lang/Object;)V

    return-void

    :cond_5
    throw v0
.end method

.method public static final commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V
    .locals 5

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "dir"

    .line 7
    .line 8
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lx4/j;

    .line 12
    .line 13
    invoke-direct {v1}, Lx4/j;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v2, p1

    .line 17
    :goto_0
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    iget v3, v1, Lx4/j;->c:I

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lx4/j;->g(I)V

    .line 30
    .line 31
    .line 32
    iget v3, v1, Lx4/j;->a:I

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    iget-object v3, v1, Lx4/j;->b:[Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    array-length v3, v3

    .line 42
    nop

    .line 43
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    iput v3, v1, Lx4/j;->a:I

    .line 46
    .line 47
    iget-object v4, v1, Lx4/j;->b:[Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v2, v4, v3

    .line 50
    .line 51
    iget v3, v1, Lx4/j;->c:I

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    iput v3, v1, Lx4/j;->c:I

    .line 56
    .line 57
    invoke-virtual {v2}, Lokio/Path;->parent()Lokio/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1}, Lx4/j;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, " already exists."

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lokio/Path;

    .line 109
    .line 110
    invoke-virtual {p0, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    return-void
.end method

.method public static final commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fileOrDirectory"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Lokio/FileSystem;Lokio/Path;La5/e;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lp5/h;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p1}, Lc5/a;->create(Ljava/lang/Object;La5/e;)La5/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p1, Lp5/h;->d:La5/e;

    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lokio/Path;

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_1
    invoke-virtual {p0, v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public static final commonExists(Lokio/FileSystem;Lokio/Path;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lp5/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Z)",
            "Lp5/g;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dir"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lokio/internal/-FileSystem$commonListRecursively$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p1, p0, p2, v1}, Lokio/internal/-FileSystem$commonListRecursively$1;-><init>(Lokio/Path;Lokio/FileSystem;ZLa5/e;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroidx/core/view/h1;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, v0, p1}, Landroidx/core/view/h1;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static final commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 19
    .line 20
    const-string v0, "no such file: "

    .line 21
    .line 22
    invoke-static {v0, p1}, Ll1/e;->h(Ljava/lang/String;Lokio/Path;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static final symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lokio/Path;->resolve(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method
