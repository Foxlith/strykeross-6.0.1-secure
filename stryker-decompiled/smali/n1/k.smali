.class public final Ln1/k;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final c:Ln1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/k;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lz0/a;-><init>(II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln1/k;->c:Ln1/k;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ld1/c;)V
    .locals 1

    .line 1
    const-string v0, "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    "

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    return-void
.end method
