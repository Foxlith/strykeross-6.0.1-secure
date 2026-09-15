.class public Lcom/zalexdev/stryker/nmap/NmapScanner;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic W:I


# instance fields
.field public A:Lcom/google/android/material/chip/Chip;

.field public B:Lcom/google/android/material/chip/Chip;

.field public C:Lcom/google/android/material/chip/Chip;

.field public D:Lcom/google/android/material/chip/Chip;

.field public E:Lcom/google/android/material/chip/Chip;

.field public F:Lcom/google/android/material/chip/Chip;

.field public G:Lcom/google/android/material/chip/Chip;

.field public H:Lcom/google/android/material/chip/Chip;

.field public I:Ll4/l;

.field public J:Landroid/content/Context;

.field public K:Landroidx/fragment/app/a0;

.field public L:Lc4/a;

.field public M:J

.field public N:Landroid/os/Handler;

.field public O:Landroidx/activity/d;

.field public P:I

.field public Q:I

.field public R:I

.field public S:Ljava/lang/String;

.field public final T:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final U:Ljava/util/regex/Pattern;

.field public final V:Ljava/util/regex/Pattern;

.field public a:Lcom/google/android/material/textfield/TextInputLayout;

.field public b:Lcom/google/android/material/textfield/TextInputEditText;

.field public c:Lcom/google/android/material/button/MaterialButton;

.field public d:Lcom/google/android/material/button/MaterialButton;

.field public e:Lcom/google/android/material/button/MaterialButton;

.field public f:Lcom/google/android/material/button/MaterialButton;

.field public g:Lcom/google/android/material/button/MaterialButton;

.field public h:Lcom/google/android/material/button/MaterialButton;

.field public i:Lcom/google/android/material/button/MaterialButton;

.field public j:Lcom/google/android/material/button/MaterialButton;

.field public k:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/ScrollView;

.field public v:Landroid/app/Dialog;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/ScrollView;

.field public y:Landroid/widget/TextView;

.field public z:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "^\\d+/(tcp|udp)\\s+open"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->U:Ljava/util/regex/Pattern;

    const-string v0, "Host is up"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->V:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "intense"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "full"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->D:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->E:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->F:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    goto :goto_3

    :pswitch_0
    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->D:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->E:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->F:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :goto_2
    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->D:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->E:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->F:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    goto :goto_1

    :goto_3
    :pswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_3
        0x2fd85c -> :sswitch_2
        0x30228f -> :sswitch_1
        0x74b59d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v1, "nmap_target_history"

    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "\u241f"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "nmap_last_output"

    invoke-virtual {v0, v3, v1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v1, "nmap_last_lines"

    iget v3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    invoke-virtual {v0, v3, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v1, "nmap_last_ports"

    iget v3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    invoke-virtual {v0, v3, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v1, "nmap_last_hosts"

    iget v3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    invoke-virtual {v0, v3, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v1, "nmap_last_target"

    invoke-virtual {v0, v1, v2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lb4/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lb4/c;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->t:Landroid/widget/TextView;

    iget v1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->q:Landroid/widget/TextView;

    iget v1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i()Ljava/io/File;
    .locals 6

    .line 1
    const-string v0, "nmap-"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Stryker/nmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd-HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d00cd

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    new-instance p2, Ll4/l;

    iget-object p3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    invoke-direct {p2, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const p2, 0x7f0a057c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f0a0574

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f0a045d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->c:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a045e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->d:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0448

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->e:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0441

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->f:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a045a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->g:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a045c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->h:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0440

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->i:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a0443

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->j:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a04ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->k:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const p2, 0x7f0a0450

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    const p2, 0x7f0a0451

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->u:Landroid/widget/ScrollView;

    const p2, 0x7f0a045f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->m:Landroid/widget/TextView;

    const p2, 0x7f0a0460

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->n:Landroid/widget/TextView;

    const p2, 0x7f0a044d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->p:Landroid/widget/TextView;

    const p2, 0x7f0a044c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->q:Landroid/widget/TextView;

    const p2, 0x7f0a044a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->r:Landroid/widget/TextView;

    const p2, 0x7f0a044e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->s:Landroid/widget/TextView;

    const p2, 0x7f0a044b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->t:Landroid/widget/TextView;

    const p2, 0x7f0a0456

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/ChipGroup;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->z:Lcom/google/android/material/chip/ChipGroup;

    const p2, 0x7f0a043a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->A:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a043d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->B:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a0439

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->C:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a043b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->D:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a043c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->E:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a0438

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->F:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a043e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->G:Lcom/google/android/material/chip/Chip;

    const p2, 0x7f0a043f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->H:Lcom/google/android/material/chip/Chip;

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string p3, "nmap_active_profile"

    .line 1
    invoke-virtual {p2, p3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->z:Lcom/google/android/material/chip/ChipGroup;

    .line 2
    new-instance p3, Lv/f;

    const/16 v1, 0xf

    invoke-direct {p3, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "intense"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string p3, "full"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string p3, "fast"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string p3, "custom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move v4, v0

    :goto_0
    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->z:Lcom/google/android/material/chip/ChipGroup;

    packed-switch v4, :pswitch_data_0

    const p3, 0x7f0a0453

    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    goto :goto_2

    :pswitch_0
    const p3, 0x7f0a0457

    goto :goto_1

    :pswitch_1
    const p3, 0x7f0a0455

    goto :goto_1

    :pswitch_2
    const p3, 0x7f0a0454

    goto :goto_1

    :pswitch_3
    const p3, 0x7f0a0452

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->S:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/nmap/NmapScanner;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->c:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    invoke-direct {p3, p0, v0}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->d:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    invoke-direct {p3, p0, v1}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->e:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    invoke-direct {p3, p0, v2}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->f:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    invoke-direct {p3, p0, v3}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->g:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    const/4 v2, 0x4

    invoke-direct {p3, p0, v2}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->h:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    const/4 v2, 0x5

    invoke-direct {p3, p0, v2}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->i:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    const/4 v2, 0x6

    invoke-direct {p3, p0, v2}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->j:Lcom/google/android/material/button/MaterialButton;

    new-instance p3, Lb4/a;

    const/4 v2, 0x7

    invoke-direct {p3, p0, v2}, Lb4/a;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string p3, "nmap_last_target"

    .line 4
    invoke-virtual {p2, p3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    const-string v2, "nmap_last_output"

    invoke-virtual {p3, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 5
    iget-object v2, v2, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "nmap_last_lines"

    .line 6
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    iget-object v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 7
    iget-object v2, v2, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "nmap_last_ports"

    .line 8
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    iget-object v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 9
    iget-object v2, v2, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "nmap_last_hosts"

    .line 10
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    if-eqz p3, :cond_7

    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->n:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->u:Landroid/widget/ScrollView;

    new-instance p3, Lb4/b;

    invoke-direct {p3, p0, v1}, Lb4/b;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->h()V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_3
        0x2fd85c -> :sswitch_2
        0x30228f -> :sswitch_1
        0x74b59d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nmap/NmapScanner;->f()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->N:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->O:Landroidx/activity/d;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->L:Lc4/a;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iput-boolean v1, v0, Lc4/a;->f:Z

    .line 26
    .line 27
    iget-object v1, v0, Lc4/a;->d:Ljava/lang/Process;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    iget-object v1, v0, Lc4/a;->e:Lu2/b;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    :try_start_1
    iget-object v0, v0, Lc4/a;->e:Lu2/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Lu2/b;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    :catch_1
    :cond_2
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->L:Lc4/a;

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
