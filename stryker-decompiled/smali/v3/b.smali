.class public final synthetic Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/b;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lv3/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/b;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 20
    .line 21
    const v3, 0x7f1303a0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g(Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 46
    .line 47
    const v2, 0x7f130398

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 54
    .line 55
    const v2, -0x109400

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 62
    .line 63
    const v1, 0x7f13039f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    :pswitch_1
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 71
    .line 72
    invoke-virtual {v0}, Ll4/l;->C()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 84
    .line 85
    iget-object v3, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    .line 86
    .line 87
    const v4, 0x1090009

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 94
    .line 95
    const-string v4, "macchanger_wlan"

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const/4 v5, 0x1

    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_4

    .line 113
    .line 114
    :cond_3
    invoke-static {v0, v5}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    move-object v3, v0

    .line 119
    check-cast v3, Ljava/lang/String;

    .line 120
    .line 121
    :cond_4
    invoke-virtual {v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    iget-object v0, v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 129
    .line 130
    new-instance v4, Lcom/zalexdev/stryker/wpair/p;

    .line 131
    .line 132
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/zalexdev/stryker/wpair/p;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
