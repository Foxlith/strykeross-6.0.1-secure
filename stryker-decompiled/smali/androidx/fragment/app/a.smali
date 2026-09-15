.class public final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/e1;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/r0;


# instance fields
.field public final q:Landroidx/fragment/app/u0;

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/u0;->z()Landroidx/fragment/app/o0;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/fragment/app/u0;->q:Landroidx/fragment/app/i0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/i0;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Landroidx/fragment/app/e1;->h:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroidx/fragment/app/e1;->p:Z

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/fragment/app/a;->s:I

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-boolean p1, p0, Landroidx/fragment/app/e1;->g:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 26
    .line 27
    iget-object p2, p1, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p2, p1, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    :cond_1
    iget-object p1, p1, Landroidx/fragment/app/u0;->d:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public final d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_8

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    :cond_0
    const-string v0, " now "

    .line 34
    .line 35
    const-string v1, ": was "

    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance p4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Can\'t change tag of fragment "

    .line 55
    .line 56
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 85
    .line 86
    :cond_3
    if-eqz p1, :cond_7

    .line 87
    .line 88
    const/4 v2, -0x1

    .line 89
    if-eq p1, v2, :cond_6

    .line 90
    .line 91
    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 92
    .line 93
    if-eqz p3, :cond_5

    .line 94
    .line 95
    if-ne p3, p1, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance p4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v2, "Can\'t change container ID of fragment "

    .line 103
    .line 104
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 114
    .line 115
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p3

    .line 132
    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 133
    .line 134
    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    new-instance p4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "Can\'t add fragment "

    .line 142
    .line 143
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, " with tag "

    .line 150
    .line 151
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p2, " to container view with no id"

    .line 158
    .line 159
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1

    .line 170
    :cond_7
    :goto_2
    new-instance p1, Landroidx/fragment/app/d1;

    .line 171
    .line 172
    invoke-direct {p1, p2, p4}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroidx/fragment/app/e1;->b(Landroidx/fragment/app/d1;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 179
    .line 180
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 181
    .line 182
    return-void

    .line 183
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string p3, "Fragment "

    .line 188
    .line 189
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p3

    .line 196
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p3, " must be a public static class to be  properly recreated from instance state."

    .line 200
    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1
.end method

.method public final g(I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/e1;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "FragmentManager"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroidx/fragment/app/d1;

    .line 32
    .line 33
    iget-object v6, v5, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    iget v7, v6, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 38
    .line 39
    add-int/2addr v7, p1

    .line 40
    iput v7, v6, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    iget-object v6, v5, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    iget-object v5, v5, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iget v5, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 56
    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method public final h(Z)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-string v0, "FragmentManager"

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/fragment/app/q1;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/fragment/app/q1;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/io/PrintWriter;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "  "

    .line 29
    .line 30
    invoke-virtual {p0, v0, v2, v1}, Landroidx/fragment/app/a;->i(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/a;->r:Z

    .line 37
    .line 38
    iget-boolean v0, p0, Landroidx/fragment/app/e1;->g:Z

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v1, Landroidx/fragment/app/u0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    iput v0, p0, Landroidx/fragment/app/a;->s:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v0, -0x1

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/u0;->q(Landroidx/fragment/app/r0;Z)V

    .line 56
    .line 57
    .line 58
    iget p1, p0, Landroidx/fragment/app/a;->s:I

    .line 59
    .line 60
    return p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "commit already called"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final i(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 6

    .line 1
    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->s:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->r:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroidx/fragment/app/e1;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroidx/fragment/app/e1;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/e1;->c:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroidx/fragment/app/e1;->d:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/e1;->e:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroidx/fragment/app/e1;->j:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/e1;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/e1;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroidx/fragment/app/e1;->l:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/e1;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/e1;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/e1;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Operations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d1;

    iget v4, v3, Landroidx/fragment/app/d1;->a:I

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroidx/fragment/app/d1;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_0
    const-string v4, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v4, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v4, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v4, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v4, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v4, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v4, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v4, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v4, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v4, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v4, "NULL"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v4, v3, Landroidx/fragment/app/d1;->c:I

    if-nez v4, :cond_9

    iget v4, v3, Landroidx/fragment/app/d1;->d:I

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/fragment/app/d1;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " exitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/fragment/app/d1;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v4, v3, Landroidx/fragment/app/d1;->e:I

    if-nez v4, :cond_b

    iget v4, v3, Landroidx/fragment/app/d1;->f:I

    if-eqz v4, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/fragment/app/d1;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " popExitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroidx/fragment/app/d1;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 22
    .line 23
    .line 24
    iget v6, p0, Landroidx/fragment/app/e1;->f:I

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Landroidx/fragment/app/e1;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v7, p0, Landroidx/fragment/app/e1;->o:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget v6, v4, Landroidx/fragment/app/d1;->a:I

    .line 37
    .line 38
    iget-object v7, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 39
    .line 40
    packed-switch v6, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "Unknown cmd: "

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v2, v4, Landroidx/fragment/app/d1;->a:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :pswitch_1
    iget-object v4, v4, Landroidx/fragment/app/d1;->h:Landroidx/lifecycle/n;

    .line 66
    .line 67
    invoke-virtual {v7, v5, v4}, Landroidx/fragment/app/u0;->T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :pswitch_2
    const/4 v4, 0x0

    .line 73
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->U(Landroidx/fragment/app/Fragment;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_3
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->U(Landroidx/fragment/app/Fragment;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :pswitch_4
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 84
    .line 85
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 86
    .line 87
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 88
    .line 89
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 90
    .line 91
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v5, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->c(Landroidx/fragment/app/Fragment;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_5
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 102
    .line 103
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 104
    .line 105
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 106
    .line 107
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 108
    .line 109
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->g(Landroidx/fragment/app/Fragment;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_6
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 117
    .line 118
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 119
    .line 120
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 121
    .line 122
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 123
    .line 124
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v5, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 128
    .line 129
    .line 130
    const-string v4, "FragmentManager"

    .line 131
    .line 132
    const/4 v6, 0x2

    .line 133
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_1

    .line 138
    .line 139
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-boolean v4, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 143
    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    iput-boolean v2, v5, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 147
    .line 148
    iget-boolean v4, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 149
    .line 150
    xor-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    iput-boolean v4, v5, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :pswitch_7
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 156
    .line 157
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 158
    .line 159
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 160
    .line 161
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 162
    .line 163
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->B(Landroidx/fragment/app/Fragment;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :pswitch_8
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 171
    .line 172
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 173
    .line 174
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 175
    .line 176
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 177
    .line 178
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->M(Landroidx/fragment/app/Fragment;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :pswitch_9
    iget v6, v4, Landroidx/fragment/app/d1;->c:I

    .line 186
    .line 187
    iget v8, v4, Landroidx/fragment/app/d1;->d:I

    .line 188
    .line 189
    iget v9, v4, Landroidx/fragment/app/d1;->e:I

    .line 190
    .line 191
    iget v4, v4, Landroidx/fragment/app/d1;->f:I

    .line 192
    .line 193
    invoke-virtual {v5, v6, v8, v9, v4}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v5, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v5}, Landroidx/fragment/app/u0;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 200
    .line 201
    .line 202
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final k()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_6

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/fragment/app/d1;

    .line 16
    .line 17
    iget-object v4, v3, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v4, :cond_3

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    .line 23
    .line 24
    .line 25
    iget v6, p0, Landroidx/fragment/app/e1;->f:I

    .line 26
    .line 27
    const/16 v7, 0x2002

    .line 28
    .line 29
    const/16 v8, 0x1001

    .line 30
    .line 31
    if-eq v6, v8, :cond_2

    .line 32
    .line 33
    const/16 v9, 0x1003

    .line 34
    .line 35
    if-eq v6, v9, :cond_1

    .line 36
    .line 37
    if-eq v6, v7, :cond_0

    .line 38
    .line 39
    move v7, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v7, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v7, v9

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {v4, v7}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 45
    .line 46
    .line 47
    iget-object v6, p0, Landroidx/fragment/app/e1;->o:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v7, p0, Landroidx/fragment/app/e1;->n:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v4, v6, v7}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget v6, v3, Landroidx/fragment/app/d1;->a:I

    .line 55
    .line 56
    iget-object v7, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 57
    .line 58
    packed-switch v6, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Unknown cmd: "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v2, v3, Landroidx/fragment/app/d1;->a:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_1
    iget-object v3, v3, Landroidx/fragment/app/d1;->g:Landroidx/lifecycle/n;

    .line 84
    .line 85
    invoke-virtual {v7, v4, v3}, Landroidx/fragment/app/u0;->T(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :pswitch_2
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->U(Landroidx/fragment/app/Fragment;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :pswitch_3
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v7, v3}, Landroidx/fragment/app/u0;->U(Landroidx/fragment/app/Fragment;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :pswitch_4
    iget v5, v3, Landroidx/fragment/app/d1;->c:I

    .line 102
    .line 103
    iget v6, v3, Landroidx/fragment/app/d1;->d:I

    .line 104
    .line 105
    iget v8, v3, Landroidx/fragment/app/d1;->e:I

    .line 106
    .line 107
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 108
    .line 109
    invoke-virtual {v4, v5, v6, v8, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v4, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->g(Landroidx/fragment/app/Fragment;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_5
    iget v5, v3, Landroidx/fragment/app/d1;->c:I

    .line 120
    .line 121
    iget v6, v3, Landroidx/fragment/app/d1;->d:I

    .line 122
    .line 123
    iget v8, v3, Landroidx/fragment/app/d1;->e:I

    .line 124
    .line 125
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 126
    .line 127
    invoke-virtual {v4, v5, v6, v8, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->c(Landroidx/fragment/app/Fragment;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_6
    iget v5, v3, Landroidx/fragment/app/d1;->c:I

    .line 135
    .line 136
    iget v6, v3, Landroidx/fragment/app/d1;->d:I

    .line 137
    .line 138
    iget v8, v3, Landroidx/fragment/app/d1;->e:I

    .line 139
    .line 140
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 141
    .line 142
    invoke-virtual {v4, v5, v6, v8, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v4, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->B(Landroidx/fragment/app/Fragment;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :pswitch_7
    iget v6, v3, Landroidx/fragment/app/d1;->c:I

    .line 153
    .line 154
    iget v8, v3, Landroidx/fragment/app/d1;->d:I

    .line 155
    .line 156
    iget v9, v3, Landroidx/fragment/app/d1;->e:I

    .line 157
    .line 158
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 159
    .line 160
    invoke-virtual {v4, v6, v8, v9, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-string v3, "FragmentManager"

    .line 167
    .line 168
    const/4 v6, 0x2

    .line 169
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    :cond_4
    iget-boolean v3, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 179
    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    iput-boolean v5, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 183
    .line 184
    iget-boolean v3, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 185
    .line 186
    xor-int/2addr v3, v2

    .line 187
    iput-boolean v3, v4, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :pswitch_8
    iget v5, v3, Landroidx/fragment/app/d1;->c:I

    .line 191
    .line 192
    iget v6, v3, Landroidx/fragment/app/d1;->d:I

    .line 193
    .line 194
    iget v8, v3, Landroidx/fragment/app/d1;->e:I

    .line 195
    .line 196
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 197
    .line 198
    invoke-virtual {v4, v5, v6, v8, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/b1;

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :pswitch_9
    iget v5, v3, Landroidx/fragment/app/d1;->c:I

    .line 206
    .line 207
    iget v6, v3, Landroidx/fragment/app/d1;->d:I

    .line 208
    .line 209
    iget v8, v3, Landroidx/fragment/app/d1;->e:I

    .line 210
    .line 211
    iget v3, v3, Landroidx/fragment/app/d1;->f:I

    .line 212
    .line 213
    invoke-virtual {v4, v5, v6, v8, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v4, v2}, Landroidx/fragment/app/u0;->S(Landroidx/fragment/app/Fragment;Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v4}, Landroidx/fragment/app/u0;->M(Landroidx/fragment/app/Fragment;)V

    .line 220
    .line 221
    .line 222
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_6
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final l(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " is already attached to a FragmentManager."

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Landroidx/fragment/app/d1;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-direct {v0, p1, v1}, Landroidx/fragment/app/d1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/fragment/app/e1;->b(Landroidx/fragment/app/d1;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public final m(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)Landroidx/fragment/app/a;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/u0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/u0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 8
    .line 9
    const-string v1, "Cannot set maximum Lifecycle to "

    .line 10
    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-gt v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " after the Fragment has been created"

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 43
    .line 44
    if-eq p2, v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Landroidx/fragment/app/d1;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0xa

    .line 52
    .line 53
    iput v1, v0, Landroidx/fragment/app/d1;->a:I

    .line 54
    .line 55
    iput-object p1, v0, Landroidx/fragment/app/d1;->b:Landroidx/fragment/app/Fragment;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    .line 58
    .line 59
    iput-object p1, v0, Landroidx/fragment/app/d1;->g:Landroidx/lifecycle/n;

    .line 60
    .line 61
    iput-object p2, v0, Landroidx/fragment/app/d1;->h:Landroidx/lifecycle/n;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/e1;->b(Landroidx/fragment/app/d1;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p2, ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction."

    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/a;->s:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
