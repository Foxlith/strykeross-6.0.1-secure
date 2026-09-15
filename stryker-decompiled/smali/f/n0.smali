.class public final synthetic Lf/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf/o0;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lf/n0;->a:I

    iput-object p2, p0, Lf/n0;->c:Ljava/lang/Object;

    iput-object p1, p0, Lf/n0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lf/n0;->a:I

    iput-object p1, p0, Lf/n0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf/n0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Lf/n0;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Process;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v6, 0x1000

    if-ge v4, v6, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :goto_5
    return-void

    :pswitch_0
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/dashboard/Dashboard;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    if-nez v2, :cond_2

    goto :goto_7

    :cond_2
    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    .line 3
    :cond_3
    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_5

    goto :goto_6

    :cond_5
    iget-object v4, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    add-int/2addr v6, v4

    sub-int/2addr v3, v6

    if-gt v3, v5, :cond_6

    move v7, v8

    :cond_6
    move v8, v7

    .line 4
    :cond_7
    :goto_6
    iput-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_9

    .line 5
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    new-instance v3, Lt2/c;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_7
    return-void

    :pswitch_1
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/dashboard/Dashboard;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Lu2/h;

    .line 6
    sget v3, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    iget-object v4, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    const-string v9, "usb"

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    if-nez v2, :cond_a

    goto :goto_8

    .line 8
    :cond_a
    iget-object v6, v2, Lu2/h;->o:Lu2/l;

    :goto_8
    if-eqz v4, :cond_10

    .line 9
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move v4, v7

    move v9, v4

    :goto_9
    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    add-int/lit8 v9, v9, 0x1

    if-eqz v6, :cond_b

    invoke-virtual {v6, v10}, Lu2/l;->g(Landroid/hardware/usb/UsbDevice;)Z

    move-result v11

    if-eqz v11, :cond_b

    move v11, v8

    goto :goto_a

    :cond_b
    move v11, v7

    :goto_a
    if-eqz v11, :cond_c

    add-int/lit8 v4, v4, 0x1

    :cond_c
    if-eqz v11, :cond_d

    const-string v12, "\u25cf "

    goto :goto_b

    :cond_d
    const-string v12, "\u25cb "

    :goto_b
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/zalexdev/stryker/dashboard/Dashboard;->d(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    if-eqz v11, :cond_e

    const v11, 0x7f130702

    goto :goto_c

    :cond_e
    const v11, 0x7f130703

    :goto_c
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    :cond_f
    move v7, v4

    goto :goto_d

    :catchall_4
    :cond_10
    move v9, v7

    :goto_d
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    if-nez v2, :cond_11

    goto :goto_e

    :cond_11
    new-instance v4, Lt2/g;

    invoke-direct {v4, v0, v9, v7, v3}, Lt2/g;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;IILjava/lang/StringBuilder;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_e
    return-void

    :pswitch_2
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/dashboard/Dashboard;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 10
    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    invoke-virtual {v3}, Ll4/l;->e()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    const-string v4, "magisk_notif"

    invoke-virtual {v3, v4}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v0, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    new-instance v3, Landroidx/activity/b;

    const/16 v4, 0xd

    invoke-direct {v3, v2, v4}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void

    :pswitch_3
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ls2/k;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 11
    iget-object v0, v0, Ls2/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/coremanger/CoreManager;

    sget v3, Lcom/zalexdev/stryker/coremanger/CoreManager;->D:I

    .line 12
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->f(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/coremanger/CoreManager;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/coremanger/CoreManager;->g(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->u:Landroid/widget/TextView;

    const v3, 0x7f130153

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 14
    iget-object v2, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->h:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object v2, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->k:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->l:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v0, Lcom/zalexdev/stryker/coremanger/CoreManager;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 15
    iget-object v0, v0, Lcom/zalexdev/stryker/cameradar/CameradarInstall;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lp2/r;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ln2/f;

    .line 16
    iget-object v0, v0, Lp2/r;->k:Lp2/j;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Lp2/j;->b(Ln2/f;)V

    :cond_13
    return-void

    :pswitch_7
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lp2/r;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 17
    iget-object v0, v0, Lp2/r;->k:Lp2/j;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v2}, Lp2/j;->e(Ljava/lang/CharSequence;)V

    :cond_14
    return-void

    :pswitch_8
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 18
    sget-object v3, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_f

    :cond_15
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_f
    return-void

    :pswitch_9
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    iget-object v4, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v4, Lu2/d;

    .line 20
    sget v5, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lu2/d;->values()[Lu2/d;

    move-result-object v5

    array-length v6, v5

    move v9, v7

    :goto_10
    if-ge v7, v6, :cond_1a

    aget-object v10, v5, v7

    iget-object v11, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->u:Ljava/util/EnumMap;

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo2/p;

    if-nez v11, :cond_16

    goto :goto_12

    :cond_16
    if-ne v10, v4, :cond_18

    sget-object v9, Lu2/d;->h:Lu2/d;

    if-ne v4, v9, :cond_17

    move v9, v3

    goto :goto_11

    :cond_17
    move v9, v2

    :goto_11
    invoke-virtual {v0, v11, v9}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->d(Lo2/p;I)V

    iget-object v9, v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f:Landroid/widget/TextView;

    iget-object v10, v10, Lu2/d;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v9, v8

    goto :goto_12

    :cond_18
    if-nez v9, :cond_19

    invoke-virtual {v0, v11, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->d(Lo2/p;I)V

    :cond_19
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1a
    return-void

    :pswitch_a
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 22
    sget v3, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->v:I

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1b
    return-void

    :pswitch_b
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 24
    sget v3, Lcom/zalexdev/stryker/appintro/slides/Slide3;->z:I

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1c
    return-void

    :pswitch_c
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/Slide2;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    .line 26
    sget v3, Lcom/zalexdev/stryker/appintro/slides/Slide2;->s:I

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void

    :pswitch_d
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/about/FeatureCardStack;

    iget-object v3, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    .line 28
    iget-boolean v4, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->j:Z

    if-nez v4, :cond_1f

    iget-boolean v0, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    if-eqz v0, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x104

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroidx/core/view/r2;

    invoke-direct {v4, v2, v3}, Landroidx/core/view/r2;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1f
    :goto_13
    return-void

    :pswitch_e
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 29
    iget-object v3, v0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v8, v2, v6, v6}, Lcom/zalexdev/stryker/MainActivity;->m(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_20
    return-void

    :pswitch_f
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 30
    sget-object v3, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0072

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    const v4, 0x7f0a0657

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a069b

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    const v6, 0x7f0a0492

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    const v8, 0x7f0a00f1

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    new-instance v9, Lj2/i;

    invoke-direct {v9, v3, v7}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f130163

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lj2/j;

    invoke-direct {v0, v2, v5, v3, v7}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_10
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v5, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v5, La4/f;

    .line 32
    sget-object v9, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "usb"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbManager;

    if-nez v10, :cond_21

    goto/16 :goto_19

    :cond_21
    invoke-virtual {v10}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v10

    if-nez v10, :cond_22

    goto/16 :goto_19

    :cond_22
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/UsbDevice;

    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v13

    const v14, 0xffff

    and-int/2addr v13, v14

    .line 35
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    :goto_15
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v4, :cond_23

    const-string v15, "0"

    invoke-virtual {v15, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_15

    .line 36
    :cond_23
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v13

    and-int/2addr v13, v14

    .line 37
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    :goto_16
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v14, v4, :cond_24

    const-string v14, "0"

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_16

    .line 38
    :cond_24
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :try_start_9
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_17

    :catch_1
    move-object v13, v6

    :goto_17
    :try_start_a
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v14
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_18

    :catch_2
    move-object v14, v6

    :goto_18
    :try_start_b
    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    const-string v15, "null"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    move-object v13, v6

    :cond_25
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    move-object v14, v6

    :cond_26
    new-instance v15, La4/a;

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    invoke-direct {v15, v12, v4, v13, v14}, La4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    goto :goto_14

    .line 40
    :cond_27
    :goto_19
    sget-object v4, La4/h;->a:Ljava/util/regex/Pattern;

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/bus/usb/devices"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_28

    goto :goto_1b

    :cond_28
    array-length v11, v10

    move v12, v7

    :goto_1a
    if-ge v12, v11, :cond_2a

    aget-object v13, v10, v12

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, La4/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_29

    new-instance v14, Ljava/io/File;

    const-string v15, "idVendor"

    invoke-direct {v14, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_29

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    .line 42
    :cond_2a
    :goto_1b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "@"

    if-eqz v12, :cond_32

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La4/a;

    .line 43
    iget-object v14, v12, La4/a;->b:Ljava/lang/String;

    if-eqz v14, :cond_2d

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    iget-object v15, v12, La4/a;->b:Ljava/lang/String;

    if-gez v14, :cond_2b

    goto :goto_1d

    :cond_2b
    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v15, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :goto_1d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :goto_1f
    move-object/from16 v2, v16

    goto :goto_20

    :cond_2c
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v7, 0x0

    goto :goto_1e

    :cond_2d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/io/File;

    iget-object v3, v12, La4/a;->a:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, La4/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_1f

    :cond_2f
    move-object v2, v6

    .line 44
    :goto_20
    invoke-static {v0, v12, v2}, Li5/a;->H0(Lcom/zalexdev/stryker/MainActivity;La4/a;Ljava/io/File;)La4/e;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, La4/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, La4/e;->b:Ljava/lang/String;

    if-nez v2, :cond_30

    const-string v2, "?"

    :cond_30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_31
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v7, 0x0

    goto/16 :goto_1c

    :cond_32
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, La4/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    goto :goto_21

    .line 45
    :cond_34
    invoke-static {v4, v13}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_21

    :cond_35
    invoke-static {v0, v6, v3}, Li5/a;->H0(Lcom/zalexdev/stryker/MainActivity;La4/a;Ljava/io/File;)La4/e;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 47
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La4/e;

    iget-object v11, v9, La4/e;->h:La4/c;

    if-eqz v11, :cond_38

    iget v11, v11, La4/c;->d:I

    const/4 v12, 0x2

    if-eq v11, v8, :cond_37

    if-eq v11, v12, :cond_37

    const/4 v13, 0x3

    if-ne v11, v13, :cond_39

    :cond_37
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    const/4 v12, 0x2

    :cond_39
    iget-object v11, v9, La4/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3a

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3a
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_3b
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_23

    :cond_3c
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, La4/e;

    :goto_23
    new-instance v2, Landroidx/emoji2/text/m;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v6, v5, v3}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 49
    sget-object v3, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_24

    :cond_3d
    iput-boolean v8, v0, Lcom/zalexdev/stryker/MainActivity;->m:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/zalexdev/stryker/MainActivity;->n:Z

    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/u0;)V

    const v0, 0x7f0a0205

    .line 52
    invoke-virtual {v3, v2, v6, v0}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v3, v8}, Landroidx/fragment/app/a;->h(Z)I

    :cond_3e
    :goto_24
    return-void

    :pswitch_12
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/topjohnwu/superuser/CallbackList;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    .line 54
    invoke-static {v0, v2}, Lcom/topjohnwu/superuser/CallbackList;->a(Lcom/topjohnwu/superuser/CallbackList;Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/component/session/XSession;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v2}, Lcom/stryker/terminal/component/session/XSession;->a(Lcom/stryker/terminal/component/session/XSession;Landroid/view/inputmethod/InputMethodManager;)V

    return-void

    :pswitch_14
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/component/session/XSession;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/stryker/terminal/component/session/XSession;->d(Lcom/stryker/terminal/component/session/XSession;Ljava/lang/String;)V

    return-void

    :pswitch_15
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, La2/a;

    const-string v3, "this$0"

    .line 55
    invoke-static {v0, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$innerFuture"

    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-boolean v4, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v4, :cond_3f

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v2, "future"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 56
    new-instance v2, Lm1/j;

    .line 57
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {v0, v2}, Lx1/k;->j(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_5
    move-exception v0

    goto :goto_26

    .line 59
    :cond_3f
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    invoke-virtual {v0, v2}, Lx1/k;->l(La2/a;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_25
    monitor-exit v3

    return-void

    :goto_26
    monitor-exit v3

    throw v0

    :pswitch_16
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Lw1/s;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Lx1/k;

    .line 60
    iget-object v3, v0, Lw1/s;->a:Lx1/k;

    .line 61
    iget-object v3, v3, Lx1/i;->a:Ljava/lang/Object;

    .line 62
    instance-of v3, v3, Lx1/a;

    if-nez v3, :cond_40

    .line 63
    iget-object v0, v0, Lw1/s;->d:Lm1/m;

    invoke-virtual {v0}, Lm1/m;->a()Lx1/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lx1/k;->l(La2/a;)Z

    goto :goto_27

    :cond_40
    invoke-virtual {v2, v8}, Lx1/i;->cancel(Z)Z

    :goto_27
    return-void

    :pswitch_17
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Lt1/f;

    const-string v3, "$listenersList"

    .line 64
    invoke-static {v0, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/b;

    iget-object v4, v2, Lt1/f;->e:Ljava/lang/Object;

    .line 65
    iput-object v4, v3, Ls1/b;->d:Ljava/lang/Object;

    .line 66
    iget-object v5, v3, Ls1/b;->e:Lr1/c;

    invoke-virtual {v3, v5, v4}, Ls1/b;->d(Lr1/c;Ljava/lang/Object;)V

    goto :goto_28

    :cond_41
    return-void

    :pswitch_18
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ln1/f0;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, La2/a;

    .line 67
    iget-object v0, v0, Ln1/f0;->q:Lx1/k;

    .line 68
    iget-object v0, v0, Lx1/i;->a:Ljava/lang/Object;

    .line 69
    instance-of v0, v0, Lx1/a;

    if-eqz v0, :cond_42

    check-cast v2, Lx1/i;

    .line 70
    invoke-virtual {v2, v8}, Lx1/i;->cancel(Z)Z

    :cond_42
    return-void

    :pswitch_19
    iget-object v0, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v2, Lf/o0;

    const-string v3, "$command"

    .line 71
    invoke-static {v0, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-virtual {v2}, Lf/o0;->a()V

    return-void

    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2}, Lf/o0;->a()V

    throw v3

    :pswitch_1a
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ly0/p;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 72
    sget v3, Ly0/n;->b:I

    const-string v3, "this$0"

    .line 73
    invoke-static {v0, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$tables"

    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, v0, Ly0/p;->c:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 75
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "tables"

    .line 76
    invoke-static {v2, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ly0/k;->j:Lk/g;

    monitor-enter v2

    :try_start_e
    iget-object v0, v0, Ly0/k;->j:Lk/g;

    invoke-virtual {v0}, Lk/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    move-object v3, v0

    check-cast v3, Lk/e;

    invoke-virtual {v3}, Lk/e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Lk/e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "(observer, wrapper)"

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly0/m;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_29

    :catchall_7
    move-exception v0

    goto :goto_2a

    :cond_43
    monitor-exit v2

    return-void

    :goto_2a
    monitor-exit v2

    throw v0

    :pswitch_1b
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    check-cast v0, Ly/o;

    iget-object v2, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    .line 77
    invoke-virtual {v0, v2}, Ly/o;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Lf/n0;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lf/o0;

    iget-object v0, v1, Lf/n0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    :try_start_f
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    invoke-virtual {v2}, Lf/o0;->a()V

    return-void

    :catchall_8
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2}, Lf/o0;->a()V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
.end method
