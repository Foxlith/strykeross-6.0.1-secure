.class public final synthetic Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/activity/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/activity/b;->a:I

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lo4/l;

    .line 1
    iget-object v0, v0, Ll4/c;->d:Ll4/l;

    const-string v2, "The network wait time was longer than expected."

    invoke-virtual {v0, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/vnc/VNCService;

    .line 2
    sget v2, Lcom/zalexdev/stryker/vnc/VNCService;->e:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCService;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 4
    sget v2, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_1
    iget-object v2, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d:Lu2/h;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4}, Lu2/h;->B(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    iget-object v0, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zalexdev/stryker/engine/RootlessService;->b(Landroid/content/Context;)V

    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lg3/b;

    .line 6
    iget-object v2, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v2, Lr3/v;

    iget-boolean v2, v2, Lr3/v;->g:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/v;

    invoke-virtual {v0}, Lr3/v;->e()V

    :cond_0
    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 7
    iget-object v2, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->a:Ll4/l;

    invoke-virtual {v2}, Ll4/l;->C()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->k()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->c:Landroidx/fragment/app/a0;

    new-instance v4, Lw2/h;

    const/16 v5, 0x10

    invoke-direct {v4, v0, v2, v5}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_5
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lr3/t;

    .line 8
    iget-object v2, v0, Lr3/t;->a:Landroid/content/Context;

    const v3, 0x7f130360

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Lr3/l;

    invoke-direct {v3, v0, v2, v9}, Lr3/l;-><init>(Lr3/t;Ljava/lang/String;I)V

    iget-object v0, v0, Lr3/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/utils/NoNestedScrollView;

    const/16 v2, 0x82

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lm3/c;

    .line 11
    invoke-virtual {v0}, Lm3/c;->a()V

    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    sget v2, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 12
    new-instance v2, Lf/q0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lf/q0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lf/q0;->H()Le3/b;

    move-result-object v2

    iget-object v3, v0, Lcom/zalexdev/stryker/hid/ui/HidFragment;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lw2/h;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v2, v5}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lf/q0;

    .line 13
    iget-object v2, v0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    .line 14
    iget-boolean v3, v2, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;->f:Z

    if-nez v3, :cond_5

    .line 15
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/hid/backchannel/ScreenViewerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_3
    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Ld3/e;

    .line 16
    iget-boolean v2, v0, Ld3/e;->p:Z

    if-nez v2, :cond_7

    iget-boolean v2, v0, Ld3/e;->r:Z

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    iput-boolean v8, v0, Ld3/e;->q:Z

    .line 17
    invoke-virtual {v0, v6, v9, v9, v9}, Ld3/e;->b(IIII)V

    invoke-virtual {v0, v9, v9, v9, v9}, Ld3/e;->b(IIII)V

    :cond_7
    :goto_4
    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;

    .line 18
    sget-object v2, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->f()V

    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 19
    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    const v2, 0x7f1301ff

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_5
    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lu2/t;

    .line 20
    :goto_6
    iget-boolean v2, v0, Lu2/t;->g:Z

    if-eqz v2, :cond_a

    :try_start_2
    iget-object v2, v0, Lu2/t;->a:Lu2/r;

    invoke-virtual {v2}, Lu2/r;->b()Lu2/q;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu2/t;->b(Lu2/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const-wide/16 v2, 0x1388

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_a
    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/engine/RootlessService;

    .line 21
    sget v3, Lcom/zalexdev/stryker/engine/RootlessService;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v3

    new-instance v4, Lf/q0;

    invoke-direct {v4, v0, v2}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lu2/h;->y(Lu2/g;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "VM not ready \u2014 will retry on demand"

    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/engine/RootlessService;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :try_start_4
    invoke-static {v0}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    move-result-object v0

    invoke-virtual {v0}, Lu2/h;->h()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_7
    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lu2/c;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/card/MaterialCardView;

    .line 24
    sget v2, Lcom/zalexdev/stryker/dashboard/Dashboard;->H:I

    .line 25
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_11
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;

    .line 26
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->b:Ll4/l;

    iget-object v3, v0, Lcom/zalexdev/stryker/arsenal/SploitDetailSheet;->c:Lcom/zalexdev/stryker/custom/Sploit;

    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/Sploit;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f(Ll4/l;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object v3

    new-instance v5, Lj2/g;

    invoke-direct {v5, v0, v2, v4}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void

    :pswitch_12
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;

    .line 27
    iget-object v2, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->c:Ll4/l;

    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    :pswitch_13
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/about/FeatureCardStack;

    .line 28
    iget-object v2, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    int-to-float v2, v2

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget v4, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->b:F

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    iget v4, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget v4, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->c:F

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    iput-boolean v9, v0, Lcom/zalexdev/stryker/about/FeatureCardStack;->k:Z

    invoke-virtual {v0, v8}, Lcom/zalexdev/stryker/about/FeatureCardStack;->a(Z)V

    return-void

    :pswitch_14
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/stryker/terminal/component/session/ShellTermSession;

    .line 29
    invoke-static {v0}, Lcom/stryker/terminal/component/session/ShellTermSession;->a(Lcom/stryker/terminal/component/session/ShellTermSession;)V

    return-void

    :pswitch_15
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/v1;

    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->g()V

    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v3, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    invoke-static {v3, v9, v2, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v9, v0, Landroidx/recyclerview/widget/v1;->h:I

    iget-object v0, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    invoke-interface {v0, v9, v2}, Landroidx/recyclerview/widget/c0;->onRemoved(II)V

    :goto_8
    return-void

    :pswitch_16
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    const-string v2, "this$0"

    .line 31
    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    .line 33
    iget-object v2, v2, Lx1/i;->a:Ljava/lang/Object;

    .line 34
    instance-of v2, v2, Lx1/a;

    if-eqz v2, :cond_e

    goto/16 :goto_d

    .line 35
    :cond_e
    iget-object v2, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    iget-object v2, v2, Landroidx/work/WorkerParameters;->b:Lm1/e;

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 36
    iget-object v2, v2, Lm1/e;->a:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 38
    :cond_f
    invoke-static {}, Lm1/n;->c()Lm1/n;

    move-result-object v2

    const-string v4, "get()"

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_c

    .line 39
    :cond_10
    iget-object v2, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    iget-object v2, v2, Landroidx/work/WorkerParameters;->d:Lm1/y;

    .line 40
    iget-object v4, v0, Lm1/m;->a:Landroid/content/Context;

    .line 41
    iget-object v5, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7, v5}, Lm1/y;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lm1/m;

    move-result-object v2

    iput-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Lm1/m;

    if-nez v2, :cond_11

    .line 42
    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 43
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v2, "future"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lm1/i;

    invoke-direct {v2}, Lm1/i;-><init>()V

    .line 45
    :goto_9
    invoke-virtual {v0, v2}, Lx1/k;->j(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 46
    :cond_11
    iget-object v2, v0, Lm1/m;->a:Landroid/content/Context;

    .line 47
    invoke-static {v2}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    move-result-object v2

    .line 48
    iget-object v4, v2, Ln1/a0;->e:Landroidx/work/impl/WorkDatabase;

    .line 49
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object v4

    .line 50
    iget-object v5, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    iget-object v5, v5, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 51
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id.toString()"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    move-result-object v4

    if-nez v4, :cond_12

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v2, "future"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 52
    new-instance v2, Lm1/i;

    invoke-direct {v2}, Lm1/i;-><init>()V

    goto :goto_9

    .line 53
    :cond_12
    new-instance v5, Lr1/c;

    .line 54
    iget-object v2, v2, Ln1/a0;->l:Lv1/m;

    const-string v6, "workManagerImpl.trackers"

    .line 55
    invoke-static {v2, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2, v0}, Lr1/c;-><init>(Lv1/m;Lr1/b;)V

    invoke-static {v4}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lr1/c;->b(Ljava/util/Collection;)V

    .line 56
    iget-object v2, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    iget-object v2, v2, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 57
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "id.toString()"

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lr1/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 58
    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 59
    :try_start_5
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->i:Lm1/m;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lm1/m;->e()Lx1/k;

    move-result-object v2

    const-string v4, "delegate!!.startWork()"

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lf/n0;

    invoke-direct {v4, v0, v2, v3}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 60
    iget-object v3, v0, Lm1/m;->b:Landroidx/work/WorkerParameters;

    iget-object v3, v3, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 61
    invoke-virtual {v2, v4, v3}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_d

    .line 62
    :catchall_2
    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 63
    iget-object v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-boolean v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Z

    if-eqz v3, :cond_13

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v3, "future"

    invoke-static {v0, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v3, Lm1/j;

    .line 65
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {v0, v3}, Lx1/k;->j(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_b

    .line 67
    :cond_13
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v3, "future"

    invoke-static {v0, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lm1/i;

    invoke-direct {v3}, Lm1/i;-><init>()V

    .line 69
    invoke-virtual {v0, v3}, Lx1/k;->j(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 70
    :goto_a
    monitor-exit v2

    goto :goto_d

    :goto_b
    monitor-exit v2

    throw v0

    .line 71
    :cond_14
    sget-object v2, Lz1/a;->a:Ljava/lang/String;

    .line 72
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v2, "future"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v2, Lm1/j;

    .line 74
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {v0, v2}, Lx1/k;->j(Ljava/lang/Object;)Z

    goto :goto_d

    .line 76
    :cond_15
    :goto_c
    sget-object v3, Lz1/a;->a:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    .line 77
    invoke-virtual {v2, v3, v4}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->h:Lx1/k;

    const-string v2, "future"

    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v2, Lm1/i;

    invoke-direct {v2}, Lm1/i;-><init>()V

    goto/16 :goto_9

    :goto_d
    return-void

    :pswitch_17
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Ly0/k;

    .line 79
    iget-object v2, v0, Ly0/k;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iput-boolean v9, v0, Ly0/k;->g:Z

    iget-object v3, v0, Ly0/k;->i:Ly0/i;

    .line 80
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 81
    :try_start_8
    iget-object v0, v3, Ly0/i;->b:[Z

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([ZZ)V

    iput-boolean v8, v3, Ly0/i;->d:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 82
    monitor-exit v2

    return-void

    :catchall_4
    move-exception v0

    .line 83
    :try_start_a
    monitor-exit v3

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    .line 84
    monitor-exit v2

    throw v0

    :pswitch_18
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Landroid/app/Activity;

    .line 85
    sget v0, Lv/g;->b:I

    .line 86
    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v0, v11, :cond_16

    .line 87
    sget-object v0, Lv/i;->a:Ljava/lang/Class;

    .line 88
    invoke-virtual {v10}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_14

    :cond_16
    sget-object v11, Lv/i;->a:Ljava/lang/Class;

    const/16 v11, 0x1a

    if-eq v0, v11, :cond_18

    if-ne v0, v2, :cond_17

    goto :goto_e

    :cond_17
    move v12, v9

    goto :goto_f

    :cond_18
    :goto_e
    move v12, v8

    :goto_f
    sget-object v13, Lv/i;->f:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_19

    if-nez v13, :cond_19

    goto/16 :goto_13

    :cond_19
    sget-object v12, Lv/i;->e:Ljava/lang/reflect/Method;

    if-nez v12, :cond_1a

    sget-object v12, Lv/i;->d:Ljava/lang/reflect/Method;

    if-nez v12, :cond_1a

    goto :goto_13

    :cond_1a
    :try_start_b
    sget-object v12, Lv/i;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1b

    goto :goto_13

    :cond_1b
    sget-object v14, Lv/i;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v15

    new-instance v5, Lv/h;

    invoke-direct {v5, v10}, Lv/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v15, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    sget-object v3, Lv/i;->g:Landroid/os/Handler;

    :try_start_c
    new-instance v4, Landroidx/appcompat/widget/j;

    invoke-direct {v4, v5, v12, v8, v9}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eq v0, v11, :cond_1e

    if-ne v0, v2, :cond_1d

    goto :goto_10

    :cond_1d
    :try_start_d
    invoke-virtual {v10}, Landroid/app/Activity;->recreate()V

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_12

    :cond_1e
    :goto_10
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v12, v0, v9

    aput-object v7, v0, v8

    aput-object v7, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v4, 0x5

    aput-object v7, v0, v4

    const/4 v4, 0x6

    aput-object v7, v0, v4

    const/4 v4, 0x7

    aput-object v2, v0, v4

    const/16 v4, 0x8

    aput-object v2, v0, v4

    invoke-virtual {v13, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :goto_11
    :try_start_e
    new-instance v0, Landroidx/appcompat/widget/j;

    invoke-direct {v0, v15, v5, v6, v9}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :goto_12
    new-instance v2, Landroidx/appcompat/widget/j;

    invoke-direct {v2, v15, v5, v6, v9}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 89
    :catchall_7
    :goto_13
    invoke-virtual {v10}, Landroid/app/Activity;->recreate()V

    :cond_1f
    :goto_14
    return-void

    :pswitch_19
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_25

    .line 90
    sget-object v2, Lf/u;->a:Lf/o0;

    .line 91
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v8, :cond_25

    .line 92
    invoke-static {}, Lv1/f;->D()Z

    move-result v3

    const-string v4, "locale"

    if-eqz v3, :cond_22

    .line 93
    sget-object v3, Lf/u;->g:Ln/c;

    invoke-virtual {v3}, Ln/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/u;

    if-eqz v5, :cond_20

    check-cast v5, Lf/h0;

    .line 94
    iget-object v5, v5, Lf/h0;->k:Landroid/content/Context;

    if-eqz v5, :cond_20

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :cond_21
    if-eqz v7, :cond_23

    .line 95
    invoke-static {v7}, Lf/t;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v3

    .line 96
    new-instance v5, Ld0/h;

    new-instance v6, Ld0/j;

    invoke-direct {v6, v3}, Ld0/j;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Ld0/h;-><init>(Ld0/j;)V

    goto :goto_15

    .line 97
    :cond_22
    sget-object v5, Lf/u;->c:Ld0/h;

    if-eqz v5, :cond_23

    goto :goto_15

    .line 98
    :cond_23
    sget-object v5, Ld0/h;->b:Ld0/h;

    .line 99
    :goto_15
    iget-object v3, v5, Ld0/h;->a:Ld0/i;

    check-cast v3, Ld0/j;

    .line 100
    iget-object v3, v3, Ld0/j;->a:Landroid/os/LocaleList;

    .line 101
    invoke-virtual {v3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 102
    invoke-static {v0}, La/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-static {v3}, Lf/s;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-static {v4, v3}, Lf/t;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 103
    :cond_25
    sput-boolean v8, Lf/u;->f:Z

    return-void

    :pswitch_1a
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/p;

    .line 104
    invoke-virtual {v0}, Landroidx/activity/p;->b()V

    return-void

    :pswitch_1b
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/j;

    invoke-static {v0}, Landroidx/activity/j;->a(Landroidx/activity/j;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/h;

    invoke-virtual {v0}, Landroidx/activity/h;->invalidateMenu()V

    return-void

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
        :pswitch_0
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
    .end packed-switch
.end method
