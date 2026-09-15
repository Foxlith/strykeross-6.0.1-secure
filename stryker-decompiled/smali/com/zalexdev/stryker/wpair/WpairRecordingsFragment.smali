.class public Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;
    }
.end annotation


# static fields
.field private static final PREF_SCROLL_POS:Ljava/lang/String; = "wpair_recordings_scroll_pos"


# instance fields
.field private adapter:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

.field private currentPlayer:Landroid/media/MediaPlayer;

.field private emptyView:Landroid/view/View;

.field private outputDir:Ljava/io/File;

.field private recycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic access$100(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->confirmDelete(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->share(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->play(Ljava/io/File;)V

    return-void
.end method

.method private confirmDelete(Ljava/io/File;)V
    .locals 2

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "Delete recording?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/zalexdev/stryker/wpair/s;

    invoke-direct {v1, p0, p1}, Lcom/zalexdev/stryker/wpair/s;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;)V

    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public static synthetic d(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$play$4(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$restoreScrollPosition$2(I)V

    return-void
.end method

.method public static synthetic f(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method private static formatSize(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " KB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-double/2addr p0, v0

    invoke-virtual {v3, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " MB"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$reload$3(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->lambda$confirmDelete$5(Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$confirmDelete$5(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "Deleted"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->reload()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "Delete failed"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/u0;->I()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->reload()V

    return-void
.end method

.method private synthetic lambda$play$4(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->stopPlayback()V

    return-void
.end method

.method private static synthetic lambda$reload$3(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".m4a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".pcm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$restoreScrollPosition$2(I)V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private play(Ljava/io/File;)V
    .locals 4

    const-string v0, "Playing "

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->stopPlayback()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/zalexdev/stryker/wpair/t;

    invoke-direct {v3, p0}, Lcom/zalexdev/stryker/wpair/t;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Play failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->stopPlayback()V

    :goto_0
    return-void
.end method

.method private reload()V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->outputDir:Ljava/io/File;

    new-instance v1, Lx2/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lx2/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$2;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$2;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;->set(Ljava/util/List;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->emptyView:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private restoreScrollPosition()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ll4/l;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string v1, "wpair_recordings_scroll_pos"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Ly/n;

    .line 34
    .line 35
    const/16 v3, 0xa

    .line 36
    .line 37
    invoke-direct {v2, v0, v3, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method private share(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".pcm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_0
    const-string p1, "audio/mp4"

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "Share recording"

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Share failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private stopPlayback()V
    .locals 1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->currentPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultViewModelCreationExtras()Lu0/b;
    .locals 1

    .line 1
    sget-object v0, Lu0/a;->b:Lu0/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->stopPlayback()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zalexdev/stryker/wpair/WpairFragment;->recordingsDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->outputDir:Ljava/io/File;

    const p2, 0x7f0a0751

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0750

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->emptyView:Landroid/view/View;

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance p2, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->adapter:Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$RecordingsAdapter;

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    const p2, 0x7f0a0748

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lcom/zalexdev/stryker/wpair/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zalexdev/stryker/wpair/r;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a074d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/zalexdev/stryker/wpair/r;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/zalexdev/stryker/wpair/r;-><init>(Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->reload()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairRecordingsFragment;->restoreScrollPosition()V

    return-void
.end method
