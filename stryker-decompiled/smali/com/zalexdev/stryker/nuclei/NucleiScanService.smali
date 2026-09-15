.class public Lcom/zalexdev/stryker/nuclei/NucleiScanService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;


# instance fields
.field public a:Ll4/l;

.field public b:Landroid/app/NotificationManager;

.field public c:Landroid/os/PowerManager$WakeLock;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unset HOME TMPDIR XDG_CACHE_HOME XDG_DATA_HOME XDG_CONFIG_HOME ANDROID_DATA ANDROID_ROOT LD_PRELOAD LD_LIBRARY_PATH"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "export HOME=/root"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "export TMPDIR=/tmp"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "mkdir -p /tmp /root/.config/nuclei"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "if [ ! -f /root/.config/nuclei/.stryker-templates-ok ]; then echo __STRYKER_NUCLEI_TEMPLATES__; if /usr/bin/nuclei -duc -ut >/tmp/nuclei-ut.log 2>&1; then touch /root/.config/nuclei/.stryker-templates-ok; fi; tail -5 /tmp/nuclei-ut.log; rm -f /tmp/nuclei-ut.log; fi"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "/usr/bin/nuclei -u "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "\'\\\'\'"

    .line 39
    .line 40
    const-string v3, "\'"

    .line 41
    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    const-string p0, "\'\'"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p0, " -jsonl -stats -silent -no-color -duc -timeout 8 -retries 1"

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_1

    .line 81
    .line 82
    const-string p0, " -severity "

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

.method public static declared-synchronized e(Ljava/lang/Process;)J
    .locals 3

    .line 1
    const-class v0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const-string p0, "(unknown)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "nuclei-logs"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 23
    .line 24
    const-string v1, "nuclei-"

    .line 25
    .line 26
    const-string v2, ".log"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zalexdev.stryker.nuclei.UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/zalexdev/stryker/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x24000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/high16 v2, 0xc000000

    .line 15
    .line 16
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lv/z;

    .line 21
    .line 22
    const-string v3, "nuclei_scan_channel"

    .line 23
    .line 24
    invoke-direct {v2, p0, v3}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v2, Lv/z;->s:Landroid/app/Notification;

    .line 28
    .line 29
    const v4, 0x7f0801de

    .line 30
    .line 31
    .line 32
    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 33
    .line 34
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, v2, Lv/z;->e:Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-static {p2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, v2, Lv/z;->f:Ljava/lang/CharSequence;

    .line 45
    .line 46
    const/16 p1, 0x8

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lv/z;->e(I)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x2

    .line 52
    invoke-virtual {v2, p1}, Lv/z;->e(I)V

    .line 53
    .line 54
    .line 55
    iput-object v0, v2, Lv/z;->g:Landroid/app/PendingIntent;

    .line 56
    .line 57
    const/4 p1, -0x1

    .line 58
    iput p1, v2, Lv/z;->i:I

    .line 59
    .line 60
    const/16 p1, 0x64

    .line 61
    .line 62
    if-eqz p4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v2, p1, p3, v1}, Lv/z;->f(IIZ)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p2, 0x1

    .line 69
    invoke-virtual {v2, p1, v1, p2}, Lv/z;->f(IIZ)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v2}, Lv/z;->a()Landroid/app/Notification;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [INFO] scan ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public final f(I)Lcom/zalexdev/stryker/custom/Site;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a:Ll4/l;

    invoke-virtual {v0}, Ll4/l;->I()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zalexdev/stryker/custom/Site;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "percent"

    const-string v1, "0"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, v0, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->p(Lcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final h(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "{"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7b

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zalexdev/stryker/custom/NucleiItem;->parseItem(Ljava/lang/String;)Lcom/zalexdev/stryker/custom/NucleiItem;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/zalexdev/stryker/custom/Site;->addNuclei(Lcom/zalexdev/stryker/custom/NucleiItem;)V

    invoke-virtual {p0, p1, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final i(ILcom/zalexdev/stryker/custom/Site;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a:Ll4/l;

    invoke-virtual {v0, p1, p2}, Ll4/l;->b(ILcom/zalexdev/stryker/custom/Site;)V

    return-void
.end method

.method public final j(Lcom/zalexdev/stryker/custom/Site;IZ)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/zalexdev/stryker/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x24000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, p2, 0x1

    .line 14
    .line 15
    const/high16 v2, 0xc000000

    .line 16
    .line 17
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    const v1, 0x7f0800c9

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v1, 0x7f0800d0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const v3, 0x7f1304e8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const v3, 0x7f1304e9

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_1
    const/4 v3, 0x0

    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v4, " findings \u00b7 severities "

    .line 79
    .line 80
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lcom/zalexdev/stryker/custom/Site;->vulnsCount:[I

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    array-length v4, p1

    .line 88
    const/4 v5, 0x4

    .line 89
    if-ge v4, v5, :cond_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "I:"

    .line 95
    .line 96
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    aget v5, p1, v3

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, " L:"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/4 v5, 0x1

    .line 110
    aget v5, p1, v5

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v5, " M:"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    aget v5, p1, v5

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, " H:"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const/4 v5, 0x3

    .line 132
    aget p1, p1, v5

    .line 133
    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    :goto_2
    const-string p1, "n/a"

    .line 143
    .line 144
    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    const-string p1, "Tap to open the report"

    .line 153
    .line 154
    :goto_4
    new-instance p3, Lv/z;

    .line 155
    .line 156
    const-string v4, "nuclei_scan_channel"

    .line 157
    .line 158
    invoke-direct {p3, p0, v4}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v4, p3, Lv/z;->s:Landroid/app/Notification;

    .line 162
    .line 163
    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 164
    .line 165
    invoke-static {v2}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, p3, Lv/z;->e:Ljava/lang/CharSequence;

    .line 170
    .line 171
    invoke-static {p1}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p3, Lv/z;->f:Ljava/lang/CharSequence;

    .line 176
    .line 177
    const/16 p1, 0x10

    .line 178
    .line 179
    invoke-virtual {p3, p1}, Lv/z;->e(I)V

    .line 180
    .line 181
    .line 182
    iput-object v0, p3, Lv/z;->g:Landroid/app/PendingIntent;

    .line 183
    .line 184
    iput v3, p3, Lv/z;->i:I

    .line 185
    .line 186
    invoke-virtual {p3}, Lv/z;->a()Landroid/app/Notification;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p3, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b:Landroid/app/NotificationManager;

    .line 191
    .line 192
    add-int/lit16 p2, p2, 0xffb

    .line 193
    .line 194
    invoke-virtual {p3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method

.method public final n(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/PrintWriter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll4/l;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a:Ll4/l;

    .line 10
    .line 11
    const-string v0, "notification"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/NotificationManager;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b:Landroid/app/NotificationManager;

    .line 20
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v1, 0x1a

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lc3/a;->o()V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f1304e7

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lc3/a;->C(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lf4/b;->p(Landroid/app/NotificationChannel;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b:Landroid/app/NotificationManager;

    .line 45
    .line 46
    invoke-static {v1, v0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    new-instance v0, Lu2/e;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Lu2/e;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    const-string v0, "power"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/os/PowerManager;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const-string v2, "stryker:nuclei"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Finished"

    iget-object v5, v3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Failed"

    iput-object v4, v3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    const-string v4, "100"

    iput-object v4, v3, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu2/b;

    :try_start_1
    invoke-virtual {v2}, Lu2/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    .line 5
    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    const-string p3, "com.zalexdev.stryker.nuclei.CANCEL"

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    const/4 v0, -0x1

    .line 19
    const-string v1, "id"

    .line 20
    .line 21
    if-eqz p3, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object p3, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Ljava/lang/Process;

    .line 38
    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :catchall_0
    :cond_1
    iget-object p3, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Lu2/b;

    .line 55
    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p3}, Lu2/b;->a()V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->f(I)Lcom/zalexdev/stryker/custom/Site;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    const-string v0, "Finished"

    .line 68
    .line 69
    iget-object v1, p3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "Failed"

    .line 78
    .line 79
    iput-object v0, p3, Lcom/zalexdev/stryker/custom/Site;->status:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "100"

    .line 82
    .line 83
    iput-object v0, p3, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p3}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->i(ILcom/zalexdev/stryker/custom/Site;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->a(I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    .line 92
    .line 93
    .line 94
    return p2

    .line 95
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-gez p3, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->m()V

    .line 102
    .line 103
    .line 104
    return p2

    .line 105
    :cond_5
    const-string v0, "severity"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_6
    const-string p1, "Starting\u2026"

    .line 123
    .line 124
    const-string v0, "Spinning up nuclei"

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .line 133
    const/16 v1, 0x1d

    .line 134
    .line 135
    if-lt v0, v1, :cond_7

    .line 136
    .line 137
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/h;->i(Lcom/zalexdev/stryker/nuclei/NucleiScanService;Landroid/app/Notification;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    const/16 v0, 0xffa

    .line 142
    .line 143
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_8

    .line 153
    .line 154
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->c:Landroid/os/PowerManager$WakeLock;

    .line 155
    .line 156
    const-wide/32 v0, 0x1499700

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 160
    .line 161
    .line 162
    :cond_8
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 163
    .line 164
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    sget-object p1, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->j:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 172
    .line 173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->d:Ljava/util/concurrent/ExecutorService;

    .line 181
    .line 182
    new-instance v0, Ly/n;

    .line 183
    .line 184
    const/4 v1, 0x7

    .line 185
    invoke-direct {v0, p3, v1, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 189
    .line 190
    .line 191
    return p2
.end method

.method public final p(Lcom/zalexdev/stryker/custom/Site;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Lcom/zalexdev/stryker/custom/Site;->progress:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scanning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Site;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "% \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Site;->getNucleis()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " findings"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "Loading templates\u2026"

    :goto_1
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/zalexdev/stryker/nuclei/NucleiScanService;->b:Landroid/app/NotificationManager;

    const/16 v1, 0xffa

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
