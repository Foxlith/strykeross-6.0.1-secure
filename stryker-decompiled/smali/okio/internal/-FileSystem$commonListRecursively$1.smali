.class final Lokio/internal/-FileSystem$commonListRecursively$1;
.super Lc5/h;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# annotations
.annotation runtime Lc5/e;
    c = "okio.internal.-FileSystem$commonListRecursively$1"
    f = "FileSystem.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/-FileSystem;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lp5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc5/h;",
        "Lj5/p;"
    }
.end annotation


# instance fields
.field final synthetic $dir:Lokio/Path;

.field final synthetic $followSymlinks:Z

.field final synthetic $this_commonListRecursively:Lokio/FileSystem;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lokio/Path;Lokio/FileSystem;ZLa5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Z",
            "La5/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$dir:Lokio/Path;

    iput-object p2, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iput-boolean p3, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$followSymlinks:Z

    invoke-direct {p0, p4}, Lc5/h;-><init>(La5/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La5/e;)La5/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La5/e;",
            ")",
            "La5/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lokio/internal/-FileSystem$commonListRecursively$1;

    iget-object v1, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$dir:Lokio/Path;

    iget-object v2, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iget-boolean v3, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$followSymlinks:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lokio/internal/-FileSystem$commonListRecursively$1;-><init>(Lokio/Path;Lokio/FileSystem;ZLa5/e;)V

    iput-object p1, v0, Lokio/internal/-FileSystem$commonListRecursively$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lp5/i;

    check-cast p2, La5/e;

    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonListRecursively$1;->invoke(Lp5/i;La5/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lp5/i;La5/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp5/i;",
            "La5/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonListRecursively$1;->create(Ljava/lang/Object;La5/e;)La5/e;

    move-result-object p1

    check-cast p1, Lokio/internal/-FileSystem$commonListRecursively$1;

    sget-object p2, Lw4/h;->a:Lw4/h;

    invoke-virtual {p1, p2}, Lokio/internal/-FileSystem$commonListRecursively$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lb5/a;->a:Lb5/a;

    iget v1, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lx4/j;

    iget-object v4, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lp5/i;

    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    move-object v11, p0

    move-object p1, v3

    move-object v10, v4

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lp5/i;

    new-instance v1, Lx4/j;

    invoke-direct {v1}, Lx4/j;-><init>()V

    iget-object v3, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$dir:Lokio/Path;

    invoke-virtual {v1, v3}, Lx4/j;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iget-object v4, p0, Lokio/internal/-FileSystem$commonListRecursively$1;->$dir:Lokio/Path;

    invoke-virtual {v3, v4}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, p0

    move-object v10, p1

    move-object p1, v1

    move-object v1, v3

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lokio/Path;

    iget-object v4, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->$this_commonListRecursively:Lokio/FileSystem;

    iget-boolean v7, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->$followSymlinks:Z

    const/4 v8, 0x0

    iput-object v10, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->L$0:Ljava/lang/Object;

    iput-object p1, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v1, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->L$2:Ljava/lang/Object;

    iput v2, v11, Lokio/internal/-FileSystem$commonListRecursively$1;->label:I

    move-object v3, v10

    move-object v5, p1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lokio/internal/-FileSystem;->collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_3
    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method
