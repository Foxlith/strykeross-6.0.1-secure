.class public final Lu2/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu2/l;


# direct methods
.method public constructor <init>(Lu2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu2/j;->a:Lu2/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "com.zalexdev.stryker.USB_PERMISSION"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    const-string p1, "permission"

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v1, "device"

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 27
    .line 28
    iget-object v1, p0, Lu2/j;->a:Lu2/l;

    .line 29
    .line 30
    iget-object v1, v1, Lu2/l;->g:Ljava/util/concurrent/CountDownLatch;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lu2/j;->a:Lu2/l;

    .line 41
    .line 42
    iget v2, v2, Lu2/l;->h:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_1

    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lu2/j;->a:Lu2/l;

    .line 47
    .line 48
    iget-object v1, v1, Lu2/l;->g:Ljava/util/concurrent/CountDownLatch;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lu2/j;->a:Lu2/l;

    .line 54
    .line 55
    iget-object v1, v1, Lu2/l;->e:Ljava/util/HashMap;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    const/4 v2, 0x1

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    :try_start_0
    iget-object v3, p0, Lu2/j;->a:Lu2/l;

    .line 62
    .line 63
    iget-object v3, v3, Lu2/l;->e:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    :goto_0
    check-cast p2, Lu2/i;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    iget-object p2, p0, Lu2/j;->a:Lu2/l;

    .line 83
    .line 84
    iget-object p2, p2, Lu2/l;->e:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-ne p2, v2, :cond_3

    .line 91
    .line 92
    iget-object p2, p0, Lu2/j;->a:Lu2/l;

    .line 93
    .line 94
    iget-object p2, p2, Lu2/l;->e:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Ljava/lang/Integer;

    .line 109
    .line 110
    iget-object v3, p0, Lu2/j;->a:Lu2/l;

    .line 111
    .line 112
    iget-object v3, v3, Lu2/l;->e:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    const/4 p2, 0x0

    .line 120
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    iget-object v1, p2, Lu2/i;->a:Lu2/l;

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p2, Lu2/i;->b:Landroid/hardware/usb/UsbDevice;

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Lu2/l;->a(Landroid/hardware/usb/UsbDevice;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    move v0, v2

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_2
    iget-object p1, p2, Lu2/i;->c:Lj2/h;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lj2/h;->a(Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p1

    .line 150
    :cond_6
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    const-string p1, "device"

    .line 163
    .line 164
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    iget-object p2, p0, Lu2/j;->a:Lu2/l;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {p2, p1}, Lu2/l;->d(I)V

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_4
    return-void
.end method
