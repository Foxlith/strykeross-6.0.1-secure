.class public final Ld1/i;
.super Ly0/t;
.source "SourceFile"

# interfaces
.implements Lc1/h;


# instance fields
.field public final c:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly0/t;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Ld1/i;->c:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/i;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 2

    .line 1
    iget-object v0, p0, Ld1/i;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method
