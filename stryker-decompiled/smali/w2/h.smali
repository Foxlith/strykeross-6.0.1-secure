.class public final synthetic Lw2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lw2/h;->a:I

    iput-object p1, p0, Lw2/h;->c:Ljava/lang/Object;

    iput-object p2, p0, Lw2/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lw2/h;->a:I

    iput-object p1, p0, Lw2/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw2/h;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lw2/h;->a:I

    sget-object v2, Lh3/a;->e:Lh3/a;

    const/16 v3, 0x11

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-string v8, ""

    const-string v9, " up"

    const-string v10, "ip link set "

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lz3/g;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lz3/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz3/g;->l(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[stderr] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz3/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void

    :pswitch_0
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/metasploit/Metasploit;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/MainActivity;

    .line 2
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    const-string v4, "metasploit"

    invoke-virtual {v3, v4}, Ll4/l;->T(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    const-string v3, "msf"

    invoke-virtual {v2, v3, v13}, Ll4/l;->b0(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    new-instance v3, Lw3/j;

    invoke-direct {v3, v0, v13}, Lw3/j;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3
    :cond_3
    iget-object v3, v2, Lcom/zalexdev/stryker/MainActivity;->f:Lz3/d;

    .line 4
    iput-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    if-nez v3, :cond_4

    new-instance v3, Lz3/d;

    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lz3/d;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object v3, v2, Lcom/zalexdev/stryker/MainActivity;->f:Lz3/d;

    .line 6
    iput-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v3, Lw3/j;

    invoke-direct {v3, v0, v14}, Lw3/j;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    iget-boolean v3, v2, Lz3/d;->i:Z

    if-eqz v3, :cond_6

    .line 7
    iget-object v2, v2, Lz3/d;->e:Lz3/g;

    .line 8
    invoke-virtual {v2}, Lz3/g;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;->d()V

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 10
    iget-object v2, v2, Lz3/d;->e:Lz3/g;

    .line 11
    invoke-virtual {v2}, Lz3/g;->e()Z

    move-result v2

    if-nez v2, :cond_7

    .line 12
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 13
    iget-object v0, v0, Lz3/d;->e:Lz3/g;

    .line 14
    invoke-virtual {v0}, Lz3/g;->a()Z

    :cond_7
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 15
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lg3/b;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 16
    iget-object v3, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 17
    iget v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->t:I

    add-int/2addr v4, v14

    iput v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->t:I

    .line 18
    iget-object v5, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->j:Landroid/widget/TextView;

    .line 19
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->k:Landroid/widget/ScrollView;

    .line 21
    new-instance v5, Lw3/d;

    invoke-direct {v5, v0, v13}, Lw3/d;-><init>(Lg3/b;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->v:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->x:Landroid/widget/TextView;

    .line 25
    iget v5, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->t:I

    .line 26
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->w:Landroid/widget/ScrollView;

    .line 28
    new-instance v5, Lw3/d;

    invoke-direct {v5, v0, v14}, Lw3/d;-><init>(Lg3/b;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    const-string v0, "[*] Exploit completed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->h:Landroid/widget/TextView;

    const v2, 0x7f13040f

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->c:Landroid/content/Context;

    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 32
    :cond_a
    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->a:Ll4/l;

    if-nez v0, :cond_b

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual {v3}, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->a:Ll4/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_lines"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->t:I

    invoke-virtual {v0, v3, v2}, Ll4/l;->c0(ILjava/lang/String;)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lv3/f;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Ll4/o;->j:Ll4/l;

    invoke-virtual {v0, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void

    :pswitch_4
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lv3/f;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Ll4/o;->j:Ll4/l;

    invoke-virtual {v0, v2}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void

    :pswitch_5
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Ls2/k;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 38
    iget-object v0, v0, Ls2/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 39
    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->d:Lv1/t;

    .line 40
    iput-object v2, v3, Lv1/t;->d:Ljava/lang/Object;

    .line 41
    invoke-virtual {v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->e()V

    return-void

    :pswitch_6
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/logger/LoggerFragment;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 42
    iget-boolean v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    if-nez v3, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/material/chip/Chip;

    iget-object v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v14}, Lcom/google/android/material/chip/Chip;->setCheckable(Z)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->n:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    :goto_4
    return-void

    :pswitch_7
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lg3/b;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/Device;

    .line 43
    iget-object v3, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v3, Lr3/v;

    iget-boolean v3, v3, Lr3/v;->g:Z

    if-nez v3, :cond_e

    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v0, v2}, Lr3/v;->c(Lcom/zalexdev/stryker/custom/Device;)V

    :cond_e
    return-void

    :pswitch_8
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Ln3/i;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/Device;

    .line 44
    iget-object v0, v0, Ln3/i;->t:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v0, v2}, Lr3/v;->c(Lcom/zalexdev/stryker/custom/Device;)V

    return-void

    :pswitch_9
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Ln3/i;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Matcher;

    .line 45
    iget-object v0, v0, Ln3/i;->t:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lr3/v;->f(I)V

    return-void

    :pswitch_a
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Ls3/t;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ls3/v;->a:[I

    const/16 v5, 0xc0

    const/16 v6, 0x4b0

    .line 47
    new-instance v7, Lg3/b;

    invoke-direct {v7, v0, v12}, Lg3/b;-><init>(Ljava/lang/Object;I)V

    iget-object v8, v0, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static/range {v3 .. v8}, Ls3/v;->e(Ljava/util/List;[IIILs3/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_b
    iget-object v0, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 48
    :try_start_1
    invoke-static {v0}, Li5/a;->w0(Ljava/lang/String;)Ls3/l;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_f
    return-void

    :pswitch_c
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 49
    sget v3, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 50
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_6

    .line 51
    :cond_10
    iget-object v3, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    if-nez v3, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Ljava/lang/String;

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_12

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_12
    iget-object v2, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    const v5, 0x7f130163

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130538

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    const/16 v5, 0xc

    invoke-direct {v3, v0, v4, v5}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    :cond_13
    :goto_6
    return-void

    :pswitch_d
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lr3/t;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/Exploit;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance v3, Lr3/r;

    invoke-direct {v3, v2, v13}, Lr3/r;-><init>(Lcom/zalexdev/stryker/custom/Exploit;I)V

    invoke-virtual {v0, v3}, Lr3/t;->f(Ljava/util/ArrayList;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/zalexdev/stryker/install/InstallService;

    iget-object v0, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v3, v2, Lcom/zalexdev/stryker/install/InstallService;->f:Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/install/InstallService;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/zalexdev/stryker/install/InstallService;->m()V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/zalexdev/stryker/install/InstallService;->m()V

    throw v4

    :pswitch_f
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hydra/HydraInstall;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 55
    iget-object v0, v0, Lcom/zalexdev/stryker/hydra/HydraInstall;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Le3/b;

    .line 56
    sget v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 57
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h(Le3/b;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Le3/b;

    .line 58
    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_e

    :cond_14
    iget-object v3, v2, Le3/b;->j:Le3/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v8, -0x109400

    const v9, 0x7f0800ae

    const-string v10, "?"

    const v11, -0x39d7d8

    const v15, 0x7f0800ac

    packed-switch v3, :pswitch_data_1

    const v3, 0x7f130257

    move v11, v8

    move-object v8, v10

    :goto_7
    move v15, v13

    goto :goto_9

    :pswitch_12
    const v3, 0x7f130256

    const-string v8, "SELINUX"

    :goto_8
    move v9, v15

    goto :goto_7

    :pswitch_13
    const v3, 0x7f130252

    const-string v11, "ARSENAL"

    move v15, v14

    move-object/from16 v22, v11

    move v11, v8

    move-object/from16 v8, v22

    goto :goto_9

    :pswitch_14
    const v3, 0x7f130253

    const-string v8, "NO UDC"

    goto :goto_8

    :pswitch_15
    const v3, 0x7f130251

    const-string v8, "CFGFS"

    goto :goto_8

    :pswitch_16
    const v3, 0x7f13024f

    const-string v8, "KERNEL"

    goto :goto_8

    :pswitch_17
    const v3, 0x7f130255

    const-string v8, "NO ROOT"

    goto :goto_8

    :pswitch_18
    const v3, 0x7f130254

    const-string v8, "READY"

    const v9, 0x7f0800ad

    const v11, -0xd182ce

    goto :goto_7

    :goto_9
    iget-object v4, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v2, Le3/b;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_a

    :cond_15
    move-object v10, v8

    :goto_a
    aput-object v10, v7, v13

    iget-object v8, v2, Le3/b;->d:Ljava/lang/String;

    if-nez v8, :cond_16

    const-string v8, "\u2014"

    :cond_16
    aput-object v8, v7, v14

    iget-boolean v8, v2, Le3/b;->e:Z

    const-string v9, "\u2717"

    const-string v10, "\u2713"

    if-eqz v8, :cond_17

    move-object v8, v10

    goto :goto_b

    :cond_17
    move-object v8, v9

    :goto_b
    aput-object v8, v7, v12

    iget-boolean v8, v2, Le3/b;->f:Z

    if-eqz v8, :cond_18

    move-object v9, v10

    :cond_18
    aput-object v9, v7, v6

    iget-boolean v2, v2, Le3/b;->i:Z

    if-eqz v2, :cond_19

    const-string v2, "enforcing"

    goto :goto_c

    :cond_19
    const-string v2, "permissive"

    :goto_c
    aput-object v2, v7, v5

    const-string v2, "kernel=%s \u00b7 udc=%s \u00b7 /dev/hidg0=%s \u00b7 /dev/hidg1=%s \u00b7 selinux=%s"

    invoke-static {v4, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->h:Lcom/google/android/material/button/MaterialButton;

    if-eqz v15, :cond_1a

    move v4, v13

    goto :goto_d

    :cond_1a
    const/16 v4, 0x8

    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_e
    return-void

    :pswitch_19
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lg3/q;

    .line 60
    iget-object v0, v0, Le0/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "line "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lg3/q;->a:I

    const-string v4, ": opening viewer"

    .line 62
    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    sget v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 64
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x24020000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1a
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v3, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v3, Ljava/io/IOException;

    .line 66
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Ld3/d;

    invoke-direct {v4, v2, v3, v13, v11}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 68
    invoke-virtual {v0, v4}, Le0/j;->b(Ld3/d;)V

    return-void

    :pswitch_1b
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lg3/a;

    .line 69
    iget v3, v2, Lg3/a;->a:I

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v4, Ld3/d;

    sget-object v5, Lh3/a;->c:Lh3/a;

    invoke-direct {v4, v5, v2, v3, v11}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 71
    invoke-virtual {v0, v4}, Le0/j;->b(Ld3/d;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v3, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "Layout \'"

    const-string v5, "\' missing"

    .line 72
    invoke-static {v4, v3, v5}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v4, Ld3/d;

    invoke-direct {v4, v2, v3, v13, v11}, Ld3/d;-><init>(Lh3/a;Ljava/lang/String;ILe3/a;)V

    .line 74
    invoke-virtual {v0, v4}, Le0/j;->b(Ld3/d;)V

    return-void

    :pswitch_1d
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Le0/j;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Le3/b;

    .line 75
    iget-object v0, v0, Le0/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 76
    sget v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 77
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->h(Le3/b;)V

    return-void

    :pswitch_1e
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/BufferedInputStream;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lf/q0;

    const/16 v4, 0x14

    new-array v4, v4, [B

    .line 78
    :catch_1
    :cond_1c
    :goto_f
    :try_start_3
    invoke-static {v0, v4, v13, v5}, Ld3/b;->s(Ljava/io/BufferedInputStream;[BII)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v8, :cond_1d

    invoke-virtual {v2}, Lf/q0;->F()V

    goto/16 :goto_12

    :cond_1d
    :goto_10
    :try_start_4
    aget-byte v8, v4, v13

    sget-object v9, Ld3/b;->d:[B

    .line 79
    aget-byte v10, v9, v13

    if-ne v8, v10, :cond_23

    aget-byte v8, v4, v14

    aget-byte v10, v9, v14

    if-ne v8, v10, :cond_23

    aget-byte v8, v4, v12

    aget-byte v10, v9, v12

    if-ne v8, v10, :cond_23

    aget-byte v8, v4, v6

    aget-byte v9, v9, v6

    if-ne v8, v9, :cond_23

    const/16 v8, 0x10

    .line 80
    invoke-static {v0, v4, v5, v8}, Ld3/b;->s(Ljava/io/BufferedInputStream;[BII)Z

    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v9, :cond_1e

    :catchall_2
    :goto_11
    invoke-virtual {v2}, Lf/q0;->F()V

    goto/16 :goto_12

    :cond_1e
    :try_start_5
    aget-byte v9, v4, v5

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v10, v4, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v8

    or-int/2addr v9, v10

    const/4 v10, 0x6

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    const/4 v10, 0x7

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    aget-byte v10, v4, v3

    and-int/lit16 v10, v10, 0xff

    or-int v19, v8, v10

    const/16 v8, 0x12

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    const/16 v10, 0x13

    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int v20, v8, v10

    if-lez v9, :cond_1c

    const/high16 v8, 0x800000

    if-le v9, v8, :cond_1f

    goto :goto_f

    :cond_1f
    new-array v8, v9, [B

    invoke-static {v0, v8, v13, v9}, Ld3/b;->s(Ljava/io/BufferedInputStream;[BII)Z

    move-result v10

    if-nez v10, :cond_20

    goto :goto_11

    .line 81
    :cond_20
    iget-object v10, v2, Lf/q0;->b:Ljava/lang/Object;

    move-object v15, v10

    check-cast v15, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 82
    iget-boolean v15, v15, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->f:Z

    if-nez v15, :cond_1c

    check-cast v10, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 83
    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_21

    goto/16 :goto_f

    :cond_21
    :try_start_6
    invoke-static {v8, v13, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v18, :cond_22

    goto/16 :goto_f

    :cond_22
    :try_start_7
    iget-object v8, v2, Lf/q0;->b:Ljava/lang/Object;

    check-cast v8, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    new-instance v9, Lt2/g;

    const/16 v21, 0x1

    move-object/from16 v16, v9

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v21}, Lt2/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_f

    :cond_23
    const/16 v11, 0x8

    .line 84
    invoke-static {v4, v14, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    if-gez v8, :cond_24

    goto/16 :goto_11

    :cond_24
    int-to-byte v8, v8

    aput-byte v8, v4, v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_10

    :goto_12
    return-void

    :pswitch_1f
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lc3/b;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 85
    sget v3, Lc3/b;->m:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "\\d+/\\d+"

    .line 86
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    aget-object v4, v2, v13

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\d+ hours"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aget-object v5, v2, v13

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "\\d+ minutes"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v6, v2, v13

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "\\d+ seconds"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v2, v2, v13

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const-string v7, " "

    if-eqz v6, :cond_25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_25
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 87
    invoke-static {v8}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 89
    invoke-static {v8}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Progress: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " k/s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lc3/b;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_28
    move v2, v13

    move v4, v2

    :goto_13
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2a

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_29

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v8, v4}, Lc3/b;->a(Ljava/lang/String;ILjava/lang/String;I)V

    :cond_29
    const-string v2, "Time remaining: "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lc3/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void

    :pswitch_20
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lb3/g;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lw5/h;

    .line 91
    sget-object v3, Lb3/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget-object v3, v2, Lw5/h;->a:Ljava/lang/Object;

    check-cast v3, Lb3/e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, v0, Lb3/g;->b:Landroid/content/Context;

    if-eqz v3, :cond_2d

    if-eq v3, v14, :cond_2c

    iget-object v3, v2, Lw5/h;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    const v2, 0x7f1301b9

    goto :goto_15

    :cond_2b
    iget-object v2, v2, Lw5/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :goto_14
    invoke-virtual {v0, v2}, Lb3/g;->c(Ljava/lang/String;)V

    goto :goto_16

    :cond_2c
    const v2, 0x7f1301de

    :goto_15
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_2d
    const v2, 0x7f13068a

    goto :goto_15

    :goto_16
    return-void

    :pswitch_21
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lb3/f;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Lc3/b;

    .line 93
    sget-object v4, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 94
    iget-object v4, v0, Lb3/f;->f:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/android/material/snackbar/a;

    invoke-direct {v5, v2, v0, v3}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_22
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lb3/g;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 95
    iget-object v0, v0, Lb3/g;->b:Landroid/content/Context;

    invoke-static {v0, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_23
    iget-object v0, v1, Lw2/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/geomac/GeoMac;

    iget-object v2, v1, Lw2/h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 96
    iget-object v3, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    invoke-static {v3, v2}, Lw2/c;->a(Ll4/l;Ljava/lang/String;)[D

    move-result-object v3

    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    if-eqz v4, :cond_2f

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object v4, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    new-instance v5, Landroidx/emoji2/text/m;

    const/16 v6, 0xe

    invoke-direct {v5, v0, v3, v2, v6}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
