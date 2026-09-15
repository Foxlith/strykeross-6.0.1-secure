.class public final Lokio/internal/ZipEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final canonicalPath:Lokio/Path;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final comment:Ljava/lang/String;

.field private final compressedSize:J

.field private final compressionMethod:I

.field private final crc:J

.field private final isDirectory:Z

.field private final lastModifiedAtMillis:Ljava/lang/Long;

.field private final offset:J

.field private final size:J


# direct methods
.method public constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V
    .locals 1

    .line 1
    const-string v0, "canonicalPath"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    iput-boolean p2, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    iput-object p3, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    iput-wide p4, p0, Lokio/internal/ZipEntry;->crc:J

    iput-wide p6, p0, Lokio/internal/ZipEntry;->compressedSize:J

    iput-wide p8, p0, Lokio/internal/ZipEntry;->size:J

    iput p10, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    iput-object p11, p0, Lokio/internal/ZipEntry;->lastModifiedAtMillis:Ljava/lang/Long;

    iput-wide p12, p0, Lokio/internal/ZipEntry;->offset:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/f;)V
    .locals 13

    .line 2
    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_2

    move-wide v6, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    move-wide v8, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_4

    move-wide v10, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    goto :goto_5

    :cond_5
    move/from16 v3, p10

    :goto_5
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p11

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v4, p12

    :goto_7
    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p12, v3

    move-object/from16 p13, v12

    move-wide/from16 p14, v4

    invoke-direct/range {p2 .. p15}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-void
.end method


# virtual methods
.method public final getCanonicalPath()Lokio/Path;
    .locals 1

    iget-object v0, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public final getCompressionMethod()I
    .locals 1

    iget v0, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public final getCrc()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/ZipEntry;->crc:J

    return-wide v0
.end method

.method public final getLastModifiedAtMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lokio/internal/ZipEntry;->lastModifiedAtMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOffset()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/ZipEntry;->offset:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lokio/internal/ZipEntry;->size:J

    return-wide v0
.end method

.method public final isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    return v0
.end method
