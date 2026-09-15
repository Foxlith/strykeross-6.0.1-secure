.class public final synthetic Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/nmap/NmapScanner;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/nmap/NmapScanner;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb4/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb4/c;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 7
    .line 8
    iput-object p2, p0, Lb4/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lb4/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lb4/c;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lb4/c;->b:Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->J:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->K:Landroidx/fragment/app/a0;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->l:Landroid/widget/TextView;

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "\n"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    iput v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    .line 68
    .line 69
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->U:Ljava/util/regex/Pattern;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    iget v3, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    iput v3, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->Q:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->V:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    iput v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->R:I

    .line 105
    .line 106
    :cond_2
    invoke-virtual {v2}, Lcom/zalexdev/stryker/nmap/NmapScanner;->h()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/zalexdev/stryker/nmap/NmapScanner;->f()V

    .line 110
    .line 111
    .line 112
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->u:Landroid/widget/ScrollView;

    .line 113
    .line 114
    new-instance v3, Lb4/b;

    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    invoke-direct {v3, v2, v5}, Lb4/b;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    .line 122
    .line 123
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->v:Landroid/app/Dialog;

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->w:Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->y:Landroid/widget/TextView;

    .line 156
    .line 157
    iget v1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->P:I

    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->x:Landroid/widget/ScrollView;

    .line 167
    .line 168
    new-instance v1, Lb4/b;

    .line 169
    .line 170
    const/4 v3, 0x3

    .line 171
    invoke-direct {v1, v2, v3}, Lb4/b;-><init>(Lcom/zalexdev/stryker/nmap/NmapScanner;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    :cond_3
    :goto_1
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
