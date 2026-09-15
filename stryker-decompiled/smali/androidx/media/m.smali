.class public final Landroidx/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/fragment/app/n;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Landroidx/media/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media/m;->d:Landroidx/fragment/app/n;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media/m;->b:Landroidx/fragment/app/n;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/media/m;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Landroidx/media/m;->e:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/media/m;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/media/m;->e:Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "MBServiceCompat"

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/media/m;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Landroidx/media/m;->d:Landroidx/fragment/app/n;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/media/m;->b:Landroidx/fragment/app/n;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v7, v6, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Landroidx/media/MediaBrowserServiceCompat;

    .line 25
    .line 26
    iget-object v7, v7, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 27
    .line 28
    invoke-virtual {v7, v0, v5}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroidx/media/c;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "getMediaItem for callback that isn\'t registered id="

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, v6, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat;

    .line 57
    .line 58
    check-cast v2, Lb/e;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v0, Landroidx/media/a;

    .line 64
    .line 65
    invoke-direct {v0, v4, v2, v1}, Landroidx/media/a;-><init>(Ljava/lang/String;Lb/e;I)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    iput v1, v0, Landroidx/media/j;->c:I

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media/j;->c()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/media/j;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v1, "onLoadItem must call detach() or sendResult() before returning for id="

    .line 84
    .line 85
    invoke-static {v1, v4}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :pswitch_0
    invoke-virtual {v7}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v7, v6, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v7, Landroidx/media/MediaBrowserServiceCompat;

    .line 100
    .line 101
    iget-object v7, v7, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    .line 102
    .line 103
    invoke-virtual {v7, v0, v5}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroidx/media/c;

    .line 108
    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "removeSubscription for callback that isn\'t registered id="

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_2
    iget-object v5, v6, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v5, Landroidx/media/MediaBrowserServiceCompat;

    .line 132
    .line 133
    check-cast v2, Landroid/os/IBinder;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Landroidx/media/c;->c:Ljava/util/HashMap;

    .line 139
    .line 140
    if-nez v2, :cond_3

    .line 141
    .line 142
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/util/List;

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Lg0/c;

    .line 172
    .line 173
    iget-object v7, v7, Lg0/c;->a:Ljava/lang/Object;

    .line 174
    .line 175
    if-ne v2, v7, :cond_4

    .line 176
    .line 177
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    goto :goto_2

    .line 182
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_6

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_6
    if-nez v1, :cond_8

    .line 192
    .line 193
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "removeSubscription called for "

    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, " which is not subscribed"

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_8
    :goto_3
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
