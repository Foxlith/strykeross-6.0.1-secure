.class public final Lokhttp3/internal/ws/MessageInflater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final deflatedBytes:Lokio/Buffer;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lokio/InflaterSource;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageInflater;->noContextTakeover:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, p1, v0}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public final inflate(Lokio/Buffer;)V
    .locals 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageInflater;->noContextTakeover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, v4, v5}, Lokio/InflaterSource;->readOrInflate(Lokio/Buffer;J)J

    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
