.class public final Lv/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/HashMap;

.field public d:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv/e0;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lv/e0;->d:Ljava/util/HashSet;

    iput-object p1, p0, Lv/e0;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NotificationManagerCompat"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lv/e0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lv/d0;)V
    .locals 12

    .line 1
    const-string v0, "NotifManCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    iget-object v3, p1, Lv/d0;->a:Landroid/content/ComponentName;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    iget-object v2, p1, Lv/d0;->d:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p1, Lv/d0;->d:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-boolean v2, p1, Lv/d0;->b:Z

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v5, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 38
    .line 39
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/16 v5, 0x21

    .line 47
    .line 48
    iget-object v6, p0, Lv/e0;->a:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v6, v2, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput-boolean v2, p1, Lv/d0;->b:Z

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iput v4, p1, Lv/d0;->e:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v5, "Unable to bind to listener "

    .line 64
    .line 65
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-boolean v2, p1, Lv/d0;->b:Z

    .line 82
    .line 83
    if-eqz v2, :cond_a

    .line 84
    .line 85
    :goto_1
    iget-object v2, p1, Lv/d0;->c:La/d;

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_4
    :goto_2
    iget-object v2, p1, Lv/d0;->d:Ljava/util/ArrayDeque;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lv/b0;

    .line 98
    .line 99
    if-nez v5, :cond_5

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_5
    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {v5}, Lv/b0;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_0
    move-exception v1

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    :goto_3
    iget-object v6, p1, Lv/d0;->c:La/d;

    .line 115
    .line 116
    iget-object v7, v5, Lv/b0;->d:Landroid/app/Notification;

    .line 117
    .line 118
    check-cast v6, La/a;

    .line 119
    .line 120
    iget-object v8, v5, Lv/b0;->a:Ljava/lang/String;

    .line 121
    .line 122
    iget v9, v5, Lv/b0;->b:I

    .line 123
    .line 124
    iget-object v5, v5, Lv/b0;->c:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 130
    .line 131
    .line 132
    move-result-object v10
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    const-string v11, "android.support.v4.app.INotificationSideChannel"

    .line 134
    .line 135
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 v5, 0x1

    .line 148
    if-eqz v7, :cond_7

    .line 149
    .line 150
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v7, v10, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    :goto_4
    iget-object v6, v6, La/a;->a:Landroid/os/IBinder;

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    invoke-interface {v6, v5, v10, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_0
    move-exception v4

    .line 174
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 175
    .line 176
    .line 177
    throw v4
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v5, "RemoteException communicating with "

    .line 181
    .line 182
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :catch_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    :cond_8
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_9

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lv/e0;->b(Lv/d0;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    return-void

    .line 215
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lv/e0;->b(Lv/d0;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public final b(Lv/d0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lv/e0;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p1, Lv/d0;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget v3, p1, Lv/d0;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lv/d0;->e:I

    const/4 v5, 0x6

    const-string v6, "NotifManCompat"

    if-le v4, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Giving up on delivering "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lv/d0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasks to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lv/d0;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " retries"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    return-void

    :cond_1
    const/4 p1, 0x1

    shl-int/2addr p1, v3

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x3

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    if-eq v0, v1, :cond_5

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    if-eq v0, v5, :cond_2

    .line 13
    .line 14
    if-eq v0, v4, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/content/ComponentName;

    .line 20
    .line 21
    iget-object v0, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lv/d0;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lv/e0;->a(Lv/d0;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroid/content/ComponentName;

    .line 38
    .line 39
    iget-object v0, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lv/d0;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-boolean v0, p1, Lv/d0;->b:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lv/e0;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v3, p1, Lv/d0;->b:Z

    .line 59
    .line 60
    :cond_3
    iput-object v2, p1, Lv/d0;->c:La/d;

    .line 61
    .line 62
    :cond_4
    return v1

    .line 63
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lv/c0;

    .line 66
    .line 67
    iget-object v0, p1, Lv/c0;->a:Landroid/content/ComponentName;

    .line 68
    .line 69
    iget-object p1, p1, Lv/c0;->b:Landroid/os/IBinder;

    .line 70
    .line 71
    iget-object v4, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lv/d0;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    sget v4, La/b;->a:I

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    const-string v2, "android.support.v4.app.INotificationSideChannel"

    .line 87
    .line 88
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_7

    .line 93
    .line 94
    instance-of v4, v2, La/d;

    .line 95
    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    check-cast v2, La/d;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    new-instance v2, La/a;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, v2, La/a;->a:Landroid/os/IBinder;

    .line 107
    .line 108
    :goto_0
    iput-object v2, v0, Lv/d0;->c:La/d;

    .line 109
    .line 110
    iput v3, v0, Lv/d0;->e:I

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lv/e0;->a(Lv/d0;)V

    .line 113
    .line 114
    .line 115
    :cond_8
    return v1

    .line 116
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lv/b0;

    .line 119
    .line 120
    iget-object v0, p0, Lv/e0;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v5, "enabled_notification_listeners"

    .line 127
    .line 128
    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v5, Lv/f0;->c:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v5

    .line 135
    if-eqz v0, :cond_c

    .line 136
    .line 137
    :try_start_0
    sget-object v6, Lv/f0;->d:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_c

    .line 144
    .line 145
    const-string v6, ":"

    .line 146
    .line 147
    const/4 v7, -0x1

    .line 148
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    new-instance v7, Ljava/util/HashSet;

    .line 153
    .line 154
    array-length v8, v6

    .line 155
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 156
    .line 157
    .line 158
    array-length v8, v6

    .line 159
    move v9, v3

    .line 160
    :goto_1
    if-ge v9, v8, :cond_b

    .line 161
    .line 162
    aget-object v10, v6, v9

    .line 163
    .line 164
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    if-eqz v10, :cond_a

    .line 169
    .line 170
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_a
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_b
    sput-object v7, Lv/f0;->e:Ljava/util/HashSet;

    .line 185
    .line 186
    sput-object v0, Lv/f0;->d:Ljava/lang/String;

    .line 187
    .line 188
    :cond_c
    sget-object v0, Lv/f0;->e:Ljava/util/HashSet;

    .line 189
    .line 190
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v5, p0, Lv/e0;->d:Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-interface {v0, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_d

    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_d
    iput-object v0, p0, Lv/e0;->d:Ljava/util/HashSet;

    .line 202
    .line 203
    iget-object v5, p0, Lv/e0;->a:Landroid/content/Context;

    .line 204
    .line 205
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    new-instance v6, Landroid/content/Intent;

    .line 210
    .line 211
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v7, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    new-instance v6, Ljava/util/HashSet;

    .line 225
    .line 226
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_10

    .line 238
    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 244
    .line 245
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 246
    .line 247
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-nez v8, :cond_e

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_e
    new-instance v8, Landroid/content/ComponentName;

    .line 257
    .line 258
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 259
    .line 260
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 263
    .line 264
    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 268
    .line 269
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 270
    .line 271
    if-eqz v7, :cond_f

    .line 272
    .line 273
    const-string v7, "NotifManCompat"

    .line 274
    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v10, "Permission present on component "

    .line 278
    .line 279
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v8, ", not adding listener record."

    .line 286
    .line 287
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_f
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_10
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    :cond_11
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-eqz v5, :cond_13

    .line 311
    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    check-cast v5, Landroid/content/ComponentName;

    .line 317
    .line 318
    iget-object v7, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 319
    .line 320
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-nez v7, :cond_11

    .line 325
    .line 326
    const-string v7, "NotifManCompat"

    .line 327
    .line 328
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_12

    .line 333
    .line 334
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    :cond_12
    iget-object v7, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 338
    .line 339
    new-instance v8, Lv/d0;

    .line 340
    .line 341
    invoke-direct {v8, v5}, Lv/d0;-><init>(Landroid/content/ComponentName;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_13
    iget-object v0, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    :cond_14
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_17

    .line 363
    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    .line 370
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    if-nez v7, :cond_14

    .line 379
    .line 380
    const-string v7, "NotifManCompat"

    .line 381
    .line 382
    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    if-eqz v7, :cond_15

    .line 387
    .line 388
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    :cond_15
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    check-cast v5, Lv/d0;

    .line 400
    .line 401
    iget-boolean v7, v5, Lv/d0;->b:Z

    .line 402
    .line 403
    if-eqz v7, :cond_16

    .line 404
    .line 405
    iget-object v7, p0, Lv/e0;->a:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {v7, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 408
    .line 409
    .line 410
    iput-boolean v3, v5, Lv/d0;->b:Z

    .line 411
    .line 412
    :cond_16
    iput-object v2, v5, Lv/d0;->c:La/d;

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 415
    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_17
    :goto_6
    iget-object v0, p0, Lv/e0;->c:Ljava/util/HashMap;

    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_18

    .line 433
    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    check-cast v2, Lv/d0;

    .line 439
    .line 440
    iget-object v3, v2, Lv/d0;->d:Ljava/util/ArrayDeque;

    .line 441
    .line 442
    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {p0, v2}, Lv/e0;->a(Lv/d0;)V

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :cond_18
    return v1

    .line 450
    :goto_8
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lv/e0;->b:Landroid/os/Handler;

    new-instance v1, Lv/c0;

    invoke-direct {v1, p1, p2}, Lv/c0;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lv/e0;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
