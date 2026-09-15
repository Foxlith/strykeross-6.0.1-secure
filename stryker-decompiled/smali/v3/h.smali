.class public final synthetic Lv3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv3/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv3/i;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lv3/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/h;->b:Lv3/i;

    .line 7
    .line 8
    iput-object p2, p0, Lv3/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lv3/h;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lv3/h;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lv3/h;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lv3/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lv3/h;->b:Lv3/i;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v5, Lv3/i;->u:Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v3, 0x7f0d0060

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v3, 0x7f0a03c9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v4, "Failed to change the MAC address on your device. The Android version of your device is greater than 11, in which case you need to use XPosed (or <a href=\"https://github.com/LSPosed/LSPosed#install\">LSPosed</a>) and the <a href=\"https://github.com/DavidBerdik/MACsposed\">MACsposed</a> module. More details <a href=\"https://github.com/DavidBerdik/MACsposed\">here</a>."

    .line 47
    .line 48
    invoke-static {v4, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Landroid/text/method/LinkMovementMethod;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 64
    .line 65
    iget-object v3, v5, Ll4/c;->b:Landroid/content/Context;

    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const-string v3, "Failed to change MAC address."

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Lcom/stryker/terminal/setup/a;

    .line 81
    .line 82
    const/16 v3, 0x8

    .line 83
    .line 84
    invoke-direct {v2, v3}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 85
    .line 86
    .line 87
    const v3, 0x104000a

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, v5, Ll4/c;->d:Ll4/l;

    .line 103
    .line 104
    const-string v1, "MAC address successful changed."

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-void

    .line 110
    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v6

    .line 117
    const-wide/16 v8, 0x2710

    .line 118
    .line 119
    add-long/2addr v6, v8

    .line 120
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v8

    .line 124
    cmp-long v0, v8, v6

    .line 125
    .line 126
    iget-object v8, v5, Ll4/c;->d:Ll4/l;

    .line 127
    .line 128
    if-gez v0, :cond_3

    .line 129
    .line 130
    sget v0, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->b:I

    .line 131
    .line 132
    const-string v0, "connectivity"

    .line 133
    .line 134
    iget-object v9, v5, Lv3/i;->u:Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    .line 135
    .line 136
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    if-nez v9, :cond_2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v6, "ip addr show "

    .line 164
    .line 165
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v4, " | sed -n \"s/.*link\\/ether \\(\\([0-9A-f]\\{2\\}:\\)\\{5\\}[0-9A-f]\\{2\\}\\).*/\\1/p\""

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v8, v0}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    new-instance v2, Lv3/h;

    .line 191
    .line 192
    invoke-direct {v2, v5, v3, v0, v1}, Lv3/h;-><init>(Lv3/i;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v5, Ll4/c;->a:Landroid/app/Activity;

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    const-string v0, "The network wait time was longer than expected."

    .line 202
    .line 203
    invoke-virtual {v8, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
