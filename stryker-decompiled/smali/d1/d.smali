.class public final synthetic Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/t0;

.field public final synthetic b:Lf/q0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/t0;Lf/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/d;->a:Landroidx/fragment/app/t0;

    iput-object p2, p0, Ld1/d;->b:Lf/q0;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "$callback"

    .line 2
    .line 3
    iget-object v1, p0, Ld1/d;->a:Landroidx/fragment/app/t0;

    .line 4
    .line 5
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld1/d;->b:Lf/q0;

    .line 9
    .line 10
    const-string v1, "$dbRef"

    .line 11
    .line 12
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Ld1/f;->h:I

    .line 16
    .line 17
    const-string v1, "dbObj"

    .line 18
    .line 19
    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1}, Landroidx/fragment/app/x0;->i(Lf/q0;Landroid/database/sqlite/SQLiteDatabase;)Ld1/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "p.second"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Corruption reported by sqlite on database: "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ".path"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "SupportSQLite"

    .line 48
    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    :goto_0
    invoke-static {p1}, Landroidx/fragment/app/t0;->a(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_0
    const/4 v2, 0x0

    .line 71
    :try_start_0
    iget-object v2, p1, Ld1/c;->b:Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ld1/c;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/util/Pair;

    .line 95
    .line 96
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {v2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v2}, Landroidx/fragment/app/t0;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-static {v0}, Landroidx/fragment/app/t0;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    throw p1

    .line 117
    :catch_1
    :goto_2
    if-eqz v2, :cond_3

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/util/Pair;

    .line 134
    .line 135
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v1}, Landroidx/fragment/app/t0;->a(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    :goto_4
    return-void
.end method
