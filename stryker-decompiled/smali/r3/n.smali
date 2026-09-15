.class public final synthetic Lr3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr3/t;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Exploit;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/ScrollView;

.field public final synthetic f:[I

.field public final synthetic g:[I

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic j:I

.field public final synthetic k:Landroid/widget/ProgressBar;

.field public final synthetic l:Landroid/widget/ImageView;

.field public final synthetic m:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/Exploit;Landroid/widget/TextView;Landroid/widget/ScrollView;[I[ILjava/util/List;Lcom/google/android/material/progressindicator/LinearProgressIndicator;ILandroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/n;->a:Lr3/t;

    iput-object p2, p0, Lr3/n;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lr3/n;->c:Lcom/zalexdev/stryker/custom/Exploit;

    iput-object p4, p0, Lr3/n;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lr3/n;->e:Landroid/widget/ScrollView;

    iput-object p6, p0, Lr3/n;->f:[I

    iput-object p7, p0, Lr3/n;->g:[I

    iput-object p8, p0, Lr3/n;->h:Ljava/util/List;

    iput-object p9, p0, Lr3/n;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput p10, p0, Lr3/n;->j:I

    iput-object p11, p0, Lr3/n;->k:Landroid/widget/ProgressBar;

    iput-object p12, p0, Lr3/n;->l:Landroid/widget/ImageView;

    iput-object p13, p0, Lr3/n;->m:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v9, v1, Lr3/n;->a:Lr3/t;

    .line 4
    .line 5
    iget-object v10, v1, Lr3/n;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v11, v1, Lr3/n;->c:Lcom/zalexdev/stryker/custom/Exploit;

    .line 8
    .line 9
    iget-object v0, v1, Lr3/n;->d:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v12, v1, Lr3/n;->e:Landroid/widget/ScrollView;

    .line 12
    .line 13
    iget-object v13, v1, Lr3/n;->f:[I

    .line 14
    .line 15
    iget-object v14, v1, Lr3/n;->g:[I

    .line 16
    .line 17
    iget-object v15, v1, Lr3/n;->h:Ljava/util/List;

    .line 18
    .line 19
    iget-object v8, v1, Lr3/n;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 20
    .line 21
    iget v7, v1, Lr3/n;->j:I

    .line 22
    .line 23
    iget-object v6, v1, Lr3/n;->k:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    iget-object v5, v1, Lr3/n;->l:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v4, v1, Lr3/n;->m:Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v3, v9, Lr3/t;->b:Landroid/app/Activity;

    .line 30
    .line 31
    new-instance v2, Ln1/b0;

    .line 32
    .line 33
    const/16 v16, 0x3

    .line 34
    .line 35
    move-object/from16 v17, v2

    .line 36
    .line 37
    move-object/from16 v18, v3

    .line 38
    .line 39
    move-object v3, v9

    .line 40
    move-object/from16 v19, v4

    .line 41
    .line 42
    move-object v4, v10

    .line 43
    move-object/from16 v20, v5

    .line 44
    .line 45
    move-object v5, v11

    .line 46
    move-object/from16 v21, v6

    .line 47
    .line 48
    move-object v6, v0

    .line 49
    move/from16 v22, v7

    .line 50
    .line 51
    move-object v7, v12

    .line 52
    move-object/from16 v23, v8

    .line 53
    .line 54
    move/from16 v8, v16

    .line 55
    .line 56
    invoke-direct/range {v2 .. v8}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v3, v17

    .line 60
    .line 61
    move-object/from16 v2, v18

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v3, Lv2/a;

    .line 68
    .line 69
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/Exploit;->getSuccesspatern()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/Exploit;->genereteLaunchCommand()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v6, v9, Lr3/t;->d:Ll4/l;

    .line 78
    .line 79
    invoke-direct {v3, v4, v5, v6}, Lv2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ll4/l;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lo2/d;

    .line 83
    .line 84
    invoke-direct {v4, v9, v0, v12}, Lo2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v4, v3, Lv2/a;->e:Lo2/d;

    .line 88
    .line 89
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 90
    .line 91
    new-array v4, v2, [Ljava/lang/Void;

    .line 92
    .line 93
    invoke-virtual {v3, v0, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    move v0, v2

    .line 115
    :goto_1
    monitor-enter v13

    .line 116
    if-eqz v0, :cond_0

    .line 117
    .line 118
    :try_start_1
    aget v0, v14, v2

    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    aput v0, v14, v2

    .line 123
    .line 124
    invoke-virtual {v11}, Lcom/zalexdev/stryker/custom/Exploit;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto :goto_3

    .line 134
    :cond_0
    :goto_2
    aget v0, v13, v2

    .line 135
    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 137
    .line 138
    aput v0, v13, v2

    .line 139
    .line 140
    iget-object v8, v9, Lr3/t;->b:Landroid/app/Activity;

    .line 141
    .line 142
    new-instance v11, Lr3/o;

    .line 143
    .line 144
    move-object v2, v11

    .line 145
    move-object v3, v9

    .line 146
    move-object/from16 v4, v23

    .line 147
    .line 148
    move v5, v0

    .line 149
    move/from16 v6, v22

    .line 150
    .line 151
    move-object v7, v10

    .line 152
    invoke-direct/range {v2 .. v7}, Lr3/o;-><init>(Lr3/t;Lcom/google/android/material/progressindicator/LinearProgressIndicator;IILandroid/widget/TextView;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    move/from16 v2, v22

    .line 159
    .line 160
    if-ne v0, v2, :cond_1

    .line 161
    .line 162
    iget-object v0, v9, Lr3/t;->b:Landroid/app/Activity;

    .line 163
    .line 164
    new-instance v11, Lr3/b;

    .line 165
    .line 166
    move-object v2, v11

    .line 167
    move-object v3, v9

    .line 168
    move-object/from16 v4, v21

    .line 169
    .line 170
    move-object/from16 v5, v20

    .line 171
    .line 172
    move-object v6, v14

    .line 173
    move-object v7, v10

    .line 174
    move-object/from16 v8, v23

    .line 175
    .line 176
    move-object v9, v15

    .line 177
    move-object/from16 v10, v19

    .line 178
    .line 179
    invoke-direct/range {v2 .. v10}, Lr3/b;-><init>(Lr3/t;Landroid/widget/ProgressBar;Landroid/widget/ImageView;[ILandroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/util/List;Landroid/widget/TextView;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    .line 184
    .line 185
    :cond_1
    monitor-exit v13

    .line 186
    return-void

    .line 187
    :goto_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw v0
.end method
