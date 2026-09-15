.class public final synthetic Lt3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/v;


# direct methods
.method public synthetic constructor <init>(Lr3/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt3/a;->b:Lr3/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lt3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt3/a;->b:Lr3/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Lr3/v;->e()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v2, p0, Lt3/a;->b:Lr3/v;

    .line 13
    .line 14
    iget-object v0, v2, Lr3/v;->c:Lu3/g;

    .line 15
    .line 16
    const-string v1, "Starting local network scanner"

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-virtual {v0, v3, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lr3/v;->m:Ll4/l;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v2, Lr3/v;->c:Lu3/g;

    .line 34
    .line 35
    const-string v1, "Starting non-root LAN discovery (ICMP + TCP + NetBIOS + mDNS + SSDP + SNMP)"

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v0, v4, v1}, Lu3/g;->e(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ls3/t;

    .line 42
    .line 43
    sget-object v1, Lr3/v;->k:Landroid/content/Context;

    .line 44
    .line 45
    sget-object v5, Lr3/v;->m:Ll4/l;

    .line 46
    .line 47
    new-instance v6, Lg3/b;

    .line 48
    .line 49
    invoke-direct {v6, v2, v3}, Lg3/b;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v5, v6}, Ls3/t;-><init>(Landroid/content/Context;Ll4/l;Lg3/b;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, v2, Lr3/v;->f:Ls3/t;

    .line 56
    .line 57
    iget-object v1, v0, Ls3/t;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 69
    .line 70
    new-instance v3, Ls3/r;

    .line 71
    .line 72
    invoke-direct {v3, v0, v2}, Ls3/r;-><init>(Ls3/t;I)V

    .line 73
    .line 74
    .line 75
    const-string v2, "stryker-lan-scan"

    .line 76
    .line 77
    invoke-direct {v1, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Ls3/t;->G:Ljava/lang/Thread;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "nmap "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v2, Lr3/v;->e:Ljava/lang/String;

    .line 97
    .line 98
    sget-object v3, Lr3/v;->m:Ll4/l;

    .line 99
    .line 100
    const-string v4, "local_scan_target"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    sget-object v3, Lr3/v;->m:Ll4/l;

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v5, "ip -o -f inet addr show | awk \'/scope global/ {print $2, $4}\' | grep "

    .line 120
    .line 121
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/String;

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, " "

    .line 160
    .line 161
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v4, ""

    .line 169
    .line 170
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    goto :goto_0

    .line 175
    :cond_3
    const-string v3, "192.168.1.1/24"

    .line 176
    .line 177
    :goto_0
    const-string v1, " -sn -PE -n -PP -T4 --stats-every 1s"

    .line 178
    .line 179
    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    new-instance v1, Ln3/i;

    .line 184
    .line 185
    sget-object v3, Lr3/v;->j:Landroid/app/Activity;

    .line 186
    .line 187
    sget-object v4, Lr3/v;->k:Landroid/content/Context;

    .line 188
    .line 189
    const/4 v6, 0x1

    .line 190
    invoke-direct/range {v1 .. v6}, Ln3/i;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    :goto_1
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lt3/a;->b:Lr3/v;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
