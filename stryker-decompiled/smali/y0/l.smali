.class public final synthetic Ly0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly0/p;


# direct methods
.method public synthetic constructor <init>(Ly0/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ly0/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ly0/l;->b:Ly0/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Ly0/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly0/l;->b:Ly0/p;

    .line 8
    .line 9
    const-string v2, "this$0"

    .line 10
    .line 11
    invoke-static {v0, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Ly0/p;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ly0/k;

    .line 17
    .line 18
    iget-object v0, v0, Ly0/p;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ly0/m;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v1, v2, Ly0/k;->j:Lk/g;

    .line 28
    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v3, v2, Ly0/k;->j:Lk/g;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Lk/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ly0/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v1, v2, Ly0/k;->i:Ly0/i;

    .line 42
    .line 43
    iget-object v0, v0, Ly0/j;->b:[I

    .line 44
    .line 45
    array-length v3, v0

    .line 46
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v3, "tableIds"

    .line 54
    .line 55
    invoke-static {v0, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_1
    array-length v3, v0

    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    :goto_0
    if-ge v4, v3, :cond_1

    .line 63
    .line 64
    aget v6, v0, v4

    .line 65
    .line 66
    iget-object v7, v1, Ly0/i;->a:[J

    .line 67
    .line 68
    aget-wide v8, v7, v6

    .line 69
    .line 70
    const-wide/16 v10, 0x1

    .line 71
    .line 72
    sub-long v12, v8, v10

    .line 73
    .line 74
    aput-wide v12, v7, v6

    .line 75
    .line 76
    cmp-long v6, v8, v10

    .line 77
    .line 78
    if-nez v6, :cond_0

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    iput-boolean v5, v1, Ly0/i;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    monitor-exit v1

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    iget-object v0, v2, Ly0/k;->a:Ly0/w;

    .line 93
    .line 94
    invoke-virtual {v0}, Ly0/w;->l()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    invoke-virtual {v0}, Ly0/w;->h()Lc1/e;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lc1/e;->q()Lc1/b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v2, v0}, Ly0/k;->d(Lc1/b;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_2
    monitor-exit v1

    .line 114
    throw v0

    .line 115
    :cond_3
    :goto_3
    return-void

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    monitor-exit v1

    .line 118
    throw v0

    .line 119
    :cond_4
    const-string v0, "observer"

    .line 120
    .line 121
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :pswitch_0
    const-string v0, "this$0"

    .line 126
    .line 127
    iget-object v2, p0, Ly0/l;->b:Ly0/p;

    .line 128
    .line 129
    invoke-static {v2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :try_start_2
    iget-object v0, v2, Ly0/p;->g:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Ly0/h;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    iget-object v3, v2, Ly0/p;->h:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v3, Ly0/f;

    .line 141
    .line 142
    iget-object v4, v2, Ly0/p;->a:Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {v0, v3, v4}, Ly0/h;->b(Ly0/f;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, v2, Ly0/p;->b:I

    .line 149
    .line 150
    iget-object v0, v2, Ly0/p;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Ly0/k;

    .line 153
    .line 154
    iget-object v2, v2, Ly0/p;->f:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Ly0/m;

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ly0/k;->a(Ly0/m;)V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :catch_0
    move-exception v0

    .line 165
    goto :goto_4

    .line 166
    :cond_5
    const-string v0, "observer"

    .line 167
    .line 168
    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :goto_4
    const-string v1, "ROOM"

    .line 173
    .line 174
    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 175
    .line 176
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_5
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
