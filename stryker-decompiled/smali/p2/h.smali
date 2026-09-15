.class public final synthetic Lp2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lp2/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/h;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    iput-boolean p2, p0, Lp2/h;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lp2/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp2/h;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    iget-boolean v1, p0, Lp2/h;->c:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 13
    .line 14
    const v2, 0x7f1301b1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 41
    .line 42
    const v2, 0x7f13005e

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lp2/h;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 48
    .line 49
    iget-boolean v1, p0, Lp2/h;->c:Z

    .line 50
    .line 51
    sget-object v2, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lp2/r;->d()Lp2/r;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x0

    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-boolean v1, v2, Lp2/r;->h:Z

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-boolean v1, v2, Lp2/r;->h:Z

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 99
    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->u:Landroid/widget/ProgressBar;

    .line 110
    .line 111
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 120
    .line 121
    const v2, 0x7f0800bc

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->x:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->y:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->z:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :goto_2
    return-void

    .line 158
    :pswitch_1
    sget-object v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 159
    .line 160
    iget-object v0, p0, Lp2/h;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 161
    .line 162
    iget-boolean v1, p0, Lp2/h;->c:Z

    .line 163
    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j()V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    :goto_3
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
