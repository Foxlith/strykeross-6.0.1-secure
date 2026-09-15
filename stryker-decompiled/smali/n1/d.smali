.class public final Ln1/d;
.super Lz0/a;
.source "SourceFile"


# static fields
.field public static final c:Ln1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln1/d;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lz0/a;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Ln1/d;->c:Ln1/d;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ld1/c;)V
    .locals 1

    .line 1
    const-string v0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    return-void
.end method
