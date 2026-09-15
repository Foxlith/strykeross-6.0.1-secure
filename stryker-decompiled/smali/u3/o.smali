.class public final synthetic Lu3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/logger/LoggerFragment;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;ILjava/util/ArrayList;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lu3/o;->a:I

    iput-object p1, p0, Lu3/o;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    iput p2, p0, Lu3/o;->c:I

    iput-object p3, p0, Lu3/o;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lu3/o;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;JI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu3/o;->a:I

    iput-object p1, p0, Lu3/o;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    iput-object p2, p0, Lu3/o;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lu3/o;->d:J

    iput p5, p0, Lu3/o;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lu3/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu3/o;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 7
    .line 8
    iget v1, p0, Lu3/o;->c:I

    .line 9
    .line 10
    iget-object v2, p0, Lu3/o;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/List;

    .line 13
    .line 14
    iget-wide v3, p0, Lu3/o;->d:J

    .line 15
    .line 16
    iget-boolean v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->A:Z

    .line 17
    .line 18
    if-nez v5, :cond_5

    .line 19
    .line 20
    iget v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->r:I

    .line 21
    .line 22
    if-eq v1, v5, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->e:Lu3/i;

    .line 26
    .line 27
    iget-object v5, v1, Lu3/i;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v6, 0x0

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lu3/a;

    .line 53
    .line 54
    iget-wide v7, v1, Lu3/a;->a:J

    .line 55
    .line 56
    iput-wide v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->w:J

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v5

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lu3/a;

    .line 68
    .line 69
    iget-wide v7, v1, Lu3/a;->a:J

    .line 70
    .line 71
    iput-wide v7, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->v:J

    .line 72
    .line 73
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/16 v7, 0xc8

    .line 78
    .line 79
    if-ne v1, v7, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v5, v6

    .line 83
    :goto_0
    iput-boolean v5, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->t:Z

    .line 84
    .line 85
    iput-boolean v6, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->s:Z

    .line 86
    .line 87
    iput-wide v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->x:J

    .line 88
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    iput-wide v3, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->y:J

    .line 94
    .line 95
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->h:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 96
    .line 97
    const/16 v3, 0x8

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->i:Landroid/view/View;

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    move v3, v6

    .line 111
    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/zalexdev/stryker/logger/LoggerFragment;->h()V

    .line 115
    .line 116
    .line 117
    iget-object v0, v0, Lcom/zalexdev/stryker/logger/LoggerFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lu3/o;->e:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Lv1/t;

    .line 126
    .line 127
    iget-object v1, p0, Lu3/o;->b:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 128
    .line 129
    iget-object v2, v1, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 130
    .line 131
    iget-wide v3, p0, Lu3/o;->d:J

    .line 132
    .line 133
    invoke-virtual {v2, v0, v3, v4}, Lu3/e;->h(Lv1/t;J)Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v2, v1, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 138
    .line 139
    new-instance v3, Lcom/stryker/terminal/component/session/b;

    .line 140
    .line 141
    const/4 v4, 0x6

    .line 142
    iget v5, p0, Lu3/o;->c:I

    .line 143
    .line 144
    invoke-direct {v3, v1, v5, v0, v4}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;ILjava/io/Serializable;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
