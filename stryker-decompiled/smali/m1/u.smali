.class public final Lm1/u;
.super Lm1/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 11

    .line 1
    const-string v0, "repeatIntervalTimeUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/zalexdev/stryker/ota/UpdateWorker;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lm1/w;-><init>(Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lm1/w;->b:Lv1/p;

    .line 12
    .line 13
    const-wide/16 v1, 0xc

    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-wide/32 v3, 0xdbba0

    .line 23
    .line 24
    .line 25
    cmp-long p1, v1, v3

    .line 26
    .line 27
    sget-object v5, Lv1/p;->u:Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 30
    .line 31
    if-gez p1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7, v5, v6}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-gez p1, :cond_1

    .line 41
    .line 42
    move-wide v7, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-wide v7, v1

    .line 45
    :goto_0
    if-gez p1, :cond_2

    .line 46
    .line 47
    move-wide v1, v3

    .line 48
    :cond_2
    cmp-long p1, v7, v3

    .line 49
    .line 50
    if-gez p1, :cond_3

    .line 51
    .line 52
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v9, v5, v6}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    if-gez p1, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    move-wide v3, v7

    .line 63
    :goto_1
    iput-wide v3, v0, Lv1/p;->h:J

    .line 64
    .line 65
    const-wide/32 v3, 0x493e0

    .line 66
    .line 67
    .line 68
    cmp-long p1, v1, v3

    .line 69
    .line 70
    if-gez p1, :cond_5

    .line 71
    .line 72
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const-string v9, "Flex duration lesser than minimum allowed value; Changed to 300000"

    .line 77
    .line 78
    invoke-virtual {v6, v5, v9}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget-wide v9, v0, Lv1/p;->h:J

    .line 82
    .line 83
    cmp-long v6, v1, v9

    .line 84
    .line 85
    if-lez v6, :cond_6

    .line 86
    .line 87
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v10, "Flex duration greater than interval duration; Changed to "

    .line 94
    .line 95
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v6, v5, v7}, Lm1/n;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-wide v5, v0, Lv1/p;->h:J

    .line 109
    .line 110
    cmp-long v7, v3, v5

    .line 111
    .line 112
    if-gtz v7, :cond_9

    .line 113
    .line 114
    if-gez p1, :cond_7

    .line 115
    .line 116
    move-wide v1, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    cmp-long p1, v1, v5

    .line 119
    .line 120
    if-lez p1, :cond_8

    .line 121
    .line 122
    move-wide v1, v5

    .line 123
    :cond_8
    :goto_2
    iput-wide v1, v0, Lv1/p;->i:J

    .line 124
    .line 125
    return-void

    .line 126
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " is less than minimum 300000."

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method


# virtual methods
.method public final b()Lm1/x;
    .locals 4

    .line 1
    iget-object v0, p0, Lm1/w;->b:Lv1/p;

    .line 2
    .line 3
    iget-boolean v1, v0, Lv1/p;->q:Z

    .line 4
    .line 5
    xor-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lm1/v;

    .line 10
    .line 11
    iget-object v2, p0, Lm1/w;->a:Ljava/util/UUID;

    .line 12
    .line 13
    iget-object v3, p0, Lm1/w;->c:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0, v3}, Lm1/x;-><init>(Ljava/util/UUID;Lv1/p;Ljava/util/LinkedHashSet;)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "PeriodicWorkRequests cannot be expedited"

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final c()Lm1/w;
    .locals 0

    .line 1
    return-object p0
.end method
