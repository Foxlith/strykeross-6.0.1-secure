.class public final synthetic Lu3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/logger/LoggerFragment;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;IJLjava/util/ArrayList;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p;->a:Lcom/zalexdev/stryker/logger/LoggerFragment;

    iput p2, p0, Lu3/p;->b:I

    iput-wide p3, p0, Lu3/p;->c:J

    iput-object p5, p0, Lu3/p;->d:Ljava/util/List;

    iput-boolean p6, p0, Lu3/p;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lu3/p;->a:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 2
    .line 3
    iget v1, p0, Lu3/p;->b:I

    .line 4
    .line 5
    iget-wide v2, p0, Lu3/p;->c:J

    .line 6
    .line 7
    iget-object v4, p0, Lu3/p;->d:Ljava/util/List;

    .line 8
    .line 9
    iget-boolean v5, p0, Lu3/p;->e:Z

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    iput-boolean v6, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->u:Z

    .line 13
    .line 14
    iget-boolean v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 15
    .line 16
    if-nez v7, :cond_9

    .line 17
    .line 18
    iget v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 19
    .line 20
    if-eq v1, v7, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    cmp-long v1, v2, v7

    .line 27
    .line 28
    if-ltz v1, :cond_1

    .line 29
    .line 30
    iput-wide v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    .line 31
    .line 32
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_8

    .line 37
    .line 38
    iget-object v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v3, v2, Lu3/i;->b:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3, v6, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v6, v3}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lu3/a;

    .line 67
    .line 68
    iget-wide v2, v2, Lu3/a;->a:J

    .line 69
    .line 70
    iput-wide v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->w:J

    .line 71
    .line 72
    if-gez v1, :cond_3

    .line 73
    .line 74
    iget-wide v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    int-to-long v7, v3

    .line 81
    add-long/2addr v1, v7

    .line 82
    iput-wide v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    .line 83
    .line 84
    :cond_3
    iget-wide v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 85
    .line 86
    const-wide v7, 0x7fffffffffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    cmp-long v1, v1, v7

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    sub-int/2addr v1, v2

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lu3/a;

    .line 106
    .line 107
    iget-wide v7, v1, Lu3/a;->a:J

    .line 108
    .line 109
    iput-wide v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 110
    .line 111
    :cond_4
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->i:Landroid/view/View;

    .line 112
    .line 113
    const/16 v3, 0x8

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    if-eqz v5, :cond_8

    .line 119
    .line 120
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 126
    .line 127
    iget-object v1, v1, Lu3/i;->b:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/16 v3, 0xbb8

    .line 134
    .line 135
    if-le v1, v3, :cond_8

    .line 136
    .line 137
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 138
    .line 139
    iget-object v5, v1, Lu3/i;->b:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-gt v6, v3, :cond_5

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    add-int/lit16 v7, v6, -0xbb8

    .line 149
    .line 150
    invoke-interface {v5, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v3, v7}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    .line 158
    .line 159
    .line 160
    :goto_1
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 161
    .line 162
    iget-object v1, v1, Lu3/i;->b:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_6

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    sub-int/2addr v3, v2

    .line 177
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lu3/a;

    .line 182
    .line 183
    :goto_2
    if-eqz v1, :cond_7

    .line 184
    .line 185
    iget-wide v5, v1, Lu3/a;->a:J

    .line 186
    .line 187
    iput-wide v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 188
    .line 189
    :cond_7
    iput-boolean v2, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    .line 190
    .line 191
    :cond_8
    invoke-virtual {v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->h()V

    .line 192
    .line 193
    .line 194
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const/16 v2, 0x1f4

    .line 199
    .line 200
    if-lt v1, v2, :cond_9

    .line 201
    .line 202
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->C:Lu3/k;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    :cond_9
    :goto_3
    return-void
.end method
