.class public final synthetic Lj2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lj2/b;->a:I

    iput-object p1, p0, Lj2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj2/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj2/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lj2/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo4/u;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lj2/b;->a:I

    iput-object p1, p0, Lj2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj2/b;->d:Ljava/lang/Object;

    iput-object p3, p0, Lj2/b;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj2/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v1, p0

    iget v0, v1, Lj2/b;->a:I

    const v2, 0x7f060073

    const v3, 0x7f0800c9

    const v4, 0x7f060302

    const v5, 0x7f0800d0

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    invoke-static {v0, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->d(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wifi/Wifi;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    iget-object v2, v1, Lj2/b;->d:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroid/view/View;

    iget-object v2, v1, Lj2/b;->e:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 1
    iget-object v2, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {v2}, Ll4/l;->y()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lr3/d;

    const/4 v4, 0x3

    invoke-direct {v3, v7, v2, v4}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    iget-object v3, v3, Ll4/l;->e:Ll4/m;

    invoke-virtual {v3, v2}, Ll4/m;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v10, Lo4/i0;

    iget-object v4, v0, Lcom/zalexdev/stryker/wifi/Wifi;->s:Landroidx/fragment/app/a0;

    iget-object v5, v0, Lcom/zalexdev/stryker/wifi/Wifi;->t:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mdk4 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    invoke-virtual {v3}, Ll4/l;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v10

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lo4/i0;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    iput-object v10, v0, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    goto :goto_0

    :cond_0
    new-instance v2, Lv3/g;

    const/16 v3, 0x18

    invoke-direct {v2, v0, v8, v9, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lo4/u;

    iget-object v2, v1, Lj2/b;->d:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v3, v1, Lj2/b;->c:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    .line 2
    sget-object v3, Lo4/u;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v0, Lo4/u;->d:Ll4/l;

    invoke-virtual {v3}, Ll4/l;->y()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lo4/u;->d:Ll4/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v4}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5
    invoke-static {v3}, Ll4/m;->j(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lo4/u;->c:Landroid/app/Activity;

    new-instance v4, Lo4/k;

    invoke-direct {v4, v8, v10}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v4, v0, Lo4/u;->d:Ll4/l;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getChannel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v4, v4, Ll4/l;->e:Ll4/m;

    .line 7
    invoke-virtual {v4, v3, v5}, Ll4/m;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_2
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, v0, Lo4/u;->d:Ll4/l;

    invoke-virtual {v3}, Ll4/l;->y()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_5

    new-instance v10, Lv3/e;

    iget-object v4, v0, Lo4/u;->c:Landroid/app/Activity;

    iget-object v5, v0, Lo4/u;->b:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "aireplay-ng --ignore-negative-one -0 0 -a  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x2

    move-object v2, v10

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lv3/e;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;I)V

    iput-object v10, v0, Lo4/u;->g:Ll4/c;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lo4/u;->g:Ll4/c;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lo4/u;->g:Ll4/c;

    invoke-virtual {v0}, Ll4/c;->a()V

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lo4/u;->c:Landroid/app/Activity;

    new-instance v4, Lv3/g;

    const/16 v5, 0x15

    invoke-direct {v4, v0, v8, v3, v5}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_3
    return-void

    :pswitch_2
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/t;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/zalexdev/stryker/custom/Exploit;

    iget-object v2, v1, Lj2/b;->d:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    iget-object v2, v1, Lj2/b;->e:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, [Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Landroid/app/Dialog;

    iget-object v0, v0, Lr3/t;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0072

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    :cond_7
    const v0, 0x7f0a0657

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a069b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/material/textfield/TextInputEditText;

    const v3, 0x7f0a0492

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const v4, 0x7f0a00f1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    new-instance v5, Lj2/i;

    invoke-direct {v5, v2, v7}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lr3/f;

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lr3/f;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;Lcom/zalexdev/stryker/custom/Exploit;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Ll4/l;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 11
    sget-object v5, Ln3/h;->a:[Ljava/lang/String;

    const-string v5, "/sdcard/Stryker/wordlists"

    .line 12
    invoke-virtual {v0, v5}, Ll4/l;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v5, Landroidx/emoji2/text/m;

    const/16 v6, 0x14

    invoke-direct {v5, v3, v0, v4, v6}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lh3/c;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, Le0/j;

    .line 13
    iget-object v5, v0, Lh3/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v6, Lf/q0;

    iget-object v11, v0, Lh3/c;->a:Landroid/content/Context;

    invoke-direct {v6, v11}, Lf/q0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lf/q0;->H()Le3/b;

    move-result-object v6

    new-instance v12, Lw2/h;

    invoke-direct {v12, v4, v6, v7}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v12}, Lh3/c;->a(Ljava/lang/Runnable;)V

    sget-object v7, Le3/a;->a:Le3/a;

    .line 14
    iget-object v12, v6, Le3/b;->j:Le3/a;

    if-ne v12, v7, :cond_f

    iget-boolean v7, v6, Le3/b;->e:Z

    if-eqz v7, :cond_f

    .line 15
    new-instance v7, Li3/c;

    invoke-direct {v7, v11}, Li3/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Li3/c;->a(Ljava/lang/String;)Li3/b;

    move-result-object v7

    if-nez v7, :cond_8

    new-instance v0, Lw2/h;

    const/4 v2, 0x7

    invoke-direct {v0, v4, v3, v2}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lh3/c;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_8
    :try_start_0
    invoke-static {v2}, Landroidx/fragment/app/x0;->k(Ljava/lang/String;)Lg3/e;

    move-result-object v2
    :try_end_0
    .catch Lg3/a; {:try_start_0 .. :try_end_0} :catch_7

    .line 16
    new-instance v3, Ll4/l;

    invoke-direct {v3, v11}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v8, Ll4/l;

    invoke-direct {v8, v11}, Ll4/l;-><init>(Landroid/content/Context;)V

    const-string v8, "chmod 0666 /dev/hidg0 /dev/hidg1 2>/dev/null"

    .line 18
    invoke-virtual {v3, v8}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    const/4 v3, 0x0

    :try_start_1
    const-string v8, "/dev/hidg0"

    .line 19
    invoke-static {v8}, Lk3/a;->i(Ljava/lang/String;)Lk3/a;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 20
    :try_start_2
    iget-boolean v6, v6, Le3/b;->f:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_9

    :try_start_3
    const-string v6, "/dev/hidg1"

    .line 21
    invoke-static {v6}, Lk3/a;->i(Ljava/lang/String;)Lk3/a;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    move-object v6, v3

    goto/16 :goto_9

    :catch_0
    move-object v6, v3

    goto/16 :goto_8

    :catch_1
    :cond_9
    move-object v6, v3

    .line 22
    :goto_5
    :try_start_4
    iget-object v11, v2, Lg3/e;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-instance v12, Ly/n;

    const/4 v13, 0x4

    invoke-direct {v12, v11, v13, v4}, Ly/n;-><init>(IILjava/lang/Object;)V

    invoke-static {v12}, Lh3/c;->a(Ljava/lang/Runnable;)V

    new-instance v12, Lg3/c;

    invoke-direct {v12, v8, v6, v7}, Lg3/c;-><init>(Lk3/a;Lk3/a;Li3/b;)V

    invoke-virtual {v5, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    filled-new-array {v10}, [I

    move-result-object v7

    new-instance v13, Ld3/d;

    invoke-direct {v13, v0, v7, v4, v11}, Ld3/d;-><init>(Lh3/c;[ILe0/j;I)V

    invoke-virtual {v12, v2, v13}, Lg3/c;->d(Lg3/e;Ld3/d;)V

    new-instance v0, Lh3/b;

    invoke-direct {v0, v4, v10}, Lh3/b;-><init>(Le0/j;I)V

    invoke-static {v0}, Lh3/c;->a(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v8}, Lk3/a;->close()V

    if-eqz v6, :cond_a

    :goto_6
    invoke-virtual {v6}, Lk3/a;->close()V

    :cond_a
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v6, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v6, v3

    move-object v8, v6

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v6, v3

    move-object v8, v6

    :goto_7
    :try_start_5
    new-instance v2, Lw2/h;

    const/16 v7, 0x9

    invoke-direct {v2, v4, v0, v7}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lh3/c;->a(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lk3/a;->close()V

    :cond_b
    if-eqz v6, :cond_a

    goto :goto_6

    :catch_5
    move-object v6, v3

    move-object v8, v6

    :catch_6
    :goto_8
    :try_start_6
    new-instance v0, Lh3/b;

    invoke-direct {v0, v4, v9}, Lh3/b;-><init>(Le0/j;I)V

    invoke-static {v0}, Lh3/c;->a(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lk3/a;->close()V

    :cond_c
    if-eqz v6, :cond_a

    goto :goto_6

    :goto_9
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lk3/a;->close()V

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lk3/a;->close()V

    :cond_e
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v2, v0

    new-instance v0, Lw2/h;

    invoke-direct {v0, v4, v2, v8}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lh3/c;->a(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 23
    :cond_f
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const-string v0, "HID not available"

    goto :goto_a

    :pswitch_5
    const-string v0, "SELinux denies writes to /dev/hidg0"

    goto :goto_a

    :pswitch_6
    const-string v0, "/dev/hidg0 is missing \u2014 apply a profile in USB Arsenal first"

    goto :goto_a

    :pswitch_7
    const-string v0, "No USB Device Controller found under /sys/class/udc/"

    goto :goto_a

    :pswitch_8
    const-string v0, "configfs not available \u2014 kernel is not gadget-capable"

    goto :goto_a

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Kernel "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Le3/b;->b:Ljava/lang/String;

    const-string v3, " is too old (need \u2265 3.19)"

    .line 24
    invoke-static {v0, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_a
    const-string v0, "Root access denied"

    .line 25
    :goto_a
    new-instance v2, Landroidx/emoji2/text/m;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v6, v0, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lh3/c;->a(Ljava/lang/Runnable;)V

    :goto_b
    return-void

    :pswitch_b
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lb3/g;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Lb3/f;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 26
    sget-object v5, Lb3/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget-object v5, v2, Lb3/f;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v2, Lb3/f;->f:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v2, Lb3/f;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v2, Lb3/f;->d:Landroid/widget/TextView;

    iget-object v2, v2, Lb3/f;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lb3/g;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130512

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#388E3C"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f13027a

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lb3/g;->d:Ll4/l;

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lb3/g;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_c

    :cond_10
    const v0, 0x7f130513

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "#D32F2F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_c
    return-void

    :pswitch_c
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    iget-object v2, v1, Lj2/b;->d:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    iget-object v2, v1, Lj2/b;->e:Ljava/lang/Object;

    move-object/from16 v18, v2

    check-cast v18, Ly2/a;

    .line 28
    sget-object v2, Lw2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v2, Ll4/l;

    invoke-direct {v2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {v2, v12}, Lw2/c;->a(Ll4/l;Ljava/lang/String;)[D

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_d

    :cond_12
    new-instance v3, Lz2/a;

    invoke-direct {v3, v0}, Lz2/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ly2/b;

    aget-wide v14, v2, v10

    aget-wide v16, v2, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v21}, Ly2/b;-><init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V

    invoke-virtual {v3, v0}, Lz2/a;->f(Ly2/b;)V

    :goto_d
    return-void

    :pswitch_d
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    iget-object v7, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v12, Lo2/q;

    .line 31
    iget-object v13, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v9, :cond_14

    if-eq v7, v6, :cond_13

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    :cond_13
    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 32
    invoke-static {v0, v4}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 33
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_e

    :cond_14
    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 34
    invoke-static {v0, v2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 35
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_e
    return-void

    :pswitch_e
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iget-object v7, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v12, Lo2/i;

    .line 36
    iget-object v13, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->e:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v9, :cond_16

    if-eq v7, v6, :cond_15

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_15
    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 37
    invoke-static {v0, v4}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 38
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_f

    :cond_16
    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->b:Landroid/content/Context;

    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 39
    invoke-static {v0, v2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 40
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void

    :pswitch_f
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 41
    sget v5, Lcom/zalexdev/stryker/appintro/slides/Slide1;->d:I

    .line 42
    invoke-virtual {v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_10

    :cond_17
    move v9, v10

    :goto_10
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_10
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    check-cast v2, Lu2/l;

    iget-object v3, v1, Lj2/b;->d:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    iget-object v4, v1, Lj2/b;->e:Ljava/lang/Object;

    check-cast v4, La4/e;

    .line 43
    sget-object v5, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v2}, Lu2/l;->j()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v3}, Lu2/l;->g(Landroid/hardware/usb/UsbDevice;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 45
    monitor-enter v2

    :try_start_7
    iget-object v3, v2, Lu2/l;->d:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit v2

    .line 46
    invoke-static {v3, v5}, Lcom/zalexdev/stryker/MainActivity;->f(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lf/n0;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v2, v4}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11

    :catchall_3
    move-exception v0

    .line 47
    monitor-exit v2

    throw v0

    .line 48
    :cond_18
    new-instance v6, Lj2/h;

    invoke-direct {v6, v0, v2, v5, v4}, Lj2/h;-><init>(Lcom/zalexdev/stryker/MainActivity;Lu2/l;ILa4/e;)V

    if-nez v3, :cond_19

    .line 49
    invoke-virtual {v6, v10}, Lj2/h;->a(Z)V

    goto :goto_11

    :cond_19
    invoke-virtual {v2, v3}, Lu2/l;->g(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v6, v9}, Lj2/h;->a(Z)V

    goto :goto_11

    .line 50
    :cond_1a
    iget-object v0, v2, Lu2/l;->b:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 51
    invoke-virtual {v2, v3}, Lu2/l;->a(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lj2/h;->a(Z)V

    goto :goto_11

    :cond_1b
    new-instance v0, Lu2/i;

    invoke-direct {v0, v2, v3, v6}, Lu2/i;-><init>(Lu2/l;Landroid/hardware/usb/UsbDevice;Lj2/h;)V

    .line 52
    iget-object v4, v2, Lu2/l;->b:Landroid/hardware/usb/UsbManager;

    if-eqz v4, :cond_1c

    iget-object v4, v2, Lu2/l;->e:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_8
    iget-object v5, v2, Lu2/l;->e:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v2}, Lu2/l;->k()V

    iget-object v0, v2, Lu2/l;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v3}, Lu2/l;->i(Landroid/hardware/usb/UsbDevice;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_11

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 53
    :cond_1c
    invoke-virtual {v6, v10}, Lj2/h;->a(Z)V

    :goto_11
    return-void

    :pswitch_11
    iget-object v0, v1, Lj2/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v2, v1, Lj2/b;->c:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    iget-object v2, v1, Lj2/b;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    iget-object v2, v1, Lj2/b;->e:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    .line 54
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result v8

    if-nez v8, :cond_1d

    .line 56
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    invoke-virtual {v2}, Ll4/l;->Q()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    move v9, v10

    :goto_12
    iget-object v2, v0, Lcom/zalexdev/stryker/MainActivity;->a:Ll4/l;

    invoke-static {v2, v9, v8}, Lu2/a;->a(Ll4/l;ZZ)Lu2/a;

    move-result-object v5

    new-instance v9, Lj2/e;

    move-object v2, v9

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lj2/e;-><init>(Lcom/zalexdev/stryker/MainActivity;Landroid/widget/TextView;Lu2/a;Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
