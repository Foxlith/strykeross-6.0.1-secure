.class public final Lj4/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg3/b;


# direct methods
.method public constructor <init>(Lg3/b;Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lj4/a;->a:Lg3/b;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "stryker_arsenal.db"

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    const-string v0, "CREATE TABLE gadget_profile (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, target_os TEXT NOT NULL, functions TEXT NOT NULL, id_vendor TEXT NOT NULL, id_product TEXT NOT NULL, manufacturer TEXT NOT NULL, product_name TEXT NOT NULL, serial_number TEXT NOT NULL, config_label TEXT NOT NULL, mass_storage_image TEXT NOT NULL DEFAULT \'\', mass_storage_ro INTEGER NOT NULL DEFAULT 0, mass_storage_cdrom INTEGER NOT NULL DEFAULT 0, inquiry_string TEXT NOT NULL DEFAULT \'\')"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lv1/f;->E()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lf3/b;

    .line 25
    .line 26
    iget-object v2, p0, Lj4/a;->a:Lg3/b;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lg3/b;->k(Lf3/b;)Landroid/content/ContentValues;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "gadget_profile"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method
