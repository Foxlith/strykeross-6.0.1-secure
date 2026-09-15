.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/Threadable;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const-string v0, "<Bogus-id:"

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const-string v3, ">"

    .line 22
    .line 23
    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 30
    .line 31
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 32
    .line 33
    new-instance v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 34
    .line 35
    invoke-direct {v1}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    array-length v0, p1

    .line 48
    const/4 v3, 0x0

    .line 49
    move-object v4, v2

    .line 50
    :goto_1
    if-ge v3, v0, :cond_5

    .line 51
    .line 52
    aget-object v5, p1, v3

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 59
    .line 60
    if-nez v6, :cond_3

    .line 61
    .line 62
    new-instance v6, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 63
    .line 64
    invoke-direct {v6}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    .line 72
    iget-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 73
    .line 74
    if-nez v5, :cond_4

    .line 75
    .line 76
    if-eq v4, v6, :cond_4

    .line 77
    .line 78
    invoke-virtual {v6, v4}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_4

    .line 83
    .line 84
    iput-object v4, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 85
    .line 86
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 87
    .line 88
    iput-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 89
    .line 90
    iput-object v6, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 91
    .line 92
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    move-object v4, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    if-eqz v4, :cond_7

    .line 97
    .line 98
    if-eq v4, v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    :cond_6
    move-object v4, v2

    .line 107
    :cond_7
    iget-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 108
    .line 109
    if-eqz p1, :cond_c

    .line 110
    .line 111
    iget-object p1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 112
    .line 113
    move-object p2, v2

    .line 114
    :goto_2
    if-eqz p1, :cond_9

    .line 115
    .line 116
    if-ne p1, v1, :cond_8

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    iget-object p2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 120
    .line 121
    move-object v7, p2

    .line 122
    move-object p2, p1

    .line 123
    move-object p1, v7

    .line 124
    goto :goto_2

    .line 125
    :cond_9
    :goto_3
    if-eqz p1, :cond_b

    .line 126
    .line 127
    if-nez p2, :cond_a

    .line 128
    .line 129
    iget-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 130
    .line 131
    iget-object p2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 132
    .line 133
    iput-object p2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_a
    iget-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 137
    .line 138
    iput-object p1, p2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 139
    .line 140
    :goto_4
    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 141
    .line 142
    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "Didnt find "

    .line 150
    .line 151
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, " in parent"

    .line 158
    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v0, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 163
    .line 164
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_c
    :goto_5
    if-eqz v4, :cond_d

    .line 176
    .line 177
    iput-object v4, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 178
    .line 179
    iget-object p1, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 180
    .line 181
    iput-object p1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 182
    .line 183
    iput-object v1, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 184
    .line 185
    :cond_d
    return-void
.end method

.method private findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;)",
            "Lorg/apache/commons/net/nntp/ThreadContainer;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "c.next is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method private gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 9

    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iget-object v2, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    if-eqz v2, :cond_6

    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v3, :cond_1

    iget-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v3, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v4, :cond_4

    iget-object v5, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    :cond_3
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_2
    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    const/4 v3, 0x0

    move-object v4, v3

    :goto_3
    if-eqz v1, :cond_15

    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_8

    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_8
    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    if-ne v5, v1, :cond_a

    goto/16 :goto_9

    :cond_a
    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_b

    iput-object v6, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    :cond_b
    iput-object v6, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_4
    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v6, :cond_f

    iget-object v7, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v7, :cond_f

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_5
    if-eqz v6, :cond_c

    iget-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v7, :cond_c

    move-object v6, v7

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    iget-object v7, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :cond_d
    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_6
    if-eqz v6, :cond_e

    iput-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v6, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_6

    :cond_e
    iput-object v3, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    :cond_f
    if-eqz v6, :cond_12

    iget-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v6}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_8

    :cond_10
    new-instance v6, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v6}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    iget-object v7, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iget-object v7, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v7, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_7
    if-eqz v7, :cond_11

    iput-object v6, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v7, v7, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    :cond_11
    iput-object v3, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v6, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    :cond_12
    :goto_8
    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v6, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v6, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    :cond_13
    :goto_9
    move-object v4, v1

    :goto_a
    if-nez v2, :cond_14

    move-object v1, v3

    goto :goto_b

    :cond_14
    iget-object v1, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_b
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_3

    :cond_15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 7

    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_8

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v4, :cond_1

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_1

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_0

    iput-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_0
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    move-object v0, v1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_5

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_2

    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_5

    :cond_2
    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v3, :cond_3

    iput-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    :cond_3
    iput-object v1, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_2
    move-object v4, v1

    :goto_3
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v6, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v4, v5

    goto :goto_3

    :cond_4
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v0, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    :cond_6
    move-object v3, v0

    goto :goto_1

    :goto_4
    if-nez v0, :cond_7

    move-object v1, v2

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/net/nntp/Threader;->findRootSet(Ljava/util/HashMap;)Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v1, :cond_7

    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v2}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "root node has a next:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object p1

    return-object p1
.end method
