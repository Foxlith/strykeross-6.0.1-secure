.class public final synthetic Lr3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Dialog;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Ljava/lang/Object;Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p6, p0, Lr3/f;->a:I

    iput-object p1, p0, Lr3/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr3/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lr3/f;->b:Landroid/app/Dialog;

    iput-object p4, p0, Lr3/f;->e:Ljava/lang/Object;

    iput-object p5, p0, Lr3/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;Lcom/zalexdev/stryker/custom/Exploit;Landroid/app/Dialog;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/f;->a:I

    iput-object p1, p0, Lr3/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lr3/f;->d:Ljava/lang/Object;

    iput-object p3, p0, Lr3/f;->e:Ljava/lang/Object;

    iput-object p4, p0, Lr3/f;->f:Ljava/lang/Object;

    iput-object p5, p0, Lr3/f;->b:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lr3/f;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lr3/f;->b:Landroid/app/Dialog;

    .line 8
    .line 9
    iget-object v4, p0, Lr3/f;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, p0, Lr3/f;->e:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, Lr3/f;->d:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, p0, Lr3/f;->c:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v7, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 21
    .line 22
    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 23
    .line 24
    check-cast v5, Landroid/view/View;

    .line 25
    .line 26
    check-cast v4, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->B:Ll4/c;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ll4/c;->a()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, v7, Lcom/zalexdev/stryker/wifi/Wifi;->C:Lo4/f0;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Ll4/c;->a()V

    .line 40
    .line 41
    .line 42
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 43
    .line 44
    new-instance v8, Lo4/z;

    .line 45
    .line 46
    const/16 v9, 0x9

    .line 47
    .line 48
    invoke-direct {v8, v7, v9}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    const-string p1, "Attack stopped"

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    check-cast v7, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 76
    .line 77
    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    check-cast v5, [Ll4/c;

    .line 80
    .line 81
    check-cast v4, [Ljava/util/Timer;

    .line 82
    .line 83
    sget p1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 92
    .line 93
    .line 94
    aget-object p1, v5, v2

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Ll4/c;->a()V

    .line 99
    .line 100
    .line 101
    :cond_2
    :try_start_0
    aget-object p1, v4, v2

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    .line 112
    .line 113
    new-instance v0, Lo4/z;

    .line 114
    .line 115
    invoke-direct {v0, v7, v1}, Lo4/z;-><init>(Lcom/zalexdev/stryker/wifi/Wifi;I)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_1
    check-cast v7, [Ljava/lang/String;

    .line 126
    .line 127
    check-cast v6, Ljava/lang/String;

    .line 128
    .line 129
    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 130
    .line 131
    check-cast v4, Lcom/zalexdev/stryker/custom/Exploit;

    .line 132
    .line 133
    aget-object p1, v7, v2

    .line 134
    .line 135
    const-string v0, "{"

    .line 136
    .line 137
    const-string v1, "}"

    .line 138
    .line 139
    invoke-static {v0, v6, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v5}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    aput-object p1, v7, v2

    .line 159
    .line 160
    invoke-virtual {v4, p1}, Lcom/zalexdev/stryker/custom/Exploit;->setCommand(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
