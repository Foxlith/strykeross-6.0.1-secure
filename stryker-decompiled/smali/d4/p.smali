.class public final synthetic Ld4/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lt2/m;

.field public final synthetic c:I

.field public final synthetic d:Lcom/zalexdev/stryker/custom/Site;


# direct methods
.method public synthetic constructor <init>(Lt2/m;ILcom/zalexdev/stryker/custom/Site;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Ld4/p;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld4/p;->b:Lt2/m;

    .line 7
    .line 8
    iput p2, p0, Ld4/p;->c:I

    .line 9
    .line 10
    iput-object p3, p0, Ld4/p;->d:Lcom/zalexdev/stryker/custom/Site;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Ld4/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ld4/p;->d:Lcom/zalexdev/stryker/custom/Site;

    .line 4
    .line 5
    iget v2, p0, Ld4/p;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Ld4/p;->b:Lt2/m;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Lt2/m;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ld4/q;

    .line 15
    .line 16
    check-cast v0, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/widget/PopupMenu;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    const v6, 0x7f1304c7

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v5, 0x6

    .line 47
    const-string v6, "Terminal log"

    .line 48
    .line 49
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v5, 0x2

    .line 57
    const v6, 0x7f1304ca

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v5, 0x3

    .line 68
    const v6, 0x7f1304c6

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v5, 0x4

    .line 79
    const v6, 0x7f1304c9

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v5, 0x5

    .line 90
    const v6, 0x7f1304c8

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 94
    .line 95
    .line 96
    new-instance p1, Ld4/j;

    .line 97
    .line 98
    invoke-direct {p1, v0, v2, v1}, Ld4/j;-><init>(Lcom/zalexdev/stryker/nuclei/NucleiMain;ILcom/zalexdev/stryker/custom/Site;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_0
    iget-object p1, v3, Lt2/m;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Ld4/q;

    .line 111
    .line 112
    check-cast p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 113
    .line 114
    invoke-virtual {p1, v2, v1}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->f(ILcom/zalexdev/stryker/custom/Site;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :pswitch_1
    iget-object p1, v3, Lt2/m;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Ld4/q;

    .line 121
    .line 122
    check-cast p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v0, Landroid/content/Intent;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-class v3, Lcom/zalexdev/stryker/nuclei/NucleiScanService;

    .line 134
    .line 135
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "com.zalexdev.stryker.nuclei.CANCEL"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string v1, "id"

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_2
    iget-object p1, v3, Lt2/m;->d:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Ld4/q;

    .line 159
    .line 160
    check-cast p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lcom/zalexdev/stryker/nuclei/NucleiMain;->e(I)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
