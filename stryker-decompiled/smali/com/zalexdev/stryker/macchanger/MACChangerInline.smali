.class public Lcom/zalexdev/stryker/macchanger/MACChangerInline;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Ll4/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v7, 0x0

    .line 9
    invoke-static {v0, v7}, Lg/a;->z(Landroid/view/Window;Z)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d0021

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lf/q;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ll4/l;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->a:Ll4/l;

    .line 34
    .line 35
    const-string v1, "(([0-9A-f]{2}:){5}[0-9A-f]{2})"

    .line 36
    .line 37
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const v0, 0x7f0a0493

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v5, v0

    .line 67
    check-cast v5, Landroid/widget/TextView;

    .line 68
    .line 69
    const v0, 0x7f0a042d

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v9, v0

    .line 77
    check-cast v9, Landroid/widget/TextView;

    .line 78
    .line 79
    const v0, 0x7f0a01d0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    new-instance v1, Lcom/nambimobile/widgets/efab/a;

    .line 89
    .line 90
    const/16 v2, 0xf

    .line 91
    .line 92
    invoke-direct {v1, p0, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->a:Ll4/l;

    .line 99
    .line 100
    const-string v1, "wlan_wifi"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    new-instance v0, Lv3/f;

    .line 107
    .line 108
    const-string v1, "ip addr show "

    .line 109
    .line 110
    const-string v2, " | sed -n \"s/.*link\\/ether \\(\\([0-9A-f]\\{2\\}:\\)\\{5\\}[0-9A-f]\\{2\\}\\).*/\\1/p\""

    .line 111
    .line 112
    invoke-static {v1, v10, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v6, 0x1

    .line 118
    move-object v1, p0

    .line 119
    move-object v2, p0

    .line 120
    invoke-direct/range {v0 .. v6}, Lv3/f;-><init>(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    const/16 v1, 0x1e

    .line 133
    .line 134
    if-eq v0, v1, :cond_1

    .line 135
    .line 136
    new-instance v0, Lv3/i;

    .line 137
    .line 138
    const-string v1, "/data/data/com.zalexdev.stryker/files/changemac "

    .line 139
    .line 140
    const-string v2, " "

    .line 141
    .line 142
    invoke-static {v1, v10, v2, v6}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    move-object v1, p0

    .line 147
    move-object v2, p0

    .line 148
    move-object v3, p0

    .line 149
    move-object v5, v10

    .line 150
    invoke-direct/range {v0 .. v6}, Lv3/i;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerInline;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 155
    .line 156
    new-instance v1, Lv3/g;

    .line 157
    .line 158
    invoke-direct {v1, p0, v10, v6, v7}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->a:Ll4/l;

    .line 169
    .line 170
    const-string v1, "No valid MAC Address found!"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 176
    .line 177
    .line 178
    return-void
.end method
