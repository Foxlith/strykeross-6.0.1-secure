.class public final synthetic Ls2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls2/e;

.field public final synthetic c:Ls2/d;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/zalexdev/stryker/custom/Package;


# direct methods
.method public synthetic constructor <init>(Ls2/e;Ls2/d;ZLcom/zalexdev/stryker/custom/Package;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Ls2/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls2/c;->b:Ls2/e;

    .line 7
    .line 8
    iput-object p2, p0, Ls2/c;->c:Ls2/d;

    .line 9
    .line 10
    iput-boolean p3, p0, Ls2/c;->d:Z

    .line 11
    .line 12
    iput-object p4, p0, Ls2/c;->e:Lcom/zalexdev/stryker/custom/Package;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ls2/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ls2/c;->e:Lcom/zalexdev/stryker/custom/Package;

    .line 4
    .line 5
    iget-boolean v2, p0, Ls2/c;->d:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    iget-object v5, p0, Ls2/c;->c:Ls2/d;

    .line 11
    .line 12
    iget-object v6, p0, Ls2/c;->b:Ls2/e;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v5, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v5, Ls2/d;->e:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v6, Ls2/e;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ll4/l;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v6, Ls2/e;->c:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const v7, 0x7f13015a

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lcom/zalexdev/stryker/custom/Package;->setInstalled(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->getAdapterPosition()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v6, Ls2/e;->f:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Runnable;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v2, v6, Ls2/e;->c:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const v3, 0x7f130159

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v0, v5, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 101
    .line 102
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v5, Ls2/d;->e:Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v6, Ls2/e;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Ll4/l;

    .line 113
    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, v6, Ls2/e;->c:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const v4, 0x7f130145

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/custom/Package;->setInstalled(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Landroidx/recyclerview/widget/p1;->getAdapterPosition()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v6, Ls2/e;->f:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Ljava/lang/Runnable;

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    iget-object v2, v6, Ls2/e;->c:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const v3, 0x7f130144

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

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
