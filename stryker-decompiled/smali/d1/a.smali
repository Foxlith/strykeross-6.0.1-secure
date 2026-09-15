.class public final synthetic Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld1/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld1/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget p1, p0, Ld1/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ld1/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Ld1/b;

    .line 9
    .line 10
    const-string p1, "$tmp0"

    .line 11
    .line 12
    invoke-static {v0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ly0/t;

    .line 16
    .line 17
    invoke-static {p4}, Li5/a;->m(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p4}, Ly0/t;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Ld1/b;->a:Lc1/g;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lc1/g;->s(Ly0/t;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    .line 29
    .line 30
    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_0
    check-cast v0, Lc1/g;

    .line 35
    .line 36
    const-string p1, "$query"

    .line 37
    .line 38
    invoke-static {v0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ly0/t;

    .line 42
    .line 43
    invoke-static {p4}, Li5/a;->m(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p4}, Ly0/t;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Lc1/g;->s(Ly0/t;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    .line 53
    .line 54
    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
