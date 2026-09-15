.class public final synthetic Lr3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Device;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Lcom/zalexdev/stryker/custom/Device;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lr3/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/j;->b:Lr3/t;

    .line 7
    .line 8
    iput-object p2, p0, Lr3/j;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lr3/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lr3/j;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/j;->b:Lr3/t;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Device;->getMac()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    invoke-static {v1}, Lr3/t;->b(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v4, 0x66

    .line 27
    .line 28
    new-array v5, v4, [B

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move v7, v6

    .line 32
    :goto_0
    const/4 v8, 0x6

    .line 33
    if-ge v7, v8, :cond_0

    .line 34
    .line 35
    const/4 v8, -0x1

    .line 36
    aput-byte v8, v5, v7

    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    move v7, v8

    .line 44
    :goto_1
    if-ge v7, v4, :cond_1

    .line 45
    .line 46
    invoke-static {v1, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x6

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Ljava/net/DatagramPacket;

    .line 57
    .line 58
    const/16 v6, 0x9

    .line 59
    .line 60
    invoke-direct {v1, v5, v4, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/net/DatagramSocket;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :catchall_1
    move-exception v1

    .line 76
    move-object v3, v0

    .line 77
    move-object v0, v1

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-object v3, v0

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 84
    .line 85
    .line 86
    :cond_2
    throw v0

    .line 87
    :catch_1
    :goto_3
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_4
    new-instance v0, Landroidx/activity/b;

    .line 93
    .line 94
    const/16 v1, 0x18

    .line 95
    .line 96
    invoke-direct {v0, v2, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v2, Lr3/t;->b:Landroid/app/Activity;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_0
    iget-object v0, v2, Lr3/t;->d:Ll4/l;

    .line 106
    .line 107
    const-string v3, "hydra"

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ll4/l;->T(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    new-instance v3, Ln1/o;

    .line 114
    .line 115
    const/4 v4, 0x2

    .line 116
    invoke-direct {v3, v2, v0, v1, v4}, Ln1/o;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v2, Lr3/t;->b:Landroid/app/Activity;

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
