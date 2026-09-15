.class Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/framework/NeoTermDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SQLiteDataBaseHelper"
.end annotation


# instance fields
.field private final defaultDropAllTables:Z

.field private final onDatabaseUpgradedListener:Lcom/stryker/terminal/framework/database/OnDatabaseUpgradedListener;

.field final synthetic this$0:Lcom/stryker/terminal/framework/NeoTermDatabase;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/framework/NeoTermDatabase;Landroid/content/Context;Lcom/stryker/terminal/framework/database/NeoTermSQLiteConfig;)V
    .locals 2

    iput-object p1, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->this$0:Lcom/stryker/terminal/framework/NeoTermDatabase;

    invoke-virtual {p3}, Lcom/stryker/terminal/framework/database/NeoTermSQLiteConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/stryker/terminal/framework/database/NeoTermSQLiteConfig;->getDatabaseVersion()I

    move-result v1

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {p3}, Lcom/stryker/terminal/framework/database/NeoTermSQLiteConfig;->getOnDatabaseUpgradedListener()Lcom/stryker/terminal/framework/database/OnDatabaseUpgradedListener;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->onDatabaseUpgradedListener:Lcom/stryker/terminal/framework/database/OnDatabaseUpgradedListener;

    invoke-virtual {p3}, Lcom/stryker/terminal/framework/database/NeoTermSQLiteConfig;->isDefaultDropAllTables()Z

    move-result p1

    iput-boolean p1, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->defaultDropAllTables:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->onDatabaseUpgradedListener:Lcom/stryker/terminal/framework/database/OnDatabaseUpgradedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/stryker/terminal/framework/database/OnDatabaseUpgradedListener;->onDatabaseUpgraded(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->defaultDropAllTables:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/framework/NeoTermDatabase$SQLiteDataBaseHelper;->this$0:Lcom/stryker/terminal/framework/NeoTermDatabase;

    invoke-virtual {p1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->dropAllTable()V

    :cond_1
    :goto_0
    return-void
.end method
