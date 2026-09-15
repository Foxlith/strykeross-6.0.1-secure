.class public final Lv3/f;
.super Ll4/o;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lv3/f;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lv3/f;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p5, p0, Lv3/f;->o:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4}, Ll4/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll4/o;->j:Ll4/l;

    .line 2
    .line 3
    iget v1, p0, Lv3/f;->n:I

    .line 4
    .line 5
    const-string v2, "New MAC:"

    .line 6
    .line 7
    iget-object v3, p0, Lv3/f;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lv3/f;->o:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 15
    .line 16
    sget v1, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v1, "stored"

    .line 26
    .line 27
    invoke-static {p1, v1}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const-string p1, "Password changed successfully!"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    const-string p1, "vnc_passwd"

    .line 41
    .line 42
    invoke-virtual {v0, p1, v4}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/zalexdev/stryker/vnc/VNCFragment;->i()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string p1, "Error when changing password."

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, v3, Lcom/zalexdev/stryker/vnc/VNCFragment;->E:Lcom/google/android/material/button/MaterialButton;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_0
    invoke-static {p1, v2}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    const-string p1, "MAC address was successful changed."

    .line 68
    .line 69
    :goto_2
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    const-string p1, "Failed to change MAC address."

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_3
    new-instance p1, Ljava/lang/Thread;

    .line 77
    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    new-instance v0, Lw2/h;

    .line 81
    .line 82
    const/16 v1, 0x19

    .line 83
    .line 84
    invoke-direct {v0, p0, v4, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 91
    .line 92
    .line 93
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-lez v0, :cond_3

    .line 104
    .line 105
    check-cast v4, Landroid/widget/TextView;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/lang/CharSequence;

    .line 113
    .line 114
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void

    .line 118
    :pswitch_2
    invoke-static {p1, v2}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 123
    .line 124
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 133
    .line 134
    new-instance v1, Lj2/g;

    .line 135
    .line 136
    const/16 v2, 0xa

    .line 137
    .line 138
    invoke-direct {v1, p0, p1, v2}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    new-instance p1, Ljava/lang/Thread;

    .line 145
    .line 146
    check-cast v4, Ljava/lang/String;

    .line 147
    .line 148
    new-instance v0, Lw2/h;

    .line 149
    .line 150
    const/16 v1, 0x18

    .line 151
    .line 152
    invoke-direct {v0, p0, v4, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
