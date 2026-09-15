.class public final Landroidx/media/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroidx/fragment/app/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;IILandroid/os/Bundle;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p7, p0, Landroidx/media/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media/k;->f:Landroidx/fragment/app/n;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media/k;->b:Landroidx/fragment/app/n;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/media/k;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput p4, p0, Landroidx/media/k;->d:I

    .line 13
    .line 14
    iput p5, p0, Landroidx/media/k;->e:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media/k;->a:I

    .line 2
    .line 3
    const-string v1, "MBServiceCompat"

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media/k;->f:Landroidx/fragment/app/n;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media/k;->b:Landroidx/fragment/app/n;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v3, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Landroidx/media/MediaBrowserServiceCompat;

    .line 19
    .line 20
    iget-object v3, v3, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/media/c;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/media/MediaBrowserServiceCompat;

    .line 30
    .line 31
    iget-object v6, p0, Landroidx/media/k;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget v7, p0, Landroidx/media/k;->d:I

    .line 34
    .line 35
    iget v8, p0, Landroidx/media/k;->e:I

    .line 36
    .line 37
    iget-object v9, p0, Landroidx/media/k;->b:Landroidx/fragment/app/n;

    .line 38
    .line 39
    move-object v4, v3

    .line 40
    move-object v5, v2

    .line 41
    invoke-direct/range {v4 .. v9}, Landroidx/media/c;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroidx/fragment/app/n;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 45
    .line 46
    invoke-virtual {v2, v0, v3}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :try_start_0
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v0, "IBinder is already dead."

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-virtual {v3}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v4, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Landroidx/media/MediaBrowserServiceCompat;

    .line 67
    .line 68
    iget-object v4, v4, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    const/16 v4, 0x1c

    .line 81
    .line 82
    iget-object v5, p0, Landroidx/media/k;->c:Ljava/lang/String;

    .line 83
    .line 84
    if-lt v0, v4, :cond_0

    .line 85
    .line 86
    iget v0, p0, Landroidx/media/k;->d:I

    .line 87
    .line 88
    iget v4, p0, Landroidx/media/k;->e:I

    .line 89
    .line 90
    invoke-static {v5, v0, v4}, Landroidx/core/view/j;->f(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat;->a()Landroidx/lifecycle/k;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "No root for client "

    .line 109
    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, " from service "

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-class v2, Landroidx/media/k;

    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v2, 0x2

    .line 142
    iput v2, v0, Landroid/os/Message;->what:I

    .line 143
    .line 144
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v3, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v2, Landroid/os/Messenger;

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, "Calling onConnectFailed() failed. Ignoring. pkg="

    .line 161
    .line 162
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :goto_1
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
