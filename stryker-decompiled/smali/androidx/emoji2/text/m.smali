.class public final synthetic Landroidx/emoji2/text/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Landroidx/emoji2/text/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/emoji2/text/m;->a:I

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ln3/i;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/Device;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 1
    iget-object v0, v0, Ln3/i;->t:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lr3/v;->d(Lcom/zalexdev/stryker/custom/Device;I)V

    return-void

    :pswitch_0
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ln3/i;

    iget-object v0, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    const-wide/16 v7, 0x12c

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Ln3/i;->t:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    iput-object v4, v0, Lr3/v;->h:Ljava/util/ArrayList;

    new-instance v3, Lt3/a;

    invoke-direct {v3, v0, v6}, Lt3/a;-><init>(Lr3/v;I)V

    iget-object v0, v2, Ll4/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ls3/z;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_1
    iget-boolean v4, v0, Ls3/b;->c:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ls3/z;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ls3/z;->m(Ljava/lang/String;)Ls3/p;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Ls3/z;->k(Ls3/p;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lr3/t;

    iget-object v0, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/zalexdev/stryker/custom/Exploit;

    iget-object v0, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;

    .line 6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v10}, Lcom/zalexdev/stryker/custom/Exploit;->getRequireArgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v12, v8, Lr3/t;->b:Landroid/app/Activity;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    new-instance v13, Lj2/b;

    const/16 v7, 0x9

    move-object v2, v13

    move-object v3, v8

    move-object v4, v10

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    aget-object v0, v11, v9

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lw2/h;

    const/16 v2, 0xf

    invoke-direct {v0, v8, v10, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/install/InstallService;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Process;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 8
    sget v4, Lcom/zalexdev/stryker/install/InstallService;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 10
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[E] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/zalexdev/stryker/install/InstallService;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :cond_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_8
    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hydra/HydraInstall;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lo3/a;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ln3/o;

    .line 11
    iget-object v4, v0, Lcom/zalexdev/stryker/hydra/HydraInstall;->q:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/p;

    if-nez v2, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/hydra/HydraInstall;->d(Ln3/p;Ln3/o;)V

    :goto_9
    return-void

    :pswitch_5
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hydra/HydraInstall;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 12
    iget-object v4, v0, Lcom/zalexdev/stryker/hydra/HydraInstall;->p:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/hydra/HydraInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/hydra/HydraInstall;->p:Ln2/c;

    .line 13
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .line 15
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :pswitch_6
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ln3/l;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln3/k;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 16
    iget-object v0, v0, Ln3/l;->c:Ln3/f;

    invoke-virtual {v0, v2, v3}, Ln3/f;->a(Ln3/k;Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 17
    sget-object v4, Ln3/h;->a:[Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    array-length v4, v2

    if-lez v4, :cond_8

    aget-object v4, v2, v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    aget-object v0, v2, v9

    invoke-virtual {v3, v0, v9}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_8
    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lg3/q;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    .line 19
    iget-object v0, v0, Le0/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u26a0 line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lg3/q;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 21
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 22
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 23
    iget v2, v2, Lg3/q;->a:I

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->setErrorLine(I)V

    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lg3/q;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 24
    iget-object v0, v0, Le0/j;->b:Ljava/lang/Object;

    if-nez v3, :cond_9

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 25
    iget v2, v2, Lg3/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1302c4

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 26
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 27
    iget v2, v2, Lg3/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f1302c3

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 28
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1302c5

    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    :goto_a
    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Le3/b;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 30
    iget-object v2, v2, Le3/b;->j:Le3/a;

    .line 31
    new-instance v4, Ld3/d;

    sget-object v5, Lh3/a;->d:Lh3/a;

    invoke-direct {v4, v5, v3, v9, v2}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 32
    invoke-virtual {v0, v4}, Le0/j;->b(Ld3/d;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Process;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lg3/b;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, [Ld3/a;

    .line 33
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_b
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    aget-object v5, v3, v9

    if-eqz v5, :cond_a

    iget-object v5, v5, Ld3/a;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_d

    :cond_a
    :goto_c
    invoke-virtual {v2, v0}, Lg3/b;->h(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :cond_b
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_f

    :goto_d
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    :goto_f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lb3/g;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 34
    sget-object v6, Lb3/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "curl -s -X POST -F \"email="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" -F \"file=@/sdcard/Stryker/captured/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" https://api.onlinehashcrack.com"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lb3/g;->d:Ll4/l;

    invoke-virtual {v5, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v5, 0x7d

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    sget-object v6, Lb3/e;->c:Lb3/e;

    sget-object v7, Lb3/e;->a:Lb3/e;

    sget-object v10, Lb3/e;->b:Lb3/e;

    const-string v11, "already"

    const-string v12, "success"

    const-string v13, ""

    if-ltz v3, :cond_f

    if-le v5, v3, :cond_f

    :try_start_d
    new-instance v14, Lorg/json/JSONObject;

    add-int/2addr v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v14, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v12, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    new-instance v8, Lw5/h;

    if-eqz v5, :cond_d

    move-object v5, v10

    goto :goto_11

    :cond_d
    move-object v5, v7

    :goto_11
    invoke-direct {v8, v5, v3}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_e
    new-instance v8, Lw5/h;

    invoke-direct {v8, v6, v3}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_13

    :catch_4
    :cond_f
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v8, Lw5/h;

    invoke-direct {v8, v10, v13}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_10
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "added"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    new-instance v8, Lw5/h;

    invoke-direct {v8, v6, v13}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_12
    :goto_12
    new-instance v8, Lw5/h;

    invoke-direct {v8, v7, v13}, Lw5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :goto_13
    new-instance v2, Lw2/h;

    invoke-direct {v2, v0, v8, v4}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v0, Lb3/g;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/geomac/GeoMac;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 38
    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    if-eqz v4, :cond_15

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_14

    :cond_13
    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->k:Landroid/widget/TextView;

    const v3, 0x7f130213

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    const v2, 0x7f1304ba

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_14

    :cond_14
    new-instance v4, Ly2/b;

    const-string v12, ""

    aget-wide v13, v2, v9

    aget-wide v15, v2, v8

    sget-object v17, Ly2/a;->a:Ly2/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v10, v4

    move-object v11, v3

    invoke-direct/range {v10 .. v20}, Ly2/b;-><init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V

    iget-object v5, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    invoke-virtual {v5, v4}, Lz2/a;->f(Ly2/b;)V

    invoke-virtual {v0}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->g:Lorg/osmdroid/api/IMapController;

    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    aget-wide v6, v2, v9

    aget-wide v8, v2, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v4, v5}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->g:Lorg/osmdroid/api/IMapController;

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    invoke-interface {v2, v4, v5}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->k:Landroid/widget/TextView;

    const v4, 0x7f130210

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_14
    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lu2/h;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Process;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Lu2/g;

    .line 39
    iget-object v0, v0, Lu2/h;->a:Landroid/content/Context;

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v5, "boot.log"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :try_start_f
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :cond_16
    :goto_15
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    if-eqz v3, :cond_16

    invoke-interface {v3, v0}, Lu2/g;->r(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object v3, v0

    goto :goto_16

    :cond_17
    :try_start_12
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v2, :cond_19

    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    goto :goto_1c

    :catchall_6
    move-exception v0

    move-object v3, v0

    goto :goto_1a

    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_18

    :goto_16
    :try_start_15
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_17

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_16
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :goto_18
    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_19

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_18
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :goto_1a
    if-eqz v2, :cond_18

    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    goto :goto_1b

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_1a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_1b
    throw v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    :catch_5
    :cond_19
    :goto_1c
    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lu2/l;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lv1/h;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Process;

    if-eqz v0, :cond_1a

    .line 42
    :try_start_1b
    invoke-virtual {v0}, Lu2/l;->e()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :catchall_b
    :cond_1a
    if-eqz v2, :cond_1b

    .line 43
    :try_start_1c
    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    :try_start_1d
    const-string v0, "system_powerdown"

    invoke-virtual {v2, v5, v0}, Lv1/h;->j(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :try_start_1e
    monitor-exit v2

    goto :goto_1d

    :catchall_c
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :catchall_d
    :cond_1b
    :goto_1d
    if-eqz v2, :cond_1c

    .line 44
    :try_start_1f
    invoke-virtual {v2}, Lv1/h;->f()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :catchall_e
    :cond_1c
    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const-wide/16 v4, 0x9c4

    .line 45
    :try_start_20
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_6

    .line 46
    :catch_6
    invoke-static {v3}, Lu2/h;->l(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_1e
    const-wide/16 v4, 0x5dc

    .line 47
    :try_start_21
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_7

    .line 48
    :catch_7
    invoke-static {v3}, Lu2/h;->l(Ljava/lang/Process;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v3}, Lu2/h;->g(Ljava/lang/Process;)V

    :cond_1f
    :goto_1e
    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/coremanger/CoreManager;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lr0/b;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 49
    iget-object v4, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->a:Ll4/l;

    iget-object v2, v2, Lr0/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Uninstalling tool: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Ll4/l;->f:Lu3/g;

    invoke-virtual {v6, v8, v5}, Lu3/g;->e(ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "hydra"

    const-string v7, "nuclei"

    const-string v10, "cameradar"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v11, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_1f

    :sswitch_0
    const-string v12, "metasploit"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    goto :goto_1f

    :cond_20
    const/4 v11, 0x4

    goto :goto_1f

    :sswitch_1
    const-string v12, "searchsploit"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    goto :goto_1f

    :cond_21
    const/4 v11, 0x3

    goto :goto_1f

    :sswitch_2
    const-string v12, "hydra"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    goto :goto_1f

    :cond_22
    const/4 v11, 0x2

    goto :goto_1f

    :sswitch_3
    const-string v12, "cameradar"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    goto :goto_1f

    :cond_23
    const/4 v11, 0x1

    goto :goto_1f

    :sswitch_4
    const-string v12, "nuclei"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    goto :goto_1f

    :cond_24
    const/4 v11, 0x0

    :goto_1f
    packed-switch v11, :pswitch_data_1

    goto :goto_22

    :pswitch_11
    const-string v5, "/opt/metasploit-framework /opt/msfpc /usr/local/bin/msfconsole /usr/local/bin/msfvenom /usr/local/bin/msfdb /usr/local/bin/msfd /usr/local/bin/msfrpc /usr/local/bin/msfpc"

    invoke-virtual {v4, v5}, Ll4/l;->N(Ljava/lang/String;)V

    const-string v5, "snap remove metasploit-framework >/dev/null 2>&1 || true"

    invoke-virtual {v4, v5}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    const-string v5, "msf"

    :goto_20
    invoke-virtual {v4, v5, v9}, Ll4/l;->b0(Ljava/lang/String;Z)V

    goto :goto_21

    :pswitch_12
    const-string v5, "/opt/exploitdb /usr/local/bin/searchsploit"

    invoke-virtual {v4, v5}, Ll4/l;->N(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    move-result-object v10

    const-string v11, "; "

    invoke-static {v11, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 purge -y hydra; apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 autoremove -y"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    const-string v7, "/usr/local/bin/hydra"

    invoke-virtual {v4, v7}, Ll4/l;->N(Ljava/lang/String;)V

    goto :goto_20

    :pswitch_14
    const-string v5, "/usr/bin/cameradar /usr/local/bin/cameradar /usr/bin/radar /usr/local/bin/radar"

    invoke-virtual {v4, v5}, Ll4/l;->N(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v9}, Ll4/l;->b0(Ljava/lang/String;Z)V

    goto :goto_21

    :pswitch_15
    const-string v5, "/usr/bin/nuclei /usr/local/bin/nuclei /root/go/bin/nuclei"

    invoke-virtual {v4, v5}, Ll4/l;->N(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v9}, Ll4/l;->b0(Ljava/lang/String;Z)V

    :goto_21
    const-string v5, "Deleting module: "

    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lu3/g;->e(ILjava/lang/String;)V

    const-string v5, "installed_modules"

    invoke-virtual {v4, v5}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6, v5}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v5, "install_status_"

    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ll4/l;->g0(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ll4/l;->T(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v9, v2, 0x1

    .line 53
    :goto_22
    new-instance v2, Ls2/j;

    invoke-direct {v2, v0, v9, v3, v8}, Ls2/j;-><init>(Lcom/zalexdev/stryker/coremanger/CoreManager;ZLjava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->j(Ljava/lang/Runnable;)V

    return-void

    :pswitch_16
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/coremanger/CoreManager;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    .line 54
    iget-object v4, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->B:[Lr0/b;

    array-length v5, v4

    move v6, v9

    :goto_23
    if-ge v6, v5, :cond_28

    aget-object v10, v4, v6

    iget-object v11, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->z:Ljava/util/LinkedHashMap;

    iget-object v12, v10, Lr0/b;->c:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls2/l;

    if-nez v11, :cond_25

    goto :goto_25

    :cond_25
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v13, v10, Lr0/b;->c:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    iget-object v10, v10, Lr0/b;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v13, "running"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 55
    iget-object v13, v11, Ls2/l;->c:Lcom/google/android/material/button/MaterialButton;

    iget-object v14, v11, Ls2/l;->b:Landroid/widget/ProgressBar;

    iget-object v11, v11, Ls2/l;->a:Landroid/widget/TextView;

    if-eqz v10, :cond_26

    const v10, 0x7f130678

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_24
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    :cond_26
    if-eqz v12, :cond_27

    const v10, 0x7f130677

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v8}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    :cond_27
    const v10, 0x7f130679

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    :goto_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_28
    return-void

    :pswitch_17
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 56
    iget-object v4, v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->p:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->p:Ln2/c;

    .line 57
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .line 59
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :pswitch_18
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lr2/a;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Lq2/c;

    .line 60
    iget-object v4, v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->q:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2/d;

    if-nez v2, :cond_29

    goto :goto_26

    :cond_29
    iget-object v4, v2, Lq2/d;->e:Lq2/c;

    sget-object v5, Lq2/c;->c:Lq2/c;

    if-ne v4, v5, :cond_2a

    sget-object v4, Lq2/c;->b:Lq2/c;

    if-ne v3, v4, :cond_2a

    goto :goto_26

    :cond_2a
    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->d(Lq2/d;Lq2/c;)V

    :goto_26
    return-void

    :pswitch_19
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 61
    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->r:Lp2/t;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->k:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->n:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->p:Lcom/google/android/material/textview/MaterialTextView;

    const v4, 0x7f130072

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    return-void

    :pswitch_1a
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 62
    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->s:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->s:Ln2/c;

    .line 63
    iget-object v2, v2, Ln2/c;->b:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c

    .line 65
    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->s:Ln2/c;

    .line 66
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .line 68
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2c
    return-void

    :pswitch_1b
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln2/a;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Lo2/g;

    .line 69
    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->u:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo2/h;

    if-nez v4, :cond_2d

    goto :goto_27

    :cond_2d
    invoke-virtual {v0, v4, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->d(Lo2/h;Lo2/g;)V

    sget-object v4, Lo2/g;->b:Lo2/g;

    if-ne v3, v4, :cond_2e

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f:Landroid/widget/TextView;

    iget-object v2, v2, Ln2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    :goto_27
    return-void

    :pswitch_1c
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 70
    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->s:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->s:Ln2/c;

    .line 71
    iget-object v2, v2, Ln2/c;->b:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 73
    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->s:Ln2/c;

    .line 74
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v8

    .line 76
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2f
    return-void

    :pswitch_1d
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v5, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v5, La4/e;

    iget-object v10, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v10, La4/f;

    .line 77
    sget-object v11, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_30

    .line 78
    iget-object v0, v10, La4/f;->k:Landroid/view/View;

    .line 79
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v10, La4/f;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3d

    .line 80
    :cond_30
    iget-object v11, v10, La4/f;->k:Landroid/view/View;

    .line 81
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v10, La4/f;->l:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v11, v5, La4/e;->h:La4/c;

    iget-object v12, v5, La4/e;->a:Ljava/lang/String;

    iget-object v13, v5, La4/e;->e:Ljava/lang/String;

    iget-object v14, v5, La4/e;->d:Ljava/lang/String;

    if-eqz v11, :cond_32

    iget-object v15, v11, La4/c;->b:Ljava/lang/String;

    if-eqz v15, :cond_32

    const-string v3, "Unknown"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 83
    iget-object v3, v11, La4/c;->a:Ljava/lang/String;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_31

    goto :goto_28

    :cond_31
    const-string v7, " "

    .line 84
    invoke-static {v3, v7, v15}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_28

    .line 85
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v14, :cond_33

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_33

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    if-eqz v13, :cond_35

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_35

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_34

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_36

    const-string v7, "USB device "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 86
    :cond_37
    :goto_28
    iget-object v3, v10, La4/f;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u00b7  bus "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, La4/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, v10, La4/f;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-boolean v3, v10, La4/f;->o:Z

    iget-object v7, v5, La4/e;->g:La4/g;

    iget-object v12, v10, La4/f;->c:Landroid/widget/TextView;

    const v15, -0xd182ce

    const v6, -0x8a8a8b

    if-eqz v3, :cond_38

    const-string v3, "PASSTHROUGH"

    invoke-static {v12, v3, v6}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_2b

    .line 88
    :cond_38
    iget v3, v7, La4/g;->e:I

    .line 89
    invoke-static {v3}, Lo/i;->c(I)I

    move-result v3

    if-eqz v3, :cond_3b

    if-eq v3, v8, :cond_3a

    if-eq v3, v4, :cond_39

    const-string v3, "NO DRIVER"

    const v4, -0x39d7d8

    :goto_29
    invoke-static {v12, v3, v4}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_2b

    :cond_39
    const-string v3, "DRIVER UNKNOWN"

    invoke-static {v12, v3, v6}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_2b

    :cond_3a
    const-string v3, "BOUND \u00b7 NO NETDEV"

    const v4, -0x109400

    goto :goto_29

    :cond_3b
    iget-object v3, v7, La4/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v3, "READY"

    goto :goto_2a

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "READY \u00b7 "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2a
    invoke-static {v12, v3, v15}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 90
    :goto_2b
    iget-object v3, v10, La4/f;->d:Landroid/widget/TextView;

    if-eqz v11, :cond_40

    iget v4, v11, La4/c;->d:I

    if-eqz v4, :cond_40

    if-eq v4, v2, :cond_40

    invoke-static {v4}, Lo/i;->c(I)I

    move-result v4

    if-eqz v4, :cond_3f

    if-eq v4, v8, :cond_3e

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3d

    const-string v4, "USB"

    :goto_2c
    const v6, -0x8a8a8b

    goto :goto_2d

    :cond_3d
    const-string v4, "TETHER"

    goto :goto_2c

    :cond_3e
    const-string v4, "ETHERNET"

    goto :goto_2c

    :cond_3f
    const-string v4, "WIFI"

    goto :goto_2c

    :goto_2d
    invoke-static {v3, v4, v6}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    :cond_40
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_2e
    iget-object v3, v5, La4/e;->f:Ljava/lang/String;

    iget-object v4, v10, La4/f;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    const/16 v3, 0x8

    const v6, -0x8a8a8b

    goto :goto_30

    :cond_41
    :try_start_22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v12, 0x1388

    if-lt v6, v12, :cond_42

    const-string v3, "USB 3"

    goto :goto_2f

    :cond_42
    const/16 v12, 0x1e0

    if-lt v6, v12, :cond_43

    const-string v3, "USB 2"

    goto :goto_2f

    :cond_43
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Mbps"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_8

    :catch_8
    :goto_2f
    const v6, -0x8a8a8b

    invoke-static {v4, v3, v6}, La4/f;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_44
    const v6, -0x8a8a8b

    const/16 v3, 0x8

    :goto_30
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_31
    iget-object v3, v10, La4/f;->m:Landroid/view/View;

    if-eqz v11, :cond_45

    iget v4, v11, La4/c;->d:I

    if-eq v4, v2, :cond_45

    const/4 v2, 0x2

    if-ne v4, v2, :cond_46

    :cond_45
    const/16 v2, 0x8

    goto :goto_34

    :cond_46
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v10, La4/f;->g:Landroid/widget/TextView;

    iget v3, v11, La4/c;->f:I

    invoke-static {v2, v3}, La4/f;->a(Landroid/widget/TextView;I)V

    iget-object v2, v10, La4/f;->h:Landroid/widget/TextView;

    iget v3, v11, La4/c;->g:I

    invoke-static {v2, v3}, La4/f;->a(Landroid/widget/TextView;I)V

    .line 93
    iget v2, v11, La4/c;->e:I

    invoke-static {v2}, Lo/i;->c(I)I

    move-result v3

    if-eqz v3, :cond_49

    if-eq v3, v8, :cond_48

    const/4 v4, 0x2

    if-eq v3, v4, :cond_47

    const-string v3, "\u2014"

    goto :goto_32

    :cond_47
    const-string v3, "Dual-band"

    goto :goto_32

    :cond_48
    const-string v3, "5 GHz"

    goto :goto_32

    :cond_49
    const-string v3, "2.4 GHz"

    .line 94
    :goto_32
    iget-object v4, v10, La4/f;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    goto :goto_33

    :cond_4a
    move v15, v6

    :goto_33
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_35

    :goto_34
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_35
    iget-boolean v2, v10, La4/f;->o:Z

    iget-object v3, v10, La4/f;->n:Landroid/view/View;

    if-nez v2, :cond_4b

    iget-object v2, v5, La4/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4b
    const/16 v2, 0x8

    goto :goto_37

    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v9

    :goto_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_4e

    const/16 v12, 0xa

    if-lez v6, :cond_4d

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4d
    const-string v15, "\u2022 "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_4e
    iget-object v2, v10, La4/f;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_38

    :goto_37
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Driver:    "

    if-eqz v11, :cond_4f

    iget-object v4, v11, La4/c;->c:Ljava/lang/String;

    if-eqz v4, :cond_4f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_4f
    iget-object v4, v7, La4/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, La4/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_50
    const-string v3, "Driver:    (none bound)"

    goto :goto_39

    :goto_3a
    const-string v3, "\nBus path:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, La4/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_51

    const-string v3, "\nVendor:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    if-eqz v13, :cond_52

    const-string v3, "\nProduct:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    if-eqz v11, :cond_53

    iget-object v3, v11, La4/c;->h:Ljava/lang/String;

    if-eqz v3, :cond_53

    const-string v4, "\nFirmware:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_53
    if-eqz v11, :cond_54

    iget-object v3, v11, La4/c;->i:Ljava/lang/String;

    if-eqz v3, :cond_54

    const-string v4, "\nKernel \u2265:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-object v3, v7, La4/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    const-string v3, "\nModalias:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, La4/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    iget v3, v5, La4/e;->i:I

    invoke-static {v3}, Lo/i;->c(I)I

    move-result v3

    if-eqz v3, :cond_58

    if-eq v3, v8, :cond_57

    const/4 v4, 0x2

    if-eq v3, v4, :cond_56

    goto :goto_3c

    :cond_56
    const-string v3, "\nDB:        unknown (not in DB)"

    :goto_3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_57
    const-string v3, "\nDB:        legacy fallback"

    goto :goto_3b

    :cond_58
    const-string v3, "\nDB:        curated"

    goto :goto_3b

    :goto_3c
    iget-object v3, v10, La4/f;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    if-eqz v2, :cond_59

    .line 98
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 99
    invoke-virtual {v0, v5}, Lcom/zalexdev/stryker/MainActivity;->g(La4/e;)V

    :cond_59
    :goto_3d
    return-void

    :pswitch_1e
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 100
    invoke-static {v0, v2, v3}, Lcom/stryker/terminal/utils/NLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1f
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Ly0/s;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const-string v4, "this$0"

    .line 101
    invoke-static {v0, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sql"

    invoke-static {v2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputArguments"

    invoke-static {v3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    throw v5

    :pswitch_20
    iget-object v0, v1, Landroidx/emoji2/text/m;->b:Ljava/lang/Object;

    check-cast v0, Li/a;

    iget-object v2, v1, Landroidx/emoji2/text/m;->c:Ljava/lang/Object;

    check-cast v2, Lv1/f;

    iget-object v3, v1, Landroidx/emoji2/text/m;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    :try_start_23
    iget-object v0, v0, Li/a;->a:Landroid/content/Context;

    invoke-static {v0}, La/c;->c(Landroid/content/Context;)Landroidx/emoji2/text/t;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 104
    iget-object v4, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    .line 105
    check-cast v4, Landroidx/emoji2/text/s;

    .line 106
    iget-object v5, v4, Landroidx/emoji2/text/s;->d:Ljava/lang/Object;

    .line 107
    monitor-enter v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :try_start_24
    iput-object v3, v4, Landroidx/emoji2/text/s;->f:Ljava/util/concurrent/Executor;

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    .line 108
    :try_start_25
    iget-object v0, v0, Landroidx/emoji2/text/h;->a:Landroidx/emoji2/text/k;

    .line 109
    new-instance v4, Landroidx/emoji2/text/n;

    invoke-direct {v4, v2, v3}, Landroidx/emoji2/text/n;-><init>(Lv1/f;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v4}, Landroidx/emoji2/text/k;->a(Lv1/f;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    goto :goto_3f

    :catchall_f
    move-exception v0

    goto :goto_3e

    :catchall_10
    move-exception v0

    .line 110
    :try_start_26
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :try_start_27
    throw v0

    .line 111
    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    :goto_3e
    invoke-virtual {v2, v0}, Lv1/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_3f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    :sswitch_data_0
    .sparse-switch
        -0x3dab8aec -> :sswitch_4
        -0x14624db0 -> :sswitch_3
        0x5f212e2 -> :sswitch_2
        0x3d8be573 -> :sswitch_1
        0x6a241c10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method
