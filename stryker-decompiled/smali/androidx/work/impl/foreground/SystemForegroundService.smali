.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/LifecycleService;
.source "SourceFile"

# interfaces
.implements Lu1/b;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Z

.field public d:Lu1/c;

.field public e:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "notification"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/app/NotificationManager;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    .line 25
    .line 26
    new-instance v0, Lu1/c;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lu1/c;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lu1/c;

    .line 36
    .line 37
    iget-object v1, v0, Lu1/c;->i:Lu1/b;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lu1/c;->j:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "A callback already exists."

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lm1/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput-object p0, v0, Lu1/c;->i:Lu1/b;

    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lu1/c;

    invoke-virtual {v0}, Lu1/c;->g()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object p3, Landroidx/work/impl/foreground/SystemForegroundService;->f:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Re-initializing SystemForegroundService after a request to shut-down."

    .line 15
    .line 16
    invoke-virtual {p2, p3, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lu1/c;

    .line 20
    .line 21
    invoke-virtual {p2}, Lu1/c;->g()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->a()V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Lu1/c;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const-string v0, "ACTION_START_FOREGROUND"

    .line 42
    .line 43
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sget-object v1, Lu1/c;->j:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "KEY_WORKSPEC_ID"

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v3, "Started foreground service "

    .line 60
    .line 61
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p3, v1, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    new-instance v0, Landroidx/appcompat/widget/j;

    .line 79
    .line 80
    const/16 v1, 0x8

    .line 81
    .line 82
    invoke-direct {v0, p2, p3, v1}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    iget-object p3, p2, Lu1/c;->b:Ly1/b;

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p2, p1}, Lu1/c;->f(Landroid/content/Intent;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_1
    const-string v0, "ACTION_NOTIFY"

    .line 96
    .line 97
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "ACTION_CANCEL_WORK"

    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "Stopping foreground work for "

    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p3, v1, v0}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-nez p3, :cond_5

    .line 144
    .line 145
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p2, p2, Lu1/c;->a:Ln1/a0;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance p3, Lw1/b;

    .line 155
    .line 156
    invoke-direct {p3, p2, p1}, Lw1/b;-><init>(Ln1/a0;Ljava/util/UUID;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p2, Ln1/a0;->f:Ly1/b;

    .line 160
    .line 161
    invoke-virtual {p1, p3}, Ly1/b;->a(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    const-string p1, "ACTION_STOP_FOREGROUND"

    .line 166
    .line 167
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string p3, "Stopping foreground service"

    .line 178
    .line 179
    invoke-virtual {p1, v1, p3}, Lm1/n;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p2, Lu1/c;->i:Lu1/b;

    .line 183
    .line 184
    if-eqz p1, :cond_5

    .line 185
    .line 186
    check-cast p1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 187
    .line 188
    const/4 p2, 0x1

    .line 189
    iput-boolean p2, p1, Landroidx/work/impl/foreground/SystemForegroundService;->c:Z

    .line 190
    .line 191
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 199
    .line 200
    const/16 v0, 0x1a

    .line 201
    .line 202
    if-lt p3, v0, :cond_4

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Landroid/app/Service;->stopForeground(Z)V

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 208
    .line 209
    .line 210
    :cond_5
    :goto_1
    const/4 p1, 0x3

    .line 211
    return p1
.end method
