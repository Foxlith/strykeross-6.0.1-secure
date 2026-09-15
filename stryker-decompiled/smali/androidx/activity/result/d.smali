.class public final Landroidx/activity/result/d;
.super Landroidx/activity/result/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ld/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ld/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Landroidx/activity/result/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/result/d;->d:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/activity/result/d;->b:Ljava/io/Serializable;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/activity/result/d;->c:Ld/a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/activity/result/d;->a:I

    .line 2
    .line 3
    const-string v1, ". You must ensure the ActivityResultLauncher is registered before calling launch()."

    .line 4
    .line 5
    const-string v2, " and input "

    .line 6
    .line 7
    const-string v3, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/activity/result/d;->c:Ld/a;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/activity/result/d;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/activity/result/d;->b:Ljava/io/Serializable;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/activity/result/c;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Operation cannot be started before fragment is in created state"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :pswitch_0
    move-object v0, v5

    .line 41
    check-cast v0, Landroidx/activity/result/g;

    .line 42
    .line 43
    iget-object v7, v0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    .line 44
    .line 45
    check-cast v6, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    iget-object v1, v0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :try_start_0
    check-cast v5, Landroidx/activity/result/g;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v5, v1, v4, p1}, Landroidx/activity/result/g;->b(ILd/a;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    iget-object v0, v0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :pswitch_1
    move-object v0, v5

    .line 105
    check-cast v0, Landroidx/activity/result/g;

    .line 106
    .line 107
    iget-object v7, v0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    .line 108
    .line 109
    check-cast v6, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/Integer;

    .line 116
    .line 117
    if-eqz v7, :cond_2

    .line 118
    .line 119
    iget-object v1, v0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :try_start_1
    check-cast v5, Landroidx/activity/result/g;

    .line 125
    .line 126
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v5, v1, v4, p1}, Landroidx/activity/result/g;->b(ILd/a;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catch_1
    move-exception p1

    .line 135
    iget-object v0, v0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/activity/result/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/result/d;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/activity/result/d;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/activity/result/c;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/activity/result/c;->b()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    check-cast v1, Landroidx/activity/result/g;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/activity/result/g;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    check-cast v1, Landroidx/activity/result/g;

    .line 34
    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/activity/result/g;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
