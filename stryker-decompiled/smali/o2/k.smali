.class public final synthetic Lo2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo2/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/k;->b:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lo2/k;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Lo2/k;->b:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 9
    .line 10
    invoke-virtual {v0}, Ll4/l;->h()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v4, "android.hardware.usb.host"

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 37
    .line 38
    const-string v4, "/sys/module/wlan/parameters/con_mode"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ll4/l;->c(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 47
    .line 48
    const-string v4, "cat /proc/cpuinfo | grep \"Hardware\" | sed \"s/^Hardware.*: \\(.*\\)/\\1/g\""

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v4, "Qualcomm"

    .line 55
    .line 56
    invoke-static {v1, v4}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_1
    move v4, v1

    .line 61
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 62
    .line 63
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 64
    .line 65
    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v6, "samsung"

    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v6, 0x1

    .line 76
    xor-int/lit8 v7, v1, 0x1

    .line 77
    .line 78
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-direct {v1, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 92
    .line 93
    .line 94
    move-result-wide v8

    .line 95
    const-wide/32 v10, 0x40000000

    .line 96
    .line 97
    .line 98
    div-long/2addr v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    const-wide/16 v8, 0x0

    .line 101
    .line 102
    :goto_0
    const-wide/16 v10, 0x4

    .line 103
    .line 104
    cmp-long v1, v8, v10

    .line 105
    .line 106
    if-ltz v1, :cond_2

    .line 107
    .line 108
    move v10, v6

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 111
    move v10, v1

    .line 112
    :goto_1
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 113
    .line 114
    const-string v11, "pcheck_root"

    .line 115
    .line 116
    invoke-virtual {v1, v11, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 120
    .line 121
    const-string v11, "pcheck_monitor"

    .line 122
    .line 123
    invoke-virtual {v1, v11, v4}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 127
    .line 128
    const-string v11, "pcheck_usb"

    .line 129
    .line 130
    invoke-virtual {v1, v11, v5}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 134
    .line 135
    const-string v11, "pcheck_manufacture"

    .line 136
    .line 137
    invoke-virtual {v1, v11, v7}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 141
    .line 142
    const-string v11, "pcheck_space"

    .line 143
    .line 144
    invoke-virtual {v1, v11, v10}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 148
    .line 149
    const-string v11, "pcheck_free_gb"

    .line 150
    .line 151
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v1, v11, v12}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 159
    .line 160
    const-string v11, "pcheck_checked"

    .line 161
    .line 162
    invoke-virtual {v1, v11, v6}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_4

    .line 170
    .line 171
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    .line 172
    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_3

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    .line 183
    .line 184
    new-instance v11, Lo2/l;

    .line 185
    .line 186
    move-object v1, v11

    .line 187
    move v6, v7

    .line 188
    move v7, v10

    .line 189
    invoke-direct/range {v1 .. v9}, Lo2/l;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;ZZZZZJ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_2
    return-void

    .line 196
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 197
    .line 198
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_1
    iget-object v0, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->c:Ll4/l;

    .line 208
    .line 209
    iget-object v1, v2, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {v1}, Ll4/l;->Y(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
