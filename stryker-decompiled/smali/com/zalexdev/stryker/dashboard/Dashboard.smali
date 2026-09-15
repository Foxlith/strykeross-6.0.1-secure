.class public Lcom/zalexdev/stryker/dashboard/Dashboard;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Lnet/cachapa/expandablelayout/ExpandableLayout;

.field public E:Lnet/cachapa/expandablelayout/ExpandableLayout;

.field public F:Ljava/util/concurrent/ExecutorService;

.field public final G:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public final d:Landroidx/fragment/app/x0;

.field public e:Lu2/h;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ScrollView;

.field public m:Ljava/lang/String;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Lcom/zalexdev/stryker/utils/SparklineView;

.field public r:Lcom/zalexdev/stryker/utils/SparklineView;

.field public s:Lcom/zalexdev/stryker/utils/VmRingView;

.field public t:Lnet/cachapa/expandablelayout/ExpandableLayout;

.field public u:Lnet/cachapa/expandablelayout/ExpandableLayout;

.field public final v:Landroid/os/Handler;

.field public w:Z

.field public x:Lt2/c;

.field public y:Lu2/t;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->d:Landroidx/fragment/app/x0;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->w:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static d(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%04x:%04x"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static i(Landroid/view/View;ILnet/cachapa/expandablelayout/ExpandableLayout;Landroid/widget/TextView;Lt2/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/j;

    const/4 v0, 0x2

    invoke-direct {p1, p2, p3, p4, v0}, Lj2/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    const-class v2, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.stryker.terminal.NEW_SESSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lt2/c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    const-string v2, "vm-log-tail"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lu2/h;->z()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lo/i;->c(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v1, v3, :cond_4

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const-string v1, "Stopped"

    .line 26
    .line 27
    const v3, 0x7f060074

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    move v7, v4

    .line 32
    move v4, v3

    .line 33
    move v3, v7

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 36
    .line 37
    iget-object v3, v1, Lu2/h;->k:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    const-string v1, ""

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, v1, Lu2/h;->k:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const-string v1, "Ready"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const-string v3, "Ready \u00b7 "

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_1
    const v3, 0x7f060073

    .line 62
    .line 63
    .line 64
    move v4, v3

    .line 65
    move v3, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    const-string v1, "Booting\u2026"

    .line 68
    .line 69
    const v4, 0x7f060316

    .line 70
    .line 71
    .line 72
    :goto_2
    iget-object v5, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    if-eq v0, v2, :cond_5

    .line 77
    .line 78
    const/high16 v6, -0x40800000    # -1.0f

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Lcom/zalexdev/stryker/utils/VmRingView;->setProgress(F)V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 84
    .line 85
    invoke-virtual {v5, v3}, Lcom/zalexdev/stryker/utils/VmRingView;->setState(I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    if-eq v0, v2, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 98
    .line 99
    sget-object v2, Lx/g;->a:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {v1, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 109
    .line 110
    invoke-static {v0}, Li5/a;->D(Ll4/l;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 117
    .line 118
    invoke-static {v1, v2}, Li5/a;->E(Landroid/content/Context;Ll4/l;)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iget-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 123
    .line 124
    invoke-static {v2}, Li5/a;->C(Landroid/content/Context;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    invoke-static {v2, v3}, Li5/a;->e0(J)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {}, Li5/a;->n0()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    iget-object v4, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->g:Landroid/widget/TextView;

    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, " vCPU \u00b7 "

    .line 147
    .line 148
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v0, " MB \u00b7 "

    .line 155
    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v0, " disk \u00b7 "

    .line 163
    .line 164
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    if-eqz v3, :cond_7

    .line 168
    .line 169
    const-string v0, "KVM"

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    const-string v0, "TCG"

    .line 173
    .line 174
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_4
    return-void
.end method

.method public final h()V
    .locals 10

    .line 1
    iget-object v3, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->y:Lu2/t;

    iget-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    iget-object v6, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->F:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    const/4 v0, 0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->D:Lnet/cachapa/expandablelayout/ExpandableLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/cachapa/expandablelayout/ExpandableLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_0
    :try_start_0
    new-instance v9, Lj2/d;

    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj2/d;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-interface {v6, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final j(Lu2/s;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "\u2014"

    return-object p1

    :cond_0
    iget-boolean v1, p1, Lu2/s;->e:Z

    if-nez v1, :cond_1

    const p1, 0x7f1306f9

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean p1, p1, Lu2/s;->f:Z

    if-eqz p1, :cond_2

    const p1, 0x7f1306f7

    goto :goto_0

    :cond_2
    const p1, 0x7f1306fe

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    const p3, 0x7f0d005b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->w:Z

    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->v:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->F:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->F:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->y:Lu2/t;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->D:Lnet/cachapa/expandablelayout/ExpandableLayout;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->E:Lnet/cachapa/expandablelayout/ExpandableLayout;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->A:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->C:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->q:Lcom/zalexdev/stryker/utils/SparklineView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->r:Lcom/zalexdev/stryker/utils/SparklineView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->n:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->p:Landroid/widget/TextView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->w:Z

    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->x:Lt2/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->w:Z

    iget-object v1, p0, Lcom/zalexdev/stryker/dashboard/Dashboard;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x7f0a0696

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/widget/TextView;

    .line 13
    .line 14
    const v3, 0x7f0a0699

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/widget/TextView;

    .line 22
    .line 23
    const v4, 0x7f0a03c8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    const v5, 0x7f0a03c4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const v6, 0x7f0a03bf

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    const v7, 0x7f0a03bd

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    const v8, 0x7f0a03c7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    const v9, 0x7f0a03c6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const v10, 0x7f0a03be

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    const v11, 0x7f0a03c5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    check-cast v11, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const v12, 0x7f0a0634

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    check-cast v12, Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const v13, 0x7f0a042e

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    const v14, 0x7f0a0712

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    check-cast v14, Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const v15, 0x7f0a04f4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    check-cast v15, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    move-object/from16 p2, v15

    .line 132
    .line 133
    const v15, 0x7f0a0553

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    check-cast v15, Landroid/widget/TextView;

    .line 141
    .line 142
    move-object/from16 v16, v14

    .line 143
    .line 144
    const v14, 0x7f0a04f5

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Landroid/widget/TextView;

    .line 152
    .line 153
    move-object/from16 v17, v13

    .line 154
    .line 155
    const v13, 0x7f0a04f6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    check-cast v13, Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 165
    .line 166
    move-object/from16 v18, v12

    .line 167
    .line 168
    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 169
    .line 170
    invoke-virtual {v1, v12}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    .line 176
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 177
    .line 178
    filled-new-array {v12}, [Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    move-object/from16 v19, v10

    .line 183
    .line 184
    const/16 v10, 0x7b

    .line 185
    .line 186
    invoke-static {v1, v12, v10}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    move-object/from16 v19, v10

    .line 191
    .line 192
    :goto_0
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 193
    .line 194
    iget-object v10, v1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 195
    .line 196
    const-string v12, "dashboard_open"

    .line 197
    .line 198
    move-object/from16 v20, v11

    .line 199
    .line 200
    const/4 v11, 0x0

    .line 201
    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    const/4 v11, 0x1

    .line 206
    add-int/2addr v10, v11

    .line 207
    invoke-virtual {v1, v10, v12}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 211
    .line 212
    const-string v10, "username"

    .line 213
    .line 214
    invoke-virtual {v1, v10}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const v10, 0x7f130172

    .line 219
    .line 220
    .line 221
    if-eqz v1, :cond_2

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v21

    .line 227
    if-nez v21, :cond_2

    .line 228
    .line 229
    const-string v11, "User"

    .line 230
    .line 231
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-eqz v11, :cond_1

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v10, ", "

    .line 251
    .line 252
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_2
    :goto_2
    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_1

    .line 271
    :goto_3
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 272
    .line 273
    invoke-virtual {v1}, Ll4/l;->G()Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 282
    .line 283
    invoke-virtual {v2}, Ll4/l;->D()Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v1, :cond_3

    .line 292
    .line 293
    if-nez v2, :cond_3

    .line 294
    .line 295
    const v10, 0x7f13017a

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    const v11, 0x7f13017b

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v11, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    const/16 v1, 0x8

    .line 332
    .line 333
    if-lez v2, :cond_4

    .line 334
    .line 335
    const/4 v3, 0x0

    .line 336
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    .line 345
    .line 346
    const v2, 0x7f13016c

    .line 347
    .line 348
    .line 349
    :goto_5
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_4
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    const v2, 0x7f13016b

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :goto_6
    new-instance v2, Lt2/a;

    .line 365
    .line 366
    const/4 v3, 0x0

    .line 367
    invoke-direct {v2, v0, v3}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    new-instance v2, Lt2/a;

    .line 374
    .line 375
    const/4 v3, 0x3

    .line 376
    invoke-direct {v2, v0, v3}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    .line 381
    .line 382
    new-instance v2, Lt2/a;

    .line 383
    .line 384
    const/4 v5, 0x4

    .line 385
    invoke-direct {v2, v0, v5}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    new-instance v2, Lt2/a;

    .line 392
    .line 393
    const/4 v6, 0x5

    .line 394
    invoke-direct {v2, v0, v6}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Lt2/a;

    .line 401
    .line 402
    const/4 v6, 0x6

    .line 403
    invoke-direct {v2, v0, v6}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Lt2/a;

    .line 410
    .line 411
    const/4 v7, 0x7

    .line 412
    invoke-direct {v2, v0, v7}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    .line 417
    .line 418
    new-instance v2, Lt2/a;

    .line 419
    .line 420
    invoke-direct {v2, v0, v1}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 421
    .line 422
    .line 423
    move-object/from16 v11, v20

    .line 424
    .line 425
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    .line 427
    .line 428
    new-instance v2, Lt2/a;

    .line 429
    .line 430
    const/16 v7, 0x9

    .line 431
    .line 432
    invoke-direct {v2, v0, v7}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v10, v19

    .line 436
    .line 437
    invoke-virtual {v10, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    new-instance v2, Lt2/a;

    .line 441
    .line 442
    const/16 v7, 0xa

    .line 443
    .line 444
    invoke-direct {v2, v0, v7}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v7, v18

    .line 448
    .line 449
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    .line 451
    .line 452
    new-instance v2, Lt2/a;

    .line 453
    .line 454
    const/16 v7, 0xb

    .line 455
    .line 456
    invoke-direct {v2, v0, v7}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v13, v17

    .line 460
    .line 461
    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    new-instance v2, Lt2/a;

    .line 465
    .line 466
    const/4 v8, 0x1

    .line 467
    invoke-direct {v2, v0, v8}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 468
    .line 469
    .line 470
    move-object/from16 v14, v16

    .line 471
    .line 472
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    .line 474
    .line 475
    new-instance v2, Lt2/a;

    .line 476
    .line 477
    const/4 v8, 0x2

    .line 478
    invoke-direct {v2, v0, v8}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v15, p2

    .line 482
    .line 483
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    .line 485
    .line 486
    const v2, 0x7f0a039b

    .line 487
    .line 488
    .line 489
    move-object/from16 v9, p1

    .line 490
    .line 491
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 496
    .line 497
    iget-object v10, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 498
    .line 499
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    invoke-static {v10}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 503
    .line 504
    .line 505
    move-result v10

    .line 506
    if-nez v10, :cond_5

    .line 507
    .line 508
    new-instance v10, Ljava/lang/Thread;

    .line 509
    .line 510
    new-instance v11, Lf/n0;

    .line 511
    .line 512
    const/16 v13, 0x1a

    .line 513
    .line 514
    invoke-direct {v11, v0, v2, v13}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 515
    .line 516
    .line 517
    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 521
    .line 522
    .line 523
    :cond_5
    const v10, 0x7f0a039d

    .line 524
    .line 525
    .line 526
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 531
    .line 532
    const v11, 0x7f0a039c

    .line 533
    .line 534
    .line 535
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 536
    .line 537
    .line 538
    move-result-object v11

    .line 539
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 540
    .line 541
    new-instance v13, Lt2/b;

    .line 542
    .line 543
    const/4 v14, 0x0

    .line 544
    invoke-direct {v13, v0, v2, v14}, Lt2/b;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;Lcom/google/android/material/card/MaterialCardView;I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    .line 549
    .line 550
    new-instance v10, Lt2/b;

    .line 551
    .line 552
    const/4 v13, 0x1

    .line 553
    invoke-direct {v10, v0, v2, v13}, Lt2/b;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;Lcom/google/android/material/card/MaterialCardView;I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    .line 558
    .line 559
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 560
    .line 561
    const-string v10, "exploits_v30"

    .line 562
    .line 563
    invoke-virtual {v2, v10}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-nez v2, :cond_6

    .line 568
    .line 569
    new-instance v2, Ljava/lang/Thread;

    .line 570
    .line 571
    new-instance v10, Lt2/c;

    .line 572
    .line 573
    invoke-direct {v10, v0, v14}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 574
    .line 575
    .line 576
    invoke-direct {v2, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 580
    .line 581
    .line 582
    :cond_6
    const v2, 0x7f0a06bd

    .line 583
    .line 584
    .line 585
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    const/16 v10, 0xc

    .line 590
    .line 591
    if-nez v2, :cond_7

    .line 592
    .line 593
    goto/16 :goto_8

    .line 594
    .line 595
    :cond_7
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 596
    .line 597
    .line 598
    const v2, 0x7f0a06be

    .line 599
    .line 600
    .line 601
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    check-cast v2, Landroid/widget/TextView;

    .line 606
    .line 607
    const v11, 0x7f0a06ec

    .line 608
    .line 609
    .line 610
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 611
    .line 612
    .line 613
    move-result-object v11

    .line 614
    check-cast v11, Landroid/widget/TextView;

    .line 615
    .line 616
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 617
    .line 618
    const v11, 0x7f0a06e6

    .line 619
    .line 620
    .line 621
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 622
    .line 623
    .line 624
    move-result-object v11

    .line 625
    check-cast v11, Landroid/widget/TextView;

    .line 626
    .line 627
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->g:Landroid/widget/TextView;

    .line 628
    .line 629
    const v11, 0x7f0a06f4

    .line 630
    .line 631
    .line 632
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 633
    .line 634
    .line 635
    move-result-object v11

    .line 636
    check-cast v11, Landroid/widget/TextView;

    .line 637
    .line 638
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 639
    .line 640
    const v11, 0x7f0a06ed

    .line 641
    .line 642
    .line 643
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v11

    .line 647
    check-cast v11, Landroid/widget/TextView;

    .line 648
    .line 649
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->i:Landroid/widget/TextView;

    .line 650
    .line 651
    const v11, 0x7f0a06ee

    .line 652
    .line 653
    .line 654
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 655
    .line 656
    .line 657
    move-result-object v11

    .line 658
    check-cast v11, Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 659
    .line 660
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->t:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 661
    .line 662
    const v11, 0x7f0a06e4

    .line 663
    .line 664
    .line 665
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 666
    .line 667
    .line 668
    move-result-object v11

    .line 669
    check-cast v11, Lcom/zalexdev/stryker/utils/VmRingView;

    .line 670
    .line 671
    iput-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->s:Lcom/zalexdev/stryker/utils/VmRingView;

    .line 672
    .line 673
    iget-object v11, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 674
    .line 675
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    invoke-static {v11}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 679
    .line 680
    .line 681
    move-result v11

    .line 682
    if-nez v11, :cond_e

    .line 683
    .line 684
    if-eqz v2, :cond_8

    .line 685
    .line 686
    const-string v3, "Chroot engine"

    .line 687
    .line 688
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    .line 690
    .line 691
    :cond_8
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 692
    .line 693
    if-eqz v2, :cond_9

    .line 694
    .line 695
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 696
    .line 697
    .line 698
    :cond_9
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->i:Landroid/widget/TextView;

    .line 699
    .line 700
    if-eqz v2, :cond_a

    .line 701
    .line 702
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    .line 704
    .line 705
    :cond_a
    new-array v2, v7, [I

    .line 706
    .line 707
    fill-array-data v2, :array_0

    .line 708
    .line 709
    .line 710
    const/4 v3, 0x0

    .line 711
    :goto_7
    if-ge v3, v7, :cond_c

    .line 712
    .line 713
    aget v5, v2, v3

    .line 714
    .line 715
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    if-eqz v5, :cond_b

    .line 720
    .line 721
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 722
    .line 723
    .line 724
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 725
    .line 726
    goto :goto_7

    .line 727
    :cond_c
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->f:Landroid/widget/TextView;

    .line 728
    .line 729
    if-nez v1, :cond_d

    .line 730
    .line 731
    goto/16 :goto_8

    .line 732
    .line 733
    :cond_d
    new-instance v1, Ljava/lang/Thread;

    .line 734
    .line 735
    new-instance v2, Lt2/c;

    .line 736
    .line 737
    invoke-direct {v2, v0, v6}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 738
    .line 739
    .line 740
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_8

    .line 747
    .line 748
    :cond_e
    const v1, 0x7f0a06ef

    .line 749
    .line 750
    .line 751
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    new-instance v6, Lt2/a;

    .line 756
    .line 757
    invoke-direct {v6, v0, v10}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    .line 762
    .line 763
    if-eqz v2, :cond_f

    .line 764
    .line 765
    const-string v1, "Rootless VM"

    .line 766
    .line 767
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    .line 769
    .line 770
    :cond_f
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 771
    .line 772
    iget-object v1, v1, Ll4/l;->c:Landroid/content/Context;

    .line 773
    .line 774
    invoke-static {v1}, Lu2/h;->k(Landroid/content/Context;)Lu2/h;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 779
    .line 780
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 781
    .line 782
    invoke-static {v1}, Lu2/t;->a(Landroid/content/Context;)Lu2/t;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->y:Lu2/t;

    .line 787
    .line 788
    invoke-virtual {v1}, Lu2/t;->d()V

    .line 789
    .line 790
    .line 791
    const v1, 0x7f0a06e8

    .line 792
    .line 793
    .line 794
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    check-cast v1, Landroid/widget/TextView;

    .line 799
    .line 800
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->z:Landroid/widget/TextView;

    .line 801
    .line 802
    const v1, 0x7f0a06e9

    .line 803
    .line 804
    .line 805
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    check-cast v1, Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 810
    .line 811
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->D:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 812
    .line 813
    const v1, 0x7f0a06eb

    .line 814
    .line 815
    .line 816
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    check-cast v1, Landroid/widget/TextView;

    .line 821
    .line 822
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->A:Landroid/widget/TextView;

    .line 823
    .line 824
    const v1, 0x7f0a06c3

    .line 825
    .line 826
    .line 827
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    check-cast v1, Landroid/widget/TextView;

    .line 832
    .line 833
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->n:Landroid/widget/TextView;

    .line 834
    .line 835
    const v1, 0x7f0a06df

    .line 836
    .line 837
    .line 838
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    check-cast v1, Landroid/widget/TextView;

    .line 843
    .line 844
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->p:Landroid/widget/TextView;

    .line 845
    .line 846
    const v1, 0x7f0a06c2

    .line 847
    .line 848
    .line 849
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    check-cast v1, Lcom/zalexdev/stryker/utils/SparklineView;

    .line 854
    .line 855
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->q:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 856
    .line 857
    const v1, 0x7f0a06de

    .line 858
    .line 859
    .line 860
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    check-cast v1, Lcom/zalexdev/stryker/utils/SparklineView;

    .line 865
    .line 866
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->r:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 867
    .line 868
    const v1, 0x7f0a06f0

    .line 869
    .line 870
    .line 871
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    check-cast v1, Landroid/widget/TextView;

    .line 876
    .line 877
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->B:Landroid/widget/TextView;

    .line 878
    .line 879
    const v1, 0x7f0a06f2

    .line 880
    .line 881
    .line 882
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    check-cast v1, Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 887
    .line 888
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->E:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 889
    .line 890
    const v1, 0x7f0a06f1

    .line 891
    .line 892
    .line 893
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Landroid/widget/TextView;

    .line 898
    .line 899
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->C:Landroid/widget/TextView;

    .line 900
    .line 901
    const v1, 0x7f0a06d2

    .line 902
    .line 903
    .line 904
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 905
    .line 906
    .line 907
    move-result-object v1

    .line 908
    check-cast v1, Landroid/widget/TextView;

    .line 909
    .line 910
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->j:Landroid/widget/TextView;

    .line 911
    .line 912
    const v1, 0x7f0a06d1

    .line 913
    .line 914
    .line 915
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    check-cast v1, Landroid/widget/TextView;

    .line 920
    .line 921
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->k:Landroid/widget/TextView;

    .line 922
    .line 923
    const v1, 0x7f0a06d0

    .line 924
    .line 925
    .line 926
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 927
    .line 928
    .line 929
    move-result-object v1

    .line 930
    check-cast v1, Landroid/widget/ScrollView;

    .line 931
    .line 932
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    .line 933
    .line 934
    const v1, 0x7f0a06d3

    .line 935
    .line 936
    .line 937
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    check-cast v1, Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 942
    .line 943
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->u:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 944
    .line 945
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->l:Landroid/widget/ScrollView;

    .line 946
    .line 947
    if-eqz v1, :cond_10

    .line 948
    .line 949
    new-instance v2, Lt2/d;

    .line 950
    .line 951
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 955
    .line 956
    .line 957
    :cond_10
    :try_start_0
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->q:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 958
    .line 959
    if-eqz v1, :cond_11

    .line 960
    .line 961
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 962
    .line 963
    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    .line 964
    .line 965
    const v6, 0x7f060025

    .line 966
    .line 967
    .line 968
    invoke-static {v2, v6}, Lx/d;->a(Landroid/content/Context;I)I

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/utils/SparklineView;->setAccent(I)V

    .line 973
    .line 974
    .line 975
    :cond_11
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->r:Lcom/zalexdev/stryker/utils/SparklineView;

    .line 976
    .line 977
    if-eqz v1, :cond_12

    .line 978
    .line 979
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 980
    .line 981
    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    .line 982
    .line 983
    const v6, 0x7f060073

    .line 984
    .line 985
    .line 986
    invoke-static {v2, v6}, Lx/d;->a(Landroid/content/Context;I)I

    .line 987
    .line 988
    .line 989
    move-result v2

    .line 990
    invoke-virtual {v1, v2}, Lcom/zalexdev/stryker/utils/SparklineView;->setAccent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .line 992
    .line 993
    :catch_0
    :cond_12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->F:Ljava/util/concurrent/ExecutorService;

    .line 998
    .line 999
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->D:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 1000
    .line 1001
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->z:Landroid/widget/TextView;

    .line 1002
    .line 1003
    new-instance v6, Lt2/c;

    .line 1004
    .line 1005
    const/4 v7, 0x1

    .line 1006
    invoke-direct {v6, v0, v7}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1007
    .line 1008
    .line 1009
    const v7, 0x7f0a06ea

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v9, v7, v1, v2, v6}, Lcom/zalexdev/stryker/dashboard/Dashboard;->i(Landroid/view/View;ILnet/cachapa/expandablelayout/ExpandableLayout;Landroid/widget/TextView;Lt2/c;)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->E:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 1016
    .line 1017
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->B:Landroid/widget/TextView;

    .line 1018
    .line 1019
    new-instance v6, Lt2/c;

    .line 1020
    .line 1021
    invoke-direct {v6, v0, v8}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1022
    .line 1023
    .line 1024
    const v7, 0x7f0a06f3

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v9, v7, v1, v2, v6}, Lcom/zalexdev/stryker/dashboard/Dashboard;->i(Landroid/view/View;ILnet/cachapa/expandablelayout/ExpandableLayout;Landroid/widget/TextView;Lt2/c;)V

    .line 1028
    .line 1029
    .line 1030
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->u:Lnet/cachapa/expandablelayout/ExpandableLayout;

    .line 1031
    .line 1032
    iget-object v2, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->j:Landroid/widget/TextView;

    .line 1033
    .line 1034
    new-instance v6, Lt2/c;

    .line 1035
    .line 1036
    invoke-direct {v6, v0, v3}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1037
    .line 1038
    .line 1039
    const v3, 0x7f0a06d4

    .line 1040
    .line 1041
    .line 1042
    invoke-static {v9, v3, v1, v2, v6}, Lcom/zalexdev/stryker/dashboard/Dashboard;->i(Landroid/view/View;ILnet/cachapa/expandablelayout/ExpandableLayout;Landroid/widget/TextView;Lt2/c;)V

    .line 1043
    .line 1044
    .line 1045
    const v1, 0x7f0a06b9

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    new-instance v2, Lt2/a;

    .line 1053
    .line 1054
    const/16 v3, 0xd

    .line 1055
    .line 1056
    invoke-direct {v2, v0, v3}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    .line 1061
    .line 1062
    const v1, 0x7f0a06ba

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    new-instance v2, Lt2/a;

    .line 1070
    .line 1071
    const/16 v3, 0xe

    .line 1072
    .line 1073
    invoke-direct {v2, v0, v3}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    .line 1078
    .line 1079
    const v1, 0x7f0a06b8

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v1

    .line 1086
    new-instance v2, Lt2/a;

    .line 1087
    .line 1088
    const/16 v3, 0xf

    .line 1089
    .line 1090
    invoke-direct {v2, v0, v3}, Lt2/a;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v1, Lt2/c;

    .line 1097
    .line 1098
    invoke-direct {v1, v0, v5}, Lt2/c;-><init>(Lcom/zalexdev/stryker/dashboard/Dashboard;I)V

    .line 1099
    .line 1100
    .line 1101
    iput-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->x:Lt2/c;

    .line 1102
    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/zalexdev/stryker/dashboard/Dashboard;->g()V

    .line 1104
    .line 1105
    .line 1106
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->h:Landroid/widget/TextView;

    .line 1107
    .line 1108
    if-eqz v1, :cond_14

    .line 1109
    .line 1110
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->b:Landroid/content/Context;

    .line 1111
    .line 1112
    if-nez v1, :cond_13

    .line 1113
    .line 1114
    goto :goto_8

    .line 1115
    :cond_13
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->e:Lu2/h;

    .line 1116
    .line 1117
    new-instance v2, Ljava/lang/Thread;

    .line 1118
    .line 1119
    new-instance v3, Lf/n0;

    .line 1120
    .line 1121
    const/16 v5, 0x1b

    .line 1122
    .line 1123
    invoke-direct {v3, v0, v1, v5}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1124
    .line 1125
    .line 1126
    const-string v1, "vm-usb-scan"

    .line 1127
    .line 1128
    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1132
    .line 1133
    .line 1134
    :cond_14
    :goto_8
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 1135
    .line 1136
    iget-object v1, v1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 1137
    .line 1138
    const/4 v2, 0x0

    .line 1139
    invoke-interface {v1, v12, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    if-ne v1, v10, :cond_15

    .line 1144
    .line 1145
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 1146
    .line 1147
    const-string v2, "firstscan"

    .line 1148
    .line 1149
    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 1150
    .line 1151
    .line 1152
    move-result v1

    .line 1153
    if-nez v1, :cond_15

    .line 1154
    .line 1155
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->a:Landroidx/fragment/app/a0;

    .line 1156
    .line 1157
    const-string v3, "Tip: Networks with \u2b50"

    .line 1158
    .line 1159
    const-string v5, "Networks with \u2b50 are likely vulnerable to Pixie Dust"

    .line 1160
    .line 1161
    invoke-static {v4, v3, v5}, Lcom/getkeepsafe/taptargetview/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    const v4, 0x7f060316

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    const v4, 0x3f75c28f    # 0.96f

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleAlpha(F)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    const v4, 0x106000b

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->targetCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    const/16 v5, 0x14

    .line 1187
    .line 1188
    invoke-virtual {v3, v5}, Lcom/getkeepsafe/taptargetview/TapTarget;->titleTextSize(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v3

    .line 1192
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->titleTextColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v3

    .line 1196
    const/16 v5, 0x10

    .line 1197
    .line 1198
    invoke-virtual {v3, v5}, Lcom/getkeepsafe/taptargetview/TapTarget;->descriptionTextSize(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->descriptionTextColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v3

    .line 1206
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->textColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v3

    .line 1210
    const v4, 0x106000c

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->dimColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v3

    .line 1217
    const/4 v4, 0x1

    .line 1218
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->drawShadow(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->cancelable(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->tintTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    invoke-virtual {v3, v4}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v3

    .line 1234
    const/16 v5, 0x3c

    .line 1235
    .line 1236
    invoke-virtual {v3, v5}, Lcom/getkeepsafe/taptargetview/TapTarget;->targetRadius(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v3

    .line 1240
    invoke-static {v1, v3}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    .line 1241
    .line 1242
    .line 1243
    iget-object v1, v0, Lcom/zalexdev/stryker/dashboard/Dashboard;->c:Ll4/l;

    .line 1244
    .line 1245
    invoke-virtual {v1, v2, v4}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 1246
    .line 1247
    .line 1248
    :cond_15
    return-void

    .line 1249
    :array_0
    .array-data 4
        0x7f0a06ee
        0x7f0a06c0
        0x7f0a06bf
        0x7f0a06ea
        0x7f0a06e9
        0x7f0a06cb
        0x7f0a06f3
        0x7f0a06f2
        0x7f0a06ca
        0x7f0a06d4
        0x7f0a06d3
    .end array-data
.end method
