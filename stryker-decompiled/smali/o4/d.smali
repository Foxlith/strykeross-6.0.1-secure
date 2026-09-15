.class public final synthetic Lo4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo4/u;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/WiFINetwork;


# direct methods
.method public synthetic constructor <init>(Lo4/u;Lcom/zalexdev/stryker/custom/WiFINetwork;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lo4/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/d;->b:Lo4/u;

    .line 7
    .line 8
    iput-object p2, p0, Lo4/d;->c:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lo4/d;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lo4/d;->c:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 4
    .line 5
    iget-object v1, p0, Lo4/d;->b:Lo4/u;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    const/16 p1, 0x8

    .line 16
    .line 17
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    const/4 p1, 0x5

    .line 22
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    const/4 p1, 0x4

    .line 27
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_3
    const/4 p1, 0x3

    .line 32
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    const/4 p1, 0x2

    .line 37
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_5
    const/4 p1, 0x1

    .line 42
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const-string v2, "===============\n\nStored Password: "

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "\n\n===============\n\n\n"

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getInfo()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "*"

    .line 106
    .line 107
    const-string v5, "    -"

    .line 108
    .line 109
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "\n"

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 123
    .line 124
    iget-object v3, v1, Lo4/u;->b:Landroid/content/Context;

    .line 125
    .line 126
    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    const-string v3, "Additional info"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v3, Lcom/stryker/terminal/setup/a;

    .line 140
    .line 141
    const/16 v4, 0xe

    .line 142
    .line 143
    invoke-direct {v3, v4}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    .line 144
    .line 145
    .line 146
    const v4, 0x104000a

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_2

    .line 162
    .line 163
    new-instance v3, Lcom/stryker/terminal/ui/customize/a;

    .line 164
    .line 165
    const/16 v4, 0x13

    .line 166
    .line 167
    invoke-direct {v3, v1, v0, v4}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    const-string v0, "Copy psk"

    .line 171
    .line 172
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 173
    .line 174
    .line 175
    :cond_2
    new-instance v0, Lcom/stryker/terminal/ui/customize/a;

    .line 176
    .line 177
    const/16 v3, 0x14

    .line 178
    .line 179
    invoke-direct {v0, v1, p1, v3}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    const-string p1, "Copy"

    .line 183
    .line 184
    invoke-virtual {v2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lf/m;->show()Lf/n;

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_7
    const/4 p1, 0x7

    .line 192
    invoke-virtual {v1, v0, p1}, Lo4/u;->a(Lcom/zalexdev/stryker/custom/WiFINetwork;I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
