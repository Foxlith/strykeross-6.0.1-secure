.class final Lokio/internal/ZipFilesKt$readEntry$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipFilesKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/p;"
    }
.end annotation


# instance fields
.field final synthetic $compressedSize:Lkotlin/jvm/internal/n;

.field final synthetic $hasZip64Extra:Lkotlin/jvm/internal/l;

.field final synthetic $offset:Lkotlin/jvm/internal/n;

.field final synthetic $requiredZip64ExtraSize:J

.field final synthetic $size:Lkotlin/jvm/internal/n;

.field final synthetic $this_readEntry:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/l;JLkotlin/jvm/internal/n;Lokio/BufferedSource;Lkotlin/jvm/internal/n;Lkotlin/jvm/internal/n;)V
    .locals 0

    iput-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/l;

    iput-wide p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$requiredZip64ExtraSize:J

    iput-object p4, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$size:Lkotlin/jvm/internal/n;

    iput-object p5, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    iput-object p6, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$compressedSize:Lkotlin/jvm/internal/n;

    iput-object p7, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$offset:Lkotlin/jvm/internal/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipFilesKt$readEntry$1;->invoke(IJ)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(IJ)V
    .locals 4

    .line 2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$hasZip64Extra:Lkotlin/jvm/internal/l;

    iget-boolean v1, p1, Lkotlin/jvm/internal/l;->a:Z

    if-nez v1, :cond_4

    iput-boolean v0, p1, Lkotlin/jvm/internal/l;->a:Z

    iget-wide v0, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$requiredZip64ExtraSize:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_3

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$size:Lkotlin/jvm/internal/n;

    iget-wide p2, p1, Lkotlin/jvm/internal/n;->a:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    :cond_0
    iput-wide p2, p1, Lkotlin/jvm/internal/n;->a:J

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$compressedSize:Lkotlin/jvm/internal/n;

    iget-wide p2, p1, Lkotlin/jvm/internal/n;->a:J

    cmp-long p2, p2, v0

    const-wide/16 v2, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p2

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iput-wide p2, p1, Lkotlin/jvm/internal/n;->a:J

    iget-object p1, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$offset:Lkotlin/jvm/internal/n;

    iget-wide p2, p1, Lkotlin/jvm/internal/n;->a:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    iget-object p2, p0, Lokio/internal/ZipFilesKt$readEntry$1;->$this_readEntry:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    :cond_2
    iput-wide v2, p1, Lkotlin/jvm/internal/n;->a:J

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
