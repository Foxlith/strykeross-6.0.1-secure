.class public final synthetic Lo2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo2/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/m;->b:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v1, p0

    iget v0, v1, Lo2/m;->a:I

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v12, v1, Lo2/m;->b:Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->t:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f130680

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->t:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2
    :pswitch_0
    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    iget-object v2, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :pswitch_2
    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    invoke-static {v0}, Li5/a;->f(Landroid/content/Context;)Z

    move-result v0

    sget-object v4, Ln2/e;->a:Ln2/e;

    if-eqz v0, :cond_0

    const-string v0, "Artifacts bundled in the APK \u2014 installing offline"

    :goto_0
    invoke-virtual {v12, v4, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "Artifacts not bundled \u2014 downloading (~550 MB)"

    goto :goto_0

    :goto_1
    iget-object v0, v12, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    new-instance v4, Lo2/o;

    invoke-direct {v4, v12}, Lo2/o;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;)V

    .line 5
    invoke-static {v0}, Li5/a;->f(Landroid/content/Context;)Z

    move-result v6

    sget-object v7, Lu2/d;->h:Lu2/d;

    sget-object v8, Lu2/d;->g:Lu2/d;

    sget-object v9, Lu2/d;->f:Lu2/d;

    sget-object v10, Lu2/d;->e:Lu2/d;

    sget-object v11, Lu2/d;->d:Lu2/d;

    sget-object v13, Lu2/d;->c:Lu2/d;

    sget-object v14, Lu2/d;->b:Lu2/d;

    const-string v15, "Image"

    const-string v3, "libslirp.so"

    const-string v5, "Install error: "

    const-string v2, "QemuInstaller"

    const-string v1, "Post-install verification failed"

    move-object/from16 v16, v12

    const-string v12, "Rootless engine installed"

    move-object/from16 v17, v5

    const-string v5, "rootfs.img"

    move-object/from16 v18, v2

    const-string v2, ".gz"

    move-object/from16 v19, v1

    const-string v1, ".imgz"

    move-object/from16 v20, v12

    const-string v12, "initrd"

    move-object/from16 v21, v7

    const-string v7, "kernel"

    move-object/from16 v22, v8

    const-string v8, "QEMU"

    move-object/from16 v23, v5

    const-string v5, "Cannot create "

    if-nez v6, :cond_c

    const-string v6, "No bundled artifacts \u2014 fetching the engine from the release"

    move-object/from16 v24, v2

    const/4 v2, 0x1

    invoke-static {v4, v2, v6}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    .line 6
    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    :try_start_0
    invoke-static {v4, v14}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v4, v1, v0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    :goto_2
    move-object/from16 v1, v16

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-static {v0}, Li5/a;->J0(Landroid/content/Context;)Lf4/c;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v5, Lf4/c;->e:Ljava/lang/Object;

    :try_start_1
    invoke-static {v4, v13}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    iget-object v13, v5, Lf4/c;->a:Ljava/lang/Object;

    check-cast v13, Lf4/e;

    invoke-static {v0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    invoke-static {v13, v14, v8, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {v4, v11}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    iget-object v8, v5, Lf4/c;->b:Ljava/lang/Object;

    check-cast v8, Lf4/e;

    .line 7
    new-instance v11, Ljava/io/File;

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-direct {v11, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-static {v8, v11, v7, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v5, Lf4/c;->c:Ljava/lang/Object;

    check-cast v7, Lf4/e;

    invoke-static {v0}, Li5/a;->g0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-static {v7, v8, v12, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v4, v10}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    iget-object v5, v5, Lf4/c;->d:Ljava/lang/Object;

    check-cast v5, Lf4/e;

    .line 9
    new-instance v7, Ljava/io/File;

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-static {v5, v7, v3, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v4, v9}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-static {v0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    move-object v5, v6

    check-cast v5, Lf4/e;

    if-eqz v5, :cond_a

    move-object v5, v6

    check-cast v5, Lf4/e;

    iget-object v5, v5, Lf4/e;->a:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v5, v6

    check-cast v5, Lf4/e;

    iget-object v5, v5, Lf4/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v6

    check-cast v1, Lf4/e;

    iget-object v1, v1, Lf4/e;->a:Ljava/lang/String;

    move-object/from16 v5, v24

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    new-instance v1, Ljava/io/File;

    const-string v5, "rootfs.download"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast v6, Lf4/e;

    const-string v2, "rootfs"

    invoke-static {v6, v1, v2, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v2, "Decompressing rootfs (this can take a minute)"

    const/4 v5, 0x1

    invoke-static {v4, v5, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    invoke-static {v1, v3, v4}, Li5/a;->c0(Ljava/io/File;Ljava/io/File;Lo2/o;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    move-object/from16 v6, v22

    goto :goto_3

    :cond_a
    check-cast v6, Lf4/e;

    move-object/from16 v2, v23

    invoke-static {v6, v3, v2, v4}, Li5/a;->O(Lf4/e;Ljava/io/File;Ljava/lang/String;Lo2/o;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :goto_3
    invoke-static {v4, v6}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-static {v0, v4}, Li5/a;->I(Landroid/content/Context;Lo2/o;)V

    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v0

    invoke-virtual {v0}, Lu2/h;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v1, v21

    invoke-static {v4, v1}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    move-object/from16 v2, v20

    const/4 v1, 0x2

    invoke-static {v4, v1, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_b
    move-object/from16 v2, v19

    const/4 v1, 0x3

    invoke-static {v4, v1, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :goto_4
    const-string v1, "network install failed"

    move-object/from16 v2, v18

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v4, v1, v0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    move-object v6, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 v25, v21

    const-string v2, "Copying "

    move-object/from16 v17, v2

    const-string v2, "Decompressing "

    move-object/from16 v18, v2

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v19

    :try_start_2
    invoke-static {v4, v14}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    :goto_5
    invoke-static {v4, v1, v0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, v16

    goto/16 :goto_d

    :cond_d
    invoke-static {v4, v13}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    const-string v5, "rootless/qemu-system-aarch64"

    invoke-static {v0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    invoke-static {v2, v5, v13, v4, v8}, Li5/a;->v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V

    invoke-static {v0}, Li5/a;->y0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v13, 0x0

    invoke-virtual {v5, v8, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {v4, v11}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    const-string v5, "rootless/Image"

    .line 12
    new-instance v8, Ljava/io/File;

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    invoke-direct {v8, v11, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-static {v2, v5, v8, v4, v7}, Li5/a;->v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V

    const-string v5, "rootless/initrd.img"

    invoke-static {v0}, Li5/a;->g0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-static {v2, v5, v7, v4, v12}, Li5/a;->v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V

    invoke-static {v4, v10}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    const-string v5, "rootless/libslirp.so"

    .line 14
    new-instance v7, Ljava/io/File;

    invoke-static {v0}, Li5/a;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-static {v2, v5, v7, v4, v3}, Li5/a;->v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V

    invoke-static {v4, v9}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-static {v0}, Li5/a;->P0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    const-string v0, "rootfs asset not found in assets/rootless"

    const/4 v1, 0x3

    goto :goto_5

    .line 16
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "rootless/"

    if-nez v1, :cond_10

    :try_start_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    .line 17
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (already decompressed by the build)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v4, v6, v1}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v5, v23

    invoke-static {v2, v1, v3, v4, v5}, Li5/a;->v(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v1, v22

    goto :goto_8

    :cond_10
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (this can take a minute)"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v4, v6, v1}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Li5/a;->O0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v2, v1, v3, v4}, Li5/a;->b0(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;Lo2/o;)V

    goto :goto_6

    :goto_8
    invoke-static {v4, v1}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    invoke-static {v0, v4}, Li5/a;->I(Landroid/content/Context;Lo2/o;)V

    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v0

    invoke-virtual {v0}, Lu2/h;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v1, v25

    invoke-static {v4, v1}, Li5/a;->W0(Lo2/o;Lu2/d;)V

    move-object/from16 v2, v29

    const/4 v1, 0x2

    invoke-static {v4, v1, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    goto :goto_9

    :cond_11
    move-object/from16 v2, v28

    const/4 v1, 0x3

    invoke-static {v4, v1, v2}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_9
    if-nez v0, :cond_12

    goto/16 :goto_2

    .line 18
    :cond_12
    new-instance v0, Lo2/m;

    move-object/from16 v1, v16

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo2/m;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    const-string v2, "wlan_wifi"

    invoke-virtual {v0, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v3, "wlan0"

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    invoke-virtual {v0, v2, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    const-string v2, "wlan_scan"

    invoke-virtual {v0, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    invoke-virtual {v0, v2, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    const-string v2, "wlan_deauth"

    invoke-virtual {v0, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    invoke-virtual {v0, v2, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    const-string v2, "wlan_wps"

    invoke-virtual {v0, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    invoke-virtual {v0, v2, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    .line 20
    iget-object v0, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v2, "rootless_ram"

    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_17

    .line 22
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    invoke-static {v3}, Li5/a;->G0(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Ll4/l;->c0(ILjava/lang/String;)V

    :cond_17
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    .line 23
    iget-object v0, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "rootless_cpus"

    const/4 v4, 0x0

    .line 24
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_18

    .line 25
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    invoke-static {}, Li5/a;->F0()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Ll4/l;->c0(ILjava/lang/String;)V

    :cond_18
    sget-object v0, Ln2/e;->c:Ln2/e;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Defaults written (wlan0, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    .line 27
    iget-object v5, v5, Ll4/l;->b:Landroid/content/SharedPreferences;

    const/4 v6, 0x4

    .line 28
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vCPU, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    .line 30
    iget-object v3, v3, Ll4/l;->b:Landroid/content/SharedPreferences;

    const/16 v5, 0x1000

    .line 31
    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    sget-object v10, Lo2/q;->a:Lo2/q;

    const-string v9, "Booting VM (first boot is slow)..."

    const-string v8, "Rootless engine"

    .line 33
    new-instance v2, Lj2/b;

    const/4 v11, 0x4

    move-object v6, v2

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    sget-object v2, Ln2/e;->b:Ln2/e;

    const-string v3, "Booting QEMU VM for the first time"

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    invoke-static {v3}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v3

    new-instance v4, Lo2/o;

    invoke-direct {v4, v1}, Lo2/o;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;)V

    invoke-virtual {v3, v4}, Lu2/h;->y(Lu2/g;)Z

    move-result v3

    sget-object v4, Ln2/e;->d:Ln2/e;

    if-eqz v3, :cond_1b

    const-string v3, "Rootless engine ready"

    invoke-virtual {v1, v0, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    const-string v3, "Deploying built-in scripts (CORE, exploits)"

    invoke-virtual {v1, v2, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    invoke-static {v2}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v2

    invoke-virtual {v2}, Lu2/h;->h()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_a

    :cond_19
    move-object v0, v4

    :goto_a
    if-eqz v2, :cond_1a

    const-string v2, "Scripts deployed to the guest"

    goto :goto_b

    :cond_1a
    const-string v2, "Scripts deploy deferred to first use"

    :goto_b
    invoke-virtual {v1, v0, v2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    const-string v0, "VM did not report ready \u2014 it will retry on first use"

    invoke-virtual {v1, v4, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    :goto_c
    sget-object v10, Lo2/q;->b:Lo2/q;

    const-string v9, "Installation complete \u2014 moving on..."

    const-string v8, "Rootless engine"

    .line 35
    new-instance v0, Lj2/b;

    const/4 v11, 0x4

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    .line 36
    new-instance v0, Lo2/m;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo2/m;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    goto :goto_f

    :goto_d
    const-string v2, "install failed"

    move-object/from16 v3, v27

    .line 37
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v4, v2, v0}, Li5/a;->o0(Lo2/o;ILjava/lang/String;)V

    :goto_e
    sget-object v10, Lo2/q;->c:Lo2/q;

    const-string v0, "Extraction failed \u2014 see log"

    const-string v8, "Rootless engine"

    .line 38
    new-instance v2, Lj2/b;

    const/4 v11, 0x4

    move-object v6, v2

    move-object v7, v1

    move-object v9, v0

    invoke-direct/range {v6 .. v11}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    sget-object v2, Ln2/e;->e:Ln2/e;

    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    new-instance v0, Lo2/m;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo2/m;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    :goto_f
    return-void

    :pswitch_3
    move-object v1, v12

    .line 40
    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->i:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
