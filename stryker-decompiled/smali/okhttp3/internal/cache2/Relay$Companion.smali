.class public final Lokhttp3/internal/cache2/Relay$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/cache2/Relay$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
    .locals 10

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upstream"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lokhttp3/internal/cache2/Relay;

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/f;)V

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->access$writeHeader(Lokhttp3/internal/cache2/Relay;Lokio/ByteString;JJ)V

    return-object p1
.end method

.method public final read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .locals 11

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lokhttp3/internal/cache2/FileOperator;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-string v1, "randomAccessFile.channel"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x20

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    sget-object v1, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    invoke-static {v3, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v9

    invoke-virtual {v0}, Lokio/Buffer;->readLong()J

    move-result-wide v7

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const-wide/16 v3, 0x20

    add-long v4, v9, v3

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    new-instance p1, Lokhttp3/internal/cache2/Relay;

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    move-wide v4, v9

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/f;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
