.class final Lokio/internal/-FileSystem$collectRecursively$1;
.super Lc5/c;
.source "SourceFile"


# annotations
.annotation runtime Lc5/e;
    c = "okio.internal.-FileSystem"
    f = "FileSystem.kt"
    l = {
        0x74,
        0x87,
        0x91
    }
    m = "collectRecursively"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/-FileSystem;->collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La5/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/e;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, La5/e;->getContext()La5/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1, v0}, Lc5/c;-><init>(La5/e;La5/j;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lokio/internal/-FileSystem$collectRecursively$1;->result:Ljava/lang/Object;

    iget p1, p0, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lokio/internal/-FileSystem$collectRecursively$1;->label:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lokio/internal/-FileSystem;->collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
