.class public final synthetic Ly/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ly/n;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Ly/n;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput p1, p0, Ly/n;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    iget v0, v1, Ly/n;->a:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;

    iget v2, v1, Ly/n;->b:I

    invoke-static {v0, v2}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->e(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;I)V

    return-void

    :pswitch_0
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    iget v2, v1, Ly/n;->b:I

    invoke-static {v0, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->f(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;I)V

    return-void

    :pswitch_1
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget v2, v1, Ly/n;->b:I

    .line 1
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_2
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    const-string v5, "Failed"

    const-string v6, "100"

    .line 2
    sget-object v7, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    iget-object v8, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    iget v11, v1, Ly/n;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v12

    const-string v13, "NucleiScanService"

    if-nez v12, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Site "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gone from prefs \u2014 skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    goto/16 :goto_20

    :cond_0
    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->o(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    new-instance v15, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v14, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v15, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " [INFO] nuclei scan: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Could not open log for "

    const-string v14, ": "

    .line 4
    invoke-static {v2, v11, v14}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "Running"

    .line 6
    iput-object v0, v12, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, v12, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {v4, v12}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->p(Lcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V

    :try_start_1
    iget-object v0, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a:Ll4/l;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const-string v14, "template library missing \u2014 downloading it first, this takes minutes"

    const-string v15, "INFO"

    const-string v2, "Finished"

    const-string v3, "OUT"

    const-string v1, "__STRYKER_NUCLEI_TEMPLATES__"

    move-object/from16 v17, v13

    const-string v13, "\n"

    if-eqz v0, :cond_a

    .line 8
    :try_start_3
    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a:Ll4/l;

    .line 9
    iget-object v2, v2, Ll4/l;->c:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Lu2/h;->t(Ljava/lang/String;)Lu2/b;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "guest"

    iput-object v2, v12, Lcom/zalexdev/stryker/custom/Site;->pid:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    :goto_1
    iget-object v2, v0, Lu2/b;->c:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v12, "__STRYKER_EXIT__"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_1

    const/16 v0, 0x10

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :goto_2
    move-object v3, v7

    const/4 v2, 0x0

    goto/16 :goto_21

    :catch_1
    move-exception v0

    :goto_3
    move-object v3, v7

    const/4 v2, 0x0

    :goto_4
    move-object v7, v6

    goto/16 :goto_1f

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 12
    invoke-virtual {v4, v11, v15, v14}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->p(Lcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V

    goto :goto_1

    :cond_3
    const-string v12, "\"percent\""

    .line 13
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "ERR"

    invoke-virtual {v4, v11, v12, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v11, v3, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->h(ILjava/lang/String;)V

    goto :goto_1

    :catch_3
    :cond_5
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lu2/b;->a()V

    :cond_6
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v4}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    goto/16 :goto_20

    :cond_7
    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_8
    move-object/from16 v0, v18

    goto :goto_8

    :cond_9
    iput-object v5, v1, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    iput-object v6, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v4, v1, v11, v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j(Lcom/zalexdev/stryker/custom/Site;IZ)V

    goto :goto_9

    :goto_8
    iput-object v0, v1, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    iput-object v6, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    const/4 v2, 0x1

    goto :goto_7

    :goto_9
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v7

    const/4 v2, 0x0

    goto/16 :goto_14

    :cond_a
    move-object v0, v2

    :try_start_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    move-object/from16 v18, v0

    const-string v0, "su"

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e(Ljava/lang/Process;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/zalexdev/stryker/custom/Site;->pid:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-object/from16 v19, v6

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    move-object/from16 v20, v5

    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v16, "/data/data/com.zalexdev.stryker/files/chroot_exec \'bash\'\n"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v21, v7

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v16, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v7, v16

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v3, v21

    goto/16 :goto_21

    :catch_4
    move-exception v0

    :goto_b
    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    goto/16 :goto_1f

    :catch_5
    move-exception v0

    goto :goto_b

    :cond_b
    const-string v7, "exit\nexit\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/stryker/terminal/component/session/b;

    const/4 v12, 0x7

    invoke-direct {v7, v4, v6, v11, v12}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nuclei-stderr-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_c
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v5, :cond_e

    :try_start_d
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 14
    invoke-virtual {v4, v11, v15, v14}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v5

    if-nez v5, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {v4, v5}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->p(Lcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V

    goto :goto_c

    :goto_d
    move-object v1, v0

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    goto/16 :goto_16

    .line 15
    :cond_d
    invoke-virtual {v4, v11, v3, v5}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->n(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11, v5}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->h(ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_e
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const-wide/16 v5, 0x7d0

    :try_start_f
    invoke-virtual {v0, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_6
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-nez v1, :cond_10

    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/b;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lu2/b;->a()V

    :cond_f
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v21

    :goto_e
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    move-object/from16 v3, v21

    if-eqz v0, :cond_12

    :try_start_12
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-lez v0, :cond_11

    move-object/from16 v0, v18

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    goto :goto_12

    :cond_11
    move-object/from16 v5, v20

    :try_start_13
    iput-object v5, v1, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object/from16 v7, v19

    :try_start_14
    iput-object v7, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v4, v1, v11, v6}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j(Lcom/zalexdev/stryker/custom/Site;IZ)V

    goto :goto_13

    :catchall_4
    move-exception v0

    goto/16 :goto_21

    :catch_7
    move-exception v0

    goto/16 :goto_1f

    :catch_8
    move-exception v0

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    :goto_10
    move-object/from16 v7, v19

    goto/16 :goto_1f

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    :goto_11
    move-object/from16 v7, v19

    move-object/from16 v5, v20

    goto/16 :goto_1f

    :catch_c
    move-exception v0

    goto :goto_11

    :cond_12
    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v0, v18

    :goto_12
    iput-object v0, v1, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    iput-object v7, v1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    const/4 v6, 0x1

    goto :goto_f

    :goto_13
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :goto_14
    if-eqz v2, :cond_13

    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :catchall_5
    :cond_13
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/b;

    if-eqz v0, :cond_14

    :goto_15
    invoke-virtual {v0}, Lu2/b;->a()V

    :cond_14
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    move-object v1, v0

    :goto_16
    :try_start_16
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object v6, v0

    :try_start_17
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catchall_8
    move-exception v0

    move-object v3, v7

    goto/16 :goto_21

    :catch_d
    move-exception v0

    :goto_18
    move-object v3, v7

    goto :goto_11

    :catch_e
    move-exception v0

    goto :goto_18

    :catch_f
    move-exception v0

    :goto_19
    move-object v3, v7

    goto :goto_10

    :catch_10
    move-exception v0

    goto :goto_19

    :catch_11
    move-exception v0

    :goto_1a
    move-object v3, v7

    goto/16 :goto_4

    :catch_12
    move-exception v0

    goto :goto_1a

    :catch_13
    move-exception v0

    :goto_1b
    move-object v3, v7

    :goto_1c
    move-object v7, v6

    const/4 v2, 0x0

    goto :goto_1f

    :catch_14
    move-exception v0

    goto :goto_1b

    :catchall_9
    move-exception v0

    goto/16 :goto_2

    :catch_15
    move-exception v0

    :goto_1d
    move-object v3, v7

    move-object/from16 v17, v13

    goto :goto_1c

    :catch_16
    move-exception v0

    goto :goto_1d

    :catch_17
    move-exception v0

    :goto_1e
    move-object v3, v7

    move-object/from16 v17, v13

    goto :goto_1c

    :catch_18
    move-exception v0

    goto :goto_1e

    :goto_1f
    :try_start_18
    const-string v1, "Scan crashed"

    move-object/from16 v6, v17

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v0

    if-eqz v0, :cond_15

    iput-object v5, v0, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    iput-object v7, v0, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {v4, v11, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v11, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j(Lcom/zalexdev/stryker/custom/Site;IZ)V

    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :cond_15
    if-eqz v2, :cond_16

    :try_start_19
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :catchall_a
    :cond_16
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/b;

    if-eqz v0, :cond_14

    goto/16 :goto_15

    :goto_20
    return-void

    :goto_21
    if-eqz v2, :cond_17

    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :catchall_b
    :cond_17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/b;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lu2/b;->a()V

    :cond_18
    invoke-virtual {v4, v11}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    throw v0

    :pswitch_3
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lg3/b;

    iget v2, v1, Ly/n;->b:I

    .line 16
    iget-object v3, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v3, Lr3/v;

    iget-boolean v3, v3, Lr3/v;->g:Z

    if-nez v3, :cond_19

    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v0, v2}, Lr3/v;->f(I)V

    :cond_19
    return-void

    :pswitch_4
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lr3/p;

    .line 17
    iget-object v0, v0, Lr3/p;->d:Lr3/t;

    iget v2, v1, Ly/n;->b:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    return-void

    :pswitch_5
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget v2, v1, Ly/n;->b:I

    .line 18
    iput v2, v0, Le0/j;->a:I

    .line 19
    iget-object v0, v0, Le0/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 20
    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->w:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v4, 0x1

    .line 21
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u25b6  Running "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " step"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_1a

    const-string v2, ""

    goto :goto_22

    :cond_1a
    const-string v2, "s"

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 23
    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_23

    :cond_1b
    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    iget v3, v1, Ly/n;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f130207

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    :cond_1c
    :goto_23
    return-void

    :pswitch_7
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 24
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d:Ll4/l;

    const-string v3, "searchsploit"

    invoke-virtual {v2, v3}, Ll4/l;->T(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->b:Landroidx/fragment/app/a0;

    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_24

    :cond_1d
    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->b:Landroidx/fragment/app/a0;

    new-instance v4, Lp2/n;

    iget v5, v1, Ly/n;->b:I

    const/4 v6, 0x0

    invoke-direct {v4, v0, v2, v5, v6}, Lp2/n;-><init>(Ljava/lang/Object;ZII)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_24
    return-void

    :pswitch_8
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v2, v1, Ly/n;->b:I

    .line 25
    invoke-static {v0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    return-void

    :pswitch_9
    iget-object v0, v1, Ly/n;->c:Ljava/lang/Object;

    check-cast v0, Ly/o;

    iget v2, v1, Ly/n;->b:I

    .line 26
    invoke-virtual {v0, v2}, Ly/o;->onFontRetrievalFailed(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
