.class public final Ln1/f;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final c:Ln1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/f;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lz0/a;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ln1/f;->c:Ln1/f;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ld1/c;)V
    .locals 1

    .line 1
    const-string v0, "DELETE FROM SystemIdInfo WHERE work_spec_id IN (SELECT work_spec_id FROM SystemIdInfo LEFT JOIN WorkSpec ON work_spec_id = id WHERE WorkSpec.id IS NULL)"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `generation` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `_new_SystemIdInfo` (\n            `work_spec_id` TEXT NOT NULL, \n            `generation` INTEGER NOT NULL DEFAULT 0, \n            `system_id` INTEGER NOT NULL, \n            PRIMARY KEY(`work_spec_id`, `generation`), \n            FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) \n                ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `_new_SystemIdInfo` (`work_spec_id`,`system_id`) SELECT `work_spec_id`,`system_id` FROM `SystemIdInfo`"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `SystemIdInfo`"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `_new_SystemIdInfo` RENAME TO `SystemIdInfo`"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    return-void
.end method
