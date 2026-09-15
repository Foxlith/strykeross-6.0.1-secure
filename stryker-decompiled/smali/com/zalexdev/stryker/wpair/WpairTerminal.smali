.class public Lcom/zalexdev/stryker/wpair/WpairTerminal;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;,
        Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;
    }
.end annotation


# static fields
.field private static final ARG_FILTER:Ljava/lang/String; = "host"

.field private static final MAX_LINES:I = 0x1388

.field private static final PREF_FILTER:Ljava/lang/String; = "wpair_term_filter"

.field private static final PREF_MANUAL_SCROLL:Ljava/lang/String; = "wpair_term_manual_scroll"


# instance fields
.field private adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

.field private autoScroll:Z

.field private bytesRead:J

.field private emptyView:Landroid/view/View;

.field private filterInput:Landroid/widget/EditText;

.field private filterTerm:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private liveDot:Landroid/widget/ProgressBar;

.field private logFile:Ljava/io/File;

.field private final onUpdate:Landroid/content/BroadcastReceiver;

.field private final pollTick:Ljava/lang/Runnable;

.field private recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private subtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterTerm:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->autoScroll:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairTerminal$1;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$1;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->pollTick:Ljava/lang/Runnable;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairTerminal$2;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$2;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->onUpdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->readNewLines()V

    return-void
.end method

.method public static synthetic access$100(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->autoScroll:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/zalexdev/stryker/wpair/WpairTerminal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->autoScroll:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterTerm:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/zalexdev/stryker/wpair/WpairTerminal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterTerm:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/zalexdev/stryker/wpair/WpairTerminal;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->showEmpty(Z)V

    return-void
.end method

.method private copyAll()V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    const-string v3, "wpair log"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Log copied"

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Nothing to copy"

    goto :goto_1
.end method

.method public static synthetic d(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static forHost(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/WpairTerminal;
    .locals 3

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "host"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/zalexdev/stryker/wpair/WpairTerminal;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->lambda$onViewCreated$0(Landroid/view/View;)V

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

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->copyAll()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->shareLog()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairLog;->truncate(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Log cleared"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static newInstance()Lcom/zalexdev/stryker/wpair/WpairTerminal;
    .locals 1

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;-><init>()V

    return-object v0
.end method

.method private readNewLines()V
    .locals 12

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    cmp-long v0, v2, v4

    const-wide/16 v4, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->clear()V

    iput-wide v4, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    :cond_1
    iget-wide v6, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v7, v4

    :goto_0
    :try_start_1
    iget-wide v9, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_4

    sub-long/2addr v9, v7

    invoke-virtual {v6, v9, v10}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_3

    goto :goto_1

    :cond_3
    add-long/2addr v7, v9

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;->parse(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/WpairTerminal$Line;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iput-wide v2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->bytesRead:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-virtual {v2, v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->append(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-virtual {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->showEmpty(Z)V

    iget-boolean v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->autoScroll:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    return-void

    :cond_9
    :goto_6
    invoke-direct {p0, v1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->showEmpty(Z)V

    return-void
.end method

.method private shareLog()V
    .locals 5

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_3
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "wpair terminal"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Share log"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Nothing to share"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showEmpty(Z)V
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->emptyView:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

    const p3, 0x7f0d006c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->onUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->pollTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zalexdev.stryker.WPAIR_LOG_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->onUpdate:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lc3/a;->s(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->onUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->pollTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zalexdev/stryker/wpair/WpairLog;->logFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    const p2, 0x7f0a075e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->subtitle:Landroid/widget/TextView;

    const p2, 0x7f0a075b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->liveDot:Landroid/widget/ProgressBar;

    const p2, 0x7f0a075c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0759

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->emptyView:Landroid/view/View;

    const p2, 0x7f0a075a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterInput:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->subtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    new-instance p2, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;Lcom/zalexdev/stryker/wpair/WpairTerminal$1;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;

    invoke-direct {v1, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$3;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/b1;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterInput:Landroid/widget/EditText;

    new-instance v1, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;

    invoke-direct {v1, p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0a0755

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zalexdev/stryker/wpair/v;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0758

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/v;

    invoke-direct {v1, p0, v0}, Lcom/zalexdev/stryker/wpair/v;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a075d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/zalexdev/stryker/wpair/v;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/zalexdev/stryker/wpair/v;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0757

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Lcom/zalexdev/stryker/wpair/v;

    const/4 v1, 0x3

    invoke-direct {p2, p0, v1}, Lcom/zalexdev/stryker/wpair/v;-><init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ll4/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    const-string p2, "wpair_term_manual_scroll"

    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->autoScroll:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "host"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "wpair_term_filter"

    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->readNewLines()V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->adapter:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->filterTerm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->applyFilter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal;->liveDot:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
