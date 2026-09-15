.class public final Lb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lb/d;->a:I

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p1, v0}, Lb/d;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/j;I)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lb/d;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/emoji2/text/j;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/d;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initCallback cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lb/d;->a:I

    iput-object p1, p0, Lb/d;->d:Ljava/lang/Object;

    iput p2, p0, Lb/d;->b:I

    iput-object p3, p0, Lb/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Intent;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lb/d;->a:I

    iput-object p1, p0, Lb/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb/d;->d:Ljava/lang/Object;

    iput p3, p0, Lb/d;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lb/d;->a:I

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lb/d;->c:Ljava/lang/Object;

    iput p2, p0, Lb/d;->b:I

    iput-object p3, p0, Lb/d;->d:Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "initCallbacks cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lv1/e;Lf/q0;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lb/d;->a:I

    iput-object p1, p0, Lb/d;->d:Ljava/lang/Object;

    iput-object p2, p0, Lb/d;->c:Ljava/lang/Object;

    iput p3, p0, Lb/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lb/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lb/d;->d:Ljava/lang/Object;

    .line 5
    .line 6
    iget v3, p0, Lb/d;->b:I

    .line 7
    .line 8
    iget-object v4, p0, Lb/d;->c:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 14
    .line 15
    iget-object v0, v2, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    .line 16
    .line 17
    check-cast v4, Landroid/app/Notification;

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v4, Lp1/j;

    .line 24
    .line 25
    check-cast v2, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-virtual {v4, v2, v3}, Lp1/j;->a(Landroid/content/Intent;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_1
    check-cast v4, Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-eq v3, v2, :cond_0

    .line 39
    .line 40
    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/emoji2/text/j;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/emoji2/text/j;->a()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/emoji2/text/j;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/emoji2/text/j;->b()V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_2
    check-cast v4, Lf/q0;

    .line 70
    .line 71
    iget-object v0, v4, Lf/q0;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ly/o;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ly/o;->onFontRetrievalFailed(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :pswitch_3
    check-cast v4, [Ljava/lang/String;

    .line 82
    .line 83
    array-length v0, v4

    .line 84
    new-array v0, v0, [I

    .line 85
    .line 86
    check-cast v2, Landroid/app/Activity;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    array-length v7, v4

    .line 97
    :goto_2
    if-ge v1, v7, :cond_3

    .line 98
    .line 99
    aget-object v8, v4, v1

    .line 100
    .line 101
    invoke-virtual {v5, v8, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    aput v8, v0, v1

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    check-cast v2, Lv/d;

    .line 111
    .line 112
    invoke-interface {v2, v3, v4, v0}, Lv/d;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_4
    check-cast v2, Landroidx/activity/e;

    .line 117
    .line 118
    new-instance v0, Landroid/content/Intent;

    .line 119
    .line 120
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v5, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v4, Landroid/content/IntentSender$SendIntentException;

    .line 130
    .line 131
    const-string v5, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 132
    .line 133
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v2, v3, v1, v0}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_5
    check-cast v2, Landroidx/activity/e;

    .line 142
    .line 143
    check-cast v4, Landroidx/fragment/app/n;

    .line 144
    .line 145
    iget-object v0, v4, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 146
    .line 147
    iget-object v1, v2, Landroidx/activity/result/g;->b:Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Ljava/lang/String;

    .line 158
    .line 159
    if-nez v1, :cond_4

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    iget-object v3, v2, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroidx/activity/result/e;

    .line 169
    .line 170
    if-eqz v3, :cond_6

    .line 171
    .line 172
    iget-object v3, v3, Landroidx/activity/result/e;->a:Landroidx/activity/result/b;

    .line 173
    .line 174
    if-nez v3, :cond_5

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    iget-object v2, v2, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    invoke-interface {v3, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    :goto_3
    iget-object v3, v2, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, v2, Landroidx/activity/result/g;->g:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_4
    return-void

    .line 200
    :pswitch_6
    check-cast v2, Lb/e;

    .line 201
    .line 202
    check-cast v4, Landroid/os/Bundle;

    .line 203
    .line 204
    invoke-virtual {v2, v3, v4}, Lb/e;->b(ILandroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
