.class public final Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/b;


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld1/c;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Ld1/c;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ld1/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sql"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final f(Ljava/lang/String;)Lc1/h;
    .locals 2

    .line 1
    const-string v0, "sql"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld1/i;

    iget-object v1, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    const-string v1, "delegate.compileStatement(sql)"

    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ld1/i;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public final g(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .line 1
    invoke-interface {p1}, Lc1/g;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    sget-object v3, Ld1/c;->d:[Ljava/lang/String;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {p2}, Li5/a;->m(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ld1/a;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v1, p1, v0}, Ld1/a;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    const-string p1, "sQLiteDatabase"

    .line 20
    .line 21
    invoke-static {v0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "sql"

    .line 25
    .line 26
    invoke-static {v2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v5, p2

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "sQLiteDatabase.rawQueryW\u2026ationSignal\n            )"

    .line 35
    .line 36
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "sql"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public final k(Lc1/g;)Landroid/database/Cursor;
    .locals 4

    .line 1
    new-instance v0, Ld1/b;

    invoke-direct {v0, p1}, Ld1/b;-><init>(Lc1/g;)V

    new-instance v1, Ld1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ld1/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1}, Lc1/g;->i()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ld1/c;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, "delegate.rawQueryWithFac\u2026EMPTY_STRING_ARRAY, null)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l()Z
    .locals 2

    .line 1
    const-string v0, "sQLiteDatabase"

    .line 2
    .line 3
    iget-object v1, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public final s(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    const-string v0, "query"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc1/a;

    invoke-direct {v0, p1}, Lc1/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ld1/c;->k(Lc1/g;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    .line 1
    const-string v0, "table"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez p5, :cond_0

    .line 22
    .line 23
    move v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v1, p5

    .line 26
    add-int/2addr v1, v0

    .line 27
    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "UPDATE "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Ld1/c;->c:[Ljava/lang/String;

    .line 37
    .line 38
    aget-object p2, v4, p2

    .line 39
    .line 40
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " SET "

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x0

    .line 60
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/String;

    .line 71
    .line 72
    if-lez p2, :cond_1

    .line 73
    .line 74
    const-string v5, ","

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    const-string v5, ""

    .line 78
    .line 79
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v5, p2, 0x1

    .line 86
    .line 87
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    aput-object v4, v2, p2

    .line 92
    .line 93
    const-string p2, "=?"

    .line 94
    .line 95
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move p2, v5

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-eqz p5, :cond_3

    .line 101
    .line 102
    move p1, v0

    .line 103
    :goto_3
    if-ge p1, v1, :cond_3

    .line 104
    .line 105
    sub-int p2, p1, v0

    .line 106
    .line 107
    aget-object p2, p5, p2

    .line 108
    .line 109
    aput-object p2, v2, p1

    .line 110
    .line 111
    add-int/lit8 p1, p1, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    const-string p1, " WHERE "

    .line 121
    .line 122
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "StringBuilder().apply(builderAction).toString()"

    .line 133
    .line 134
    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ld1/c;->f(Ljava/lang/String;)Lc1/h;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    move-object p2, p1

    .line 142
    check-cast p2, Ly0/t;

    .line 143
    .line 144
    invoke-static {p2, v2}, Landroidx/fragment/app/x0;->d(Ly0/t;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    check-cast p1, Ld1/i;

    .line 148
    .line 149
    iget-object p1, p1, Ld1/i;->c:Landroid/database/sqlite/SQLiteStatement;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    return p1

    .line 156
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    const-string p2, "Empty values"

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method
