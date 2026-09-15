.class final Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;
.super Lc5/h;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# annotations
.annotation runtime Lc5/e;
    c = "okio.internal.-FileSystem$commonDeleteRecursively$sequence$1"
    f = "FileSystem.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/-FileSystem;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
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
.field final synthetic $fileOrDirectory:Lokio/Path;

.field final synthetic $this_commonDeleteRecursively:Lokio/FileSystem;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;La5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "La5/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    iput-object p2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    invoke-direct {p0, p3}, Lc5/h;-><init>(La5/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La5/e;)La5/e;
    .locals 3
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
    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    iget-object v1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    iget-object v2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    invoke-direct {v0, v1, v2, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Lokio/FileSystem;Lokio/Path;La5/e;)V

    iput-object p1, v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lp5/i;

    check-cast p2, La5/e;

    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invoke(Lp5/i;La5/e;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;La5/e;)La5/e;

    move-result-object p1

    check-cast p1, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    sget-object p2, Lw4/h;->a:Lw4/h;

    invoke-virtual {p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lb5/a;->a:Lb5/a;

    iget v1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lp5/i;

    iget-object v4, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    new-instance v5, Lx4/j;

    invoke-direct {v5}, Lx4/j;-><init>()V

    iget-object v6, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iput v2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lokio/internal/-FileSystem;->collectRecursively(Lp5/i;Lokio/FileSystem;Lx4/j;Lokio/Path;ZZLa5/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method
