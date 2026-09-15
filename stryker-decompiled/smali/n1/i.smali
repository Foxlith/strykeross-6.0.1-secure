.class public final Ln1/i;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final c:Ln1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/i;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x5

    .line 5
    invoke-direct {v0, v1, v2}, Lz0/a;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ln1/i;->c:Ln1/i;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ld1/c;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    return-void
.end method
