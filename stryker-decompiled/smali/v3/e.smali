.class public final Lv3/e;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Lv3/e;->s:I

    .line 2
    .line 3
    iput-object p1, p0, Lv3/e;->u:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p6, p0, Lv3/e;->t:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4, p5}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget v0, p0, Lv3/e;->s:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/e;->t:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 9
    .line 10
    const-string v0, "Mdk4 stopped"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, [Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const-string v0, "Deauth stopped due critical error"

    .line 19
    .line 20
    aput-object v0, v1, p1

    .line 21
    .line 22
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x1f

    .line 26
    .line 27
    iget-object v3, p0, Lv3/e;->u:Ljava/lang/Object;

    .line 28
    .line 29
    if-lt v0, v2, :cond_1

    .line 30
    .line 31
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    sget-object p1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 45
    .line 46
    new-instance v2, Lv3/b;

    .line 47
    .line 48
    invoke-direct {v2, v3, v0}, Lv3/b;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 55
    .line 56
    new-instance v2, Lv3/d;

    .line 57
    .line 58
    invoke-direct {v2, v3, v1, v0}, Lv3/d;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "successfully changed"

    .line 69
    .line 70
    invoke-static {p1, v0}, Ll4/l;->l(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 75
    .line 76
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Lj2/g;

    .line 86
    .line 87
    const/16 v1, 0x9

    .line 88
    .line 89
    invoke-direct {v0, p0, p1, v1}, Lj2/g;-><init>(Ljava/lang/Object;ZI)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Ll4/c;->a:Landroid/app/Activity;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lv3/e;->s:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/e;->u:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lv3/e;->t:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string v0, "Packets sent"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast v2, [Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aput-object p1, v2, v0

    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Ll4/c;->d:Ll4/l;

    .line 25
    .line 26
    const-string v3, "hide"

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "((\\w{2}:){5}\\w{2})"

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v3, "XX:XX:XX:XX:XX:XX"

    .line 55
    .line 56
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_1
    check-cast v2, Landroid/widget/TextView;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "\n"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Lo4/u;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lo4/u;->f(Landroid/widget/TextView;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "available"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    const-string p1, "Deauth failed! Your wifi card does not support deauthing!\n"

    .line 99
    .line 100
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void

    .line 104
    :pswitch_1
    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    check-cast v1, Lo4/r;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ll4/h;->e(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_2
    const-string v0, "MAC address format error"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const-string v0, "Failed to change"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    const-string v0, "successfully changed"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_3

    .line 138
    .line 139
    const-string v0, "address changed"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    :cond_3
    iget-object p1, p0, Ll4/c;->c:Ljava/lang/Process;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 150
    .line 151
    .line 152
    :cond_4
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
