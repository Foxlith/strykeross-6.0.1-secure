.class public final synthetic Landroidx/emoji2/text/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/emoji2/text/s;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/emoji2/text/r;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/emoji2/text/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/s;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/emoji2/text/s;->c()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/r;->b:Landroidx/emoji2/text/s;

    .line 13
    .line 14
    const-string v1, "fetchFonts result is not OK. ("

    .line 15
    .line 16
    iget-object v2, v0, Landroidx/emoji2/text/s;->d:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, v0, Landroidx/emoji2/text/s;->h:Lv1/f;

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    monitor-exit v2

    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroidx/emoji2/text/s;->d()Le0/k;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget v3, v2, Le0/k;->e:I

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v4, v0, Landroidx/emoji2/text/s;->d:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 42
    :try_start_2
    monitor-exit v4

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 47
    :catchall_2
    move-exception v1

    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 51
    .line 52
    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 53
    .line 54
    sget v3, Ld0/l;->a:I

    .line 55
    .line 56
    invoke-static {v1}, Ld0/k;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Landroidx/emoji2/text/s;->c:Ld/d;

    .line 60
    .line 61
    iget-object v3, v0, Landroidx/emoji2/text/s;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    filled-new-array {v2}, [Le0/k;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v4, Lz/j;->a:Lf/q0;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v4, v3, v1, v5}, Lf/q0;->y(Landroid/content/Context;[Le0/k;I)Landroid/graphics/Typeface;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v3, v0, Landroidx/emoji2/text/s;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v2, v2, Le0/k;->a:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-static {v3, v2}, Lv1/f;->I(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 82
    .line 83
    .line 84
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    :try_start_5
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 90
    .line 91
    invoke-static {v3}, Ld0/k;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lv1/h;

    .line 95
    .line 96
    invoke-static {v2}, La/c;->l(Ljava/nio/MappedByteBuffer;)Lq0/b;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v3, v1, v2}, Lv1/h;-><init>(Landroid/graphics/Typeface;Lq0/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 101
    .line 102
    .line 103
    :try_start_6
    invoke-static {}, Ld0/k;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 104
    .line 105
    .line 106
    :try_start_7
    invoke-static {}, Ld0/k;->b()V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Landroidx/emoji2/text/s;->d:Ljava/lang/Object;

    .line 110
    .line 111
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 112
    :try_start_8
    iget-object v2, v0, Landroidx/emoji2/text/s;->h:Lv1/f;

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lv1/f;->M(Lv1/h;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_3
    move-exception v2

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 123
    :try_start_9
    invoke-virtual {v0}, Landroidx/emoji2/text/s;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :goto_2
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 128
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 129
    :catchall_4
    move-exception v1

    .line 130
    :try_start_c
    sget v2, Ld0/l;->a:I

    .line 131
    .line 132
    invoke-static {}, Ld0/k;->b()V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 137
    .line 138
    const-string v2, "Unable to open file."

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 144
    :catchall_5
    move-exception v1

    .line 145
    :try_start_d
    sget v2, Ld0/l;->a:I

    .line 146
    .line 147
    invoke-static {}, Ld0/k;->b()V

    .line 148
    .line 149
    .line 150
    throw v1

    .line 151
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, ")"

    .line 162
    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 174
    :goto_3
    iget-object v3, v0, Landroidx/emoji2/text/s;->d:Ljava/lang/Object;

    .line 175
    .line 176
    monitor-enter v3

    .line 177
    :try_start_e
    iget-object v2, v0, Landroidx/emoji2/text/s;->h:Lv1/f;

    .line 178
    .line 179
    if-eqz v2, :cond_5

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Lv1/f;->L(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catchall_6
    move-exception v0

    .line 186
    goto :goto_6

    .line 187
    :cond_5
    :goto_4
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 188
    invoke-virtual {v0}, Landroidx/emoji2/text/s;->b()V

    .line 189
    .line 190
    .line 191
    :goto_5
    return-void

    .line 192
    :goto_6
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 193
    throw v0

    .line 194
    :goto_7
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 195
    throw v0

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
