.class public final synthetic Lo4/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;ILjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo4/b0;->a:I

    iput-object p1, p0, Lo4/b0;->e:Ljava/lang/Object;

    iput p2, p0, Lo4/b0;->c:I

    iput-object p3, p0, Lo4/b0;->d:Ljava/lang/String;

    iput-object p4, p0, Lo4/b0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lo4/b0;->g:Ljava/lang/Object;

    iput-object p6, p0, Lo4/b0;->b:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/FastPairExploit;[IILcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;Ljava/lang/String;[Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lo4/b0;->a:I

    iput-object p1, p0, Lo4/b0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lo4/b0;->b:[I

    iput p3, p0, Lo4/b0;->c:I

    iput-object p4, p0, Lo4/b0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lo4/b0;->d:Ljava/lang/String;

    iput-object p6, p0, Lo4/b0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lo4/b0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lo4/b0;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lo4/b0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lo4/b0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v4, v3

    .line 13
    check-cast v4, Lcom/zalexdev/stryker/wpair/FastPairExploit;

    .line 14
    .line 15
    iget-object v5, p0, Lo4/b0;->b:[I

    .line 16
    .line 17
    iget v6, p0, Lo4/b0;->c:I

    .line 18
    .line 19
    move-object v7, v2

    .line 20
    check-cast v7, Lcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;

    .line 21
    .line 22
    iget-object v8, p0, Lo4/b0;->d:Ljava/lang/String;

    .line 23
    .line 24
    move-object v9, v1

    .line 25
    check-cast v9, [Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-static/range {v4 .. v9}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->d(Lcom/zalexdev/stryker/wpair/FastPairExploit;[IILcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;Ljava/lang/String;[Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    check-cast v3, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v7, p0, Lo4/b0;->b:[I

    .line 39
    .line 40
    iget v0, p0, Lo4/b0;->c:I

    .line 41
    .line 42
    if-lez v0, :cond_4

    .line 43
    .line 44
    sget v1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 50
    .line 51
    const-string v4, "dd-MM_HH-mm"

    .line 52
    .line 53
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-direct {v1, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Ljava/util/Date;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v6, p0, Lo4/b0;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v8, "/MassHS_"

    .line 78
    .line 79
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, "_"

    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ".cap"

    .line 91
    .line 92
    invoke-static {v4, v1, v0}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    new-instance v0, Ljava/io/File;

    .line 97
    .line 98
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lo4/c0;

    .line 102
    .line 103
    invoke-direct {v1}, Lo4/c0;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    array-length v4, v0

    .line 115
    move v9, v1

    .line 116
    :goto_0
    if-ge v9, v4, :cond_2

    .line 117
    .line 118
    aget-object v10, v0, v9

    .line 119
    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    .line 123
    .line 124
    .line 125
    move-result-wide v11

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 127
    .line 128
    .line 129
    move-result-wide v13

    .line 130
    cmp-long v11, v11, v13

    .line 131
    .line 132
    if-lez v11, :cond_1

    .line 133
    .line 134
    :cond_0
    move-object v2, v10

    .line 135
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    if-eqz v2, :cond_3

    .line 139
    .line 140
    new-instance v0, Ljava/io/File;

    .line 141
    .line 142
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    .line 147
    .line 148
    iget-object v0, v3, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1, v8}, Ll4/l;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ljava/io/File;

    .line 158
    .line 159
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    move v6, v0

    .line 167
    goto :goto_1

    .line 168
    :cond_3
    move v6, v1

    .line 169
    :goto_1
    new-instance v0, Lj2/d;

    .line 170
    .line 171
    const/4 v9, 0x4

    .line 172
    move-object v4, v0

    .line 173
    invoke-direct/range {v4 .. v9}, Lj2/d;-><init>(Landroid/view/KeyEvent$Callback;ZLjava/lang/Object;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v0}, Lcom/zalexdev/stryker/wifi/Wifi;->f(Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    iget-object v0, v3, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 180
    .line 181
    iget-object v1, v0, Ll4/l;->e:Ll4/m;

    .line 182
    .line 183
    invoke-virtual {v0}, Ll4/l;->B()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Ll4/m;->b(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    iget-object v0, v3, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    .line 191
    .line 192
    iget-object v1, v0, Ll4/l;->e:Ll4/m;

    .line 193
    .line 194
    invoke-virtual {v0}, Ll4/l;->y()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v1, v0}, Ll4/m;->b(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
