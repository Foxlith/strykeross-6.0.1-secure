.class public final synthetic Lu3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lu3/q;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lu3/q;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lu3/q;->c:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lu3/q;->a:I

    .line 2
    .line 3
    const v1, 0x7f13036c

    .line 4
    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lu3/q;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 10
    .line 11
    iget-object v2, p0, Lu3/q;->c:Ljava/io/File;

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 14
    .line 15
    if-nez v3, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    if-nez v2, :cond_1

    .line 26
    .line 27
    :catch_0
    iget-object v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->b:Ll4/l;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, ".provider"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 71
    .line 72
    const-string v3, "yyyy-MM-dd-HH-mm"

    .line 73
    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Landroid/content/Intent;

    .line 82
    .line 83
    const-string v4, "android.intent.action.SEND"

    .line 84
    .line 85
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v4, "text/plain"

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string v4, "android.intent.extra.STREAM"

    .line 94
    .line 95
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string v1, "android.intent.extra.SUBJECT"

    .line 99
    .line 100
    const-string v4, "Stryker log"

    .line 101
    .line 102
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v4, "Stryker log at: "

    .line 108
    .line 109
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Ljava/util/Date;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "android.intent.extra.TEXT"

    .line 129
    .line 130
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    const v2, 0x7f130370

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lu3/q;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 156
    .line 157
    iget-object v2, p0, Lu3/q;->c:Ljava/io/File;

    .line 158
    .line 159
    iget-boolean v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 160
    .line 161
    if-eqz v3, :cond_3

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    iget-object v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->b:Ll4/l;

    .line 165
    .line 166
    if-eqz v2, :cond_4

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x7f13036d

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    goto :goto_1

    .line 184
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_1
    invoke-virtual {v3, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    return-void

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
