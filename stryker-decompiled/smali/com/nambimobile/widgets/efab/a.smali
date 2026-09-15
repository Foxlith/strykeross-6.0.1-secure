.class public final synthetic Lcom/nambimobile/widgets/efab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput p2, p0, Lcom/nambimobile/widgets/efab/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/nambimobile/widgets/efab/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    sget-object v0, Ln2/e;->a:Ln2/e;

    const-string v4, "Starting..."

    iget v1, p0, Lcom/nambimobile/widgets/efab/a;->a:I

    const-string v7, "Stryker 6.0.1 \u00b7 build 601"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/nambimobile/widgets/efab/a;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v5, [Ll4/c;

    sget p1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 1
    aget-object p1, v5, v9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll4/c;->a()V

    :cond_0
    return-void

    :pswitch_0
    check-cast v5, Lcom/zalexdev/stryker/utils/LicenseActivity;

    .line 2
    sget p1, Lcom/zalexdev/stryker/utils/LicenseActivity;->a:I

    .line 3
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    move-object v7, v5

    check-cast v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    .line 4
    iget-object v12, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->d:Lt2/m;

    .line 5
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0026

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f0a0591

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0a01c9

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0a01ac

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0a0196

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    iget-object v1, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    iget-object v1, v1, Ll4/l;->e:Ll4/m;

    invoke-virtual {v1}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    iget-object v1, v1, Ll4/l;->e:Ll4/m;

    invoke-virtual {v1}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    iget-object v1, v1, Ll4/l;->e:Ll4/m;

    invoke-virtual {v1}, Ll4/m;->h()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v9}, Landroid/view/View;->setEnabled(Z)V

    const-string v1, "none"

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ld4/d;

    const/4 v3, 0x6

    invoke-direct {v2, v7, v8, v3}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "ip link set $ifc down;echo \'4\' > /sys/module/wlan/parameters/con_mode;ip link set $ifc up"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "ip link set $ifc down;iw dev $ifc set type monitor;ip link set $ifc up"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "airmon-ng start $ifc $ch"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v4, 0x1090003

    .line 7
    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, v7, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "ip link set $ifc down;echo \'0\' > /sys/module/wlan/parameters/con_mode;ip link set $ifc up;svc wifi enable"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "ip link set $ifc down;iw dev $ifc set type managed;ip link set $ifc up"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "airmon-ng stop $ifc"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v10, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0a0070

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f0a00f3

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lj2/i;

    const/16 v4, 0xd

    invoke-direct {v3, p1, v4}, Lj2/i;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Li4/d;

    move-object v6, v2

    move-object v9, v0

    move-object v13, p1

    invoke-direct/range {v6 .. v13}, Li4/d;-><init>(Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Lt2/m;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :pswitch_2
    check-cast v5, Lcom/zalexdev/stryker/searchsploit/ExploitWebview;

    .line 10
    sget p1, Lcom/zalexdev/stryker/searchsploit/ExploitWebview;->b:I

    .line 11
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    check-cast v5, Landroidx/fragment/app/u0;

    .line 12
    sget p1, Lcom/zalexdev/stryker/metasploit/SetValues;->p:I

    .line 13
    invoke-static {v5, v5}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    move-result-object p1

    const v0, 0x7f01002d

    const v1, 0x7f01002e

    .line 14
    invoke-virtual {p1, v0, v1, v9, v9}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 15
    new-instance v0, Lcom/zalexdev/stryker/metasploit/Metasploit;

    invoke-direct {v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;-><init>()V

    const v1, 0x7f0a0205

    .line 16
    invoke-virtual {p1, v0, v3, v1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p1, v9}, Landroidx/fragment/app/a;->h(Z)I

    return-void

    :pswitch_4
    check-cast v5, Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    .line 18
    sget p1, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->b:I

    .line 19
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_5
    check-cast v5, Ls2/e;

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ftp://"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Ls2/e;->f:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/custom/Device;

    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ls2/e;->a(Ljava/lang/String;)V

    return-void

    :pswitch_6
    check-cast v5, [Ln3/l;

    .line 21
    sget-object p1, Ln3/h;->a:[Ljava/lang/String;

    .line 22
    aget-object p1, v5, v9

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ln3/l;->c()V

    :cond_2
    return-void

    :pswitch_7
    check-cast v5, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;

    .line 23
    sget-object p1, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->m:Ljava/util/regex/Pattern;

    .line 24
    invoke-virtual {v5}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e()V

    return-void

    :pswitch_8
    check-cast v5, Lcom/zalexdev/stryker/geomac/GeoMacInline;

    .line 25
    sget-object p1, Lcom/zalexdev/stryker/geomac/GeoMacInline;->c:Ljava/util/regex/Pattern;

    .line 26
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_9
    check-cast v5, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    .line 27
    sget p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->i:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance p1, Lp2/o;

    invoke-direct {p1, v5}, Lp2/o;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;)V

    invoke-static {v3, p1}, Lcom/zalexdev/stryker/arsenal/AddExploitSheet;->e(Lcom/zalexdev/stryker/custom/Exploit;Lp2/c;)Lcom/zalexdev/stryker/arsenal/AddExploitSheet;

    move-result-object p1

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    const-string v1, "arsenal_add_sheet"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/u0;Ljava/lang/String;)V

    return-void

    :pswitch_a
    move-object p1, v5

    check-cast p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;

    .line 29
    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->t:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->n:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->q:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Lo2/q;->a:Lo2/q;

    const-string v3, "Rootless engine"

    .line 30
    new-instance v10, Lj2/b;

    const/4 v6, 0x4

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v10}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {p1, v0, v7}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    const-string v1, "Engine: rootless (QEMU aarch64)"

    invoke-virtual {p1, v0, v1}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e(Ln2/e;Ljava/lang/String;)V

    new-instance v0, Lo2/m;

    invoke-direct {v0, p1, v9}, Lo2/m;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo2/m;

    invoke-direct {v1, p1, v8}, Lo2/m;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_b
    check-cast v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    .line 32
    iget-boolean p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->v:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/a;->b(Ll4/l;I)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    check-cast p1, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->e(I)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lo2/k;

    invoke-direct {v0, v5, v8}, Lo2/k;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-boolean p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->u:Z

    if-eqz p1, :cond_4

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_2

    .line 33
    :cond_4
    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->h:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lo2/k;

    invoke-direct {v1, v5, v0}, Lo2/k;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;I)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void

    :pswitch_c
    check-cast v5, Lcom/zalexdev/stryker/appintro/slides/Slide6Final;

    .line 34
    sget p1, Lcom/zalexdev/stryker/appintro/slides/Slide6Final;->a:I

    .line 35
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zalexdev/stryker/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_3
    return-void

    :pswitch_d
    move-object p1, v5

    check-cast p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 36
    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->t:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->n:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->q:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 37
    new-instance v1, Lo2/c;

    invoke-direct {v1, p1, v2}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-virtual {p1, v1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    sget-object v5, Lo2/i;->a:Lo2/i;

    const-string v3, "Stryker chroot"

    .line 38
    new-instance v8, Lj2/b;

    const/4 v6, 0x3

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v8}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j(Ljava/lang/Runnable;)V

    const-string v1, "Architecture: arm64-v8a"

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v7}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zalexdev/stryker/appintro/slides/Slide3;->a:Landroidx/fragment/app/a0;

    instance-of v1, v0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "migrate_legacy_chroot"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ln2/e;->d:Ln2/e;

    const-string v1, "An older Linux system is installed. It will be unmounted and replaced with the Debian rootfs; installed packages are not carried over."

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->h(Ln2/e;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo2/c;

    invoke-direct {v1, p1, v9}, Lo2/c;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_e
    check-cast v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;

    .line 43
    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->l:Landroid/widget/ProgressBar;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->i:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->m:Landroid/widget/ProgressBar;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->j:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->n:Landroid/widget/ProgressBar;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->k:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/appintro/slides/Slide2;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 45
    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->c:Ll4/l;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/Slide2;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "package:"

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_8

    .line 46
    invoke-static {}, Landroidx/core/view/v2;->q()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ll4/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v0}, Ll4/l;->g(Landroidx/fragment/app/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :try_start_1
    invoke-virtual {p1, v0}, Ll4/l;->g(Landroidx/fragment/app/a0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :catch_1
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lo2/b;

    invoke-direct {v0, v5, v9}, Lo2/b;-><init>(Lcom/zalexdev/stryker/appintro/slides/Slide2;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_f
    check-cast v5, Lcom/zalexdev/stryker/appintro/slides/Slide1;

    .line 48
    iget-object p1, v5, Lcom/zalexdev/stryker/appintro/slides/Slide1;->b:Ll4/l;

    iget-object v0, v5, Lcom/zalexdev/stryker/appintro/slides/Slide1;->c:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void

    :pswitch_10
    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 49
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    const p1, 0x800003

    .line 50
    invoke-virtual {v5, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 51
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 52
    invoke-virtual {v5, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    :cond_a
    return-void

    :pswitch_11
    check-cast v5, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;

    .line 53
    invoke-static {v5, p1}, Lcom/stryker/terminal/ui/settings/UiPrefsFragment;->g(Lcom/stryker/terminal/ui/settings/UiPrefsFragment;Landroid/view/View;)V

    return-void

    :pswitch_12
    check-cast v5, Lcom/nambimobile/widgets/efab/FabOption;

    invoke-static {v5, p1}, Lcom/nambimobile/widgets/efab/FabOption;->a(Lcom/nambimobile/widgets/efab/FabOption;Landroid/view/View;)V

    return-void

    :pswitch_13
    check-cast v5, Lcom/nambimobile/widgets/efab/ExpandableFab;

    invoke-static {v5, p1}, Lcom/nambimobile/widgets/efab/ExpandableFab;->a(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
