.class public final Lcom/stryker/terminal/services/NeoTermService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/services/NeoTermService$Companion;,
        Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;
    }
.end annotation


# static fields
.field private static final ACTION_ACQUIRE_LOCK:Ljava/lang/String;

.field private static final ACTION_RELEASE_LOCK:Ljava/lang/String;

.field private static final ACTION_SERVICE_STOP:Ljava/lang/String;

.field public static final Companion:Lcom/stryker/terminal/services/NeoTermService$Companion;

.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String;

.field private static final NOTIFICATION_ID:I


# instance fields
.field private final mTerminalSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/stryker/terminal/backend/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mXSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/stryker/terminal/component/session/XSession;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceBinder:Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/services/NeoTermService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/services/NeoTermService$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/services/NeoTermService;->Companion:Lcom/stryker/terminal/services/NeoTermService$Companion;

    const-string v0, "neoterm.action.service.stop"

    sput-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    const-string v0, "neoterm.action.service.lock.acquire"

    sput-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    const-string v0, "neoterm.action.service.lock.release"

    sput-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    const v0, 0xcb33

    sput v0, Lcom/stryker/terminal/services/NeoTermService;->NOTIFICATION_ID:I

    const-string v0, "neoterm_notification_channel"

    sput-object v0, Lcom/stryker/terminal/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;-><init>(Lcom/stryker/terminal/services/NeoTermService;)V

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->serviceBinder:Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getACTION_ACQUIRE_LOCK$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_RELEASE_LOCK$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getACTION_SERVICE_STOP$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_CHANNEL_ID$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    return-object v0
.end method

.method private final acquireLock()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NeoTerm-Emulator:"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "NeoTerm-Emulator"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    :cond_0
    return-void
.end method

.method private final assetsStale()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/bin"

    const-string v3, ".assets_version"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lv1/f;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private final createNotification()Landroid/app/Notification;
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/high16 v2, 0x4000000

    .line 15
    .line 16
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v3, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    sget v4, Lcom/stryker/terminal/R$string;->service_status_text:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "getString(R.string.servi\u2026tatus_text, sessionCount)"

    .line 46
    .line 47
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/stryker/terminal/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    move v4, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v4, v1

    .line 58
    :goto_0
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-static {v3}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    sget v6, Lcom/stryker/terminal/R$string;->service_lock_acquired:I

    .line 65
    .line 66
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_1
    new-instance v6, Lv/z;

    .line 78
    .line 79
    sget-object v7, Lcom/stryker/terminal/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {v6, p0, v7}, Lv/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget v7, Lcom/stryker/terminal/R$string;->app_name:I

    .line 85
    .line 86
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v7}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    iput-object v7, v6, Lv/z;->e:Ljava/lang/CharSequence;

    .line 95
    .line 96
    invoke-static {v3}, Lv/z;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iput-object v3, v6, Lv/z;->f:Ljava/lang/CharSequence;

    .line 101
    .line 102
    sget v3, Lcom/stryker/terminal/R$drawable;->icon_svg:I

    .line 103
    .line 104
    iget-object v7, v6, Lv/z;->s:Landroid/app/Notification;

    .line 105
    .line 106
    iput v3, v7, Landroid/app/Notification;->icon:I

    .line 107
    .line 108
    iput-object v0, v6, Lv/z;->g:Landroid/app/PendingIntent;

    .line 109
    .line 110
    const/4 v0, 0x2

    .line 111
    invoke-virtual {v6, v0}, Lv/z;->e(I)V

    .line 112
    .line 113
    .line 114
    iput-boolean v1, v6, Lv/z;->j:Z

    .line 115
    .line 116
    const/high16 v0, -0x1000000

    .line 117
    .line 118
    iput v0, v6, Lv/z;->p:I

    .line 119
    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 v5, -0x1

    .line 124
    :goto_1
    iput v5, v6, Lv/z;->i:I

    .line 125
    .line 126
    new-instance v0, Landroid/content/Intent;

    .line 127
    .line 128
    const-class v3, Lcom/stryker/terminal/services/NeoTermService;

    .line 129
    .line 130
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    sget-object v5, Lcom/stryker/terminal/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v5, "Intent(this, NeoTermServ\u2026tion(ACTION_SERVICE_STOP)"

    .line 140
    .line 141
    invoke-static {v0, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget v5, Lcom/stryker/terminal/R$string;->exit:I

    .line 145
    .line 146
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v7, v6, Lv/z;->b:Ljava/util/ArrayList;

    .line 155
    .line 156
    new-instance v8, Lv/x;

    .line 157
    .line 158
    const v9, 0x108001d

    .line 159
    .line 160
    .line 161
    invoke-direct {v8, v9, v5, v0}, Lv/x;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    if-eqz v4, :cond_3

    .line 168
    .line 169
    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_3
    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    .line 173
    .line 174
    :goto_2
    new-instance v5, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v3, "Intent(this, NeoTermServ\u2026.setAction(newWakeAction)"

    .line 184
    .line 185
    invoke-static {v0, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    if-eqz v4, :cond_4

    .line 189
    .line 190
    sget v3, Lcom/stryker/terminal/R$string;->service_release_lock:I

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    sget v3, Lcom/stryker/terminal/R$string;->service_acquire_lock:I

    .line 194
    .line 195
    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-string v5, "getString(\n      if (loc\u2026ervice_acquire_lock\n    )"

    .line 200
    .line 201
    invoke-static {v3, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    if-eqz v4, :cond_5

    .line 205
    .line 206
    const v4, 0x108001f

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_5
    const v4, 0x108002f

    .line 211
    .line 212
    .line 213
    :goto_4
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iget-object v1, v6, Lv/z;->b:Ljava/util/ArrayList;

    .line 218
    .line 219
    new-instance v2, Lv/x;

    .line 220
    .line 221
    invoke-direct {v2, v4, v3, v0}, Lv/x;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Lv/z;->a()Landroid/app/Notification;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "builder.build()"

    .line 232
    .line 233
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-object v0
.end method

.method private final createNotificationChannel()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc3/a;->o()V

    sget-object v0, Lcom/stryker/terminal/services/NeoTermService;->DEFAULT_CHANNEL_ID:Ljava/lang/String;

    invoke-static {v0}, Lc3/a;->d(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {v0}, Lc3/a;->q(Landroid/app/NotificationChannel;)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v1, v0}, Lc3/a;->r(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final createOrFindSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;
    .locals 5

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellParameter;->willCreateNewSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    const-string v2, "createOrFindSession: creating new session"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/stryker/terminal/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    invoke-virtual {v0, p0, p1}, Lcom/stryker/terminal/utils/Terminals;->createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellParameter;->getSessionId()Lcom/stryker/terminal/bridge/SessionId;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    sget-object v2, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createOrFindSession: find session by id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/stryker/terminal/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stryker/terminal/backend/TerminalSession;

    iget-object v3, v3, Lcom/stryker/terminal/backend/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/stryker/terminal/bridge/SessionId;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/stryker/terminal/backend/TerminalSession;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellParameter;->getInitialCommand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellParameter;->getInitialCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_3
    return-object v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot find session by given id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final releaseLock()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/stryker/terminal/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    iput-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    :cond_0
    return-void
.end method

.method private final stampAssets()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/bin"

    const-string v3, ".assets_version"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lv1/f;->Z(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final updateNotification()V
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/stryker/terminal/services/NeoTermService;->NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->createNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final checkPrefix()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/services/NeoTermService;->createOrFindSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    return-object p1
.end method

.method public final createXSession(Lf/q;Lcom/stryker/terminal/component/session/XParameter;)Lcom/stryker/terminal/component/session/XSession;
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    invoke-virtual {v0, p1, p2}, Lcom/stryker/terminal/utils/Terminals;->createSession(Lf/q;Lcom/stryker/terminal/component/session/XParameter;)Lcom/stryker/terminal/component/session/XSession;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    return-object p1
.end method

.method public final getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/backend/TerminalSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getXSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/session/XSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/services/NeoTermService;->serviceBinder:Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/stryker/terminal/services/NeoTermService;->checkPrefix()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->assetsStale()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/services/NeoTermService;->resetApp()V

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->stampAssets()V

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->createNotificationChannel()V

    sget v0, Lcom/stryker/terminal/services/NeoTermService;->NOTIFICATION_ID:I

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->createNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {v2}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stryker/terminal/services/NeoTermService;->ACTION_SERVICE_STOP:Ljava/lang/String;

    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/stryker/terminal/backend/TerminalSession;

    invoke-virtual {p3}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/stryker/terminal/services/NeoTermService;->ACTION_ACQUIRE_LOCK:Ljava/lang/String;

    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->acquireLock()V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/stryker/terminal/services/NeoTermService;->ACTION_RELEASE_LOCK:Ljava/lang/String;

    invoke-static {p1, p2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->releaseLock()V

    :cond_3
    :goto_1
    const/4 p1, 0x2

    return p1
.end method

.method public final removeTermSession(Lcom/stryker/terminal/backend/TerminalSession;)I
    .locals 1

    const-string v0, "sessionToRemove"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mTerminalSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    :cond_0
    return p1
.end method

.method public final removeXSession(Lcom/stryker/terminal/component/session/XSession;)I
    .locals 1

    const-string v0, "sessionToRemove"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService;->mXSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/stryker/terminal/services/NeoTermService;->updateNotification()V

    :cond_0
    return p1
.end method

.method public final resetApp()V
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg5/i;->h0(Ljava/io/File;)V

    const-string v0, "bin"

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/bin/"

    invoke-static {p0, v0, v2}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android-su"

    const-string v2, "bash"

    const-string v3, "stryker-ch"

    filled-new-array {v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv1/f;->G([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
