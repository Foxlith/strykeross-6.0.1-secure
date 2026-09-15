.class public final synthetic Lj2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lj2/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/c;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lj2/c;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lj2/c;->b:Lcom/zalexdev/stryker/MainActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/zalexdev/stryker/engine/RootlessService;->b(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/MainActivity;->h(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {v1, p1}, Lcom/zalexdev/stryker/MainActivity;->h(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_2
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v2, 0x7f0a0205

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of v3, p1, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    check-cast p1, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-lez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/u0;->I()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/zalexdev/stryker/MainActivity;->i()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 73
    .line 74
    const v3, 0x7f0800b0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Le0/j;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v2}, Landroidx/fragment/app/u0;->v(I)Landroidx/fragment/app/Fragment;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget v4, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 95
    .line 96
    const v5, 0x7f0a0166

    .line 97
    .line 98
    .line 99
    if-eqz v4, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move v4, v5

    .line 103
    :goto_0
    invoke-direct {p1, v3, v4}, Le0/j;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 104
    .line 105
    .line 106
    iput-object p1, v1, Lcom/zalexdev/stryker/MainActivity;->b:Le0/j;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, p1}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const v3, 0x7f010031

    .line 117
    .line 118
    .line 119
    const v4, 0x7f010032

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3, v4, v0, v0}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Lcom/zalexdev/stryker/settings/SettingsNew;

    .line 126
    .line 127
    invoke-direct {v3}, Lcom/zalexdev/stryker/settings/SettingsNew;-><init>()V

    .line 128
    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1, v3, v4, v2}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->h(Z)I

    .line 135
    .line 136
    .line 137
    iget-object p1, v1, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-static {v5}, Landroidx/fragment/app/x0;->h(I)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
