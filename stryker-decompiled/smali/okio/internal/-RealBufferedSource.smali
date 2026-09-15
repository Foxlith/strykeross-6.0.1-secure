.class public final Lokio/internal/-RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final commonClose(Lokio/RealBufferedSource;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->clear()V

    return-void
.end method

.method public static final commonExhausted(Lokio/RealBufferedSource;)Z
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;BJJ)J
    .locals 9

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_3

    cmp-long v0, p2, p4

    if-gtz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    cmp-long v2, v0, p4

    if-gez v2, :cond_2

    iget-object v2, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "fromIndex="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " toIndex="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOf(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonIndexOfElement(Lokio/RealBufferedSource;Lokio/ByteString;J)J
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonPeek(Lokio/RealBufferedSource;)Lokio/BufferedSource;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    return-object p0
.end method

.method public static final commonRangeEquals(Lokio/RealBufferedSource;JLokio/ByteString;II)Z
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    if-ge v0, p5, :cond_3

    int-to-long v3, v0

    add-long/2addr v3, p1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v5, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v3

    add-int v4, p4, v0

    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;[BII)I
    .locals 9

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    iget-object p3, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x2000

    invoke-interface {p3, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p3, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public static final commonRead(Lokio/RealBufferedSource;Lokio/Buffer;J)J
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "byteCount < 0: "

    .line 2
    invoke-static {p0, p2, p3}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonReadAll(Lokio/RealBufferedSource;Lokio/Sink;)J
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    iget-object v6, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_2
    return-wide v2
.end method

.method public static final commonReadByte(Lokio/RealBufferedSource;)B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    return p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;)[B
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteArray(Lokio/RealBufferedSource;J)[B
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;)Lokio/ByteString;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadByteString(Lokio/RealBufferedSource;J)Lokio/ByteString;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadDecimalLong(Lokio/RealBufferedSource;)J
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    add-long v6, v4, v0

    invoke-virtual {p0, v6, v7}, Lokio/RealBufferedSource;->request(J)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v8, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    if-le v8, v9, :cond_1

    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    const/16 v5, 0x2d

    if-eq v8, v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Li5/a;->q(I)V

    invoke-static {v0}, Li5/a;->q(I)V

    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected a digit or \'-\' but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;Lokio/Buffer;J)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->readFully(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception p2

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p1, p0}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    throw p2
.end method

.method public static final commonReadFully(Lokio/RealBufferedSource;[B)V
    .locals 6

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    throw v0
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/RealBufferedSource;)J
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Li5/a;->q(I)V

    invoke-static {v0}, Li5/a;->q(I)V

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(this, checkRadix(radix))"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final commonReadInt(Lokio/RealBufferedSource;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result p0

    return p0
.end method

.method public static final commonReadIntLe(Lokio/RealBufferedSource;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readIntLe()I

    move-result p0

    return p0
.end method

.method public static final commonReadLong(Lokio/RealBufferedSource;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final commonReadLongLe(Lokio/RealBufferedSource;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final commonReadShort(Lokio/RealBufferedSource;)S
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result p0

    return p0
.end method

.method public static final commonReadShortLe(Lokio/RealBufferedSource;)S
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readShortLe()S

    move-result p0

    return p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->require(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonReadUtf8CodePoint(Lokio/RealBufferedSource;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    goto :goto_1

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result p0

    return p0
.end method

.method public static final commonReadUtf8Line(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-static {p0, v0, v1}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final commonReadUtf8LineStrict(Lokio/RealBufferedSource;J)Ljava/lang/String;
    .locals 13

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    const-wide v0, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v2, p1, v0

    .line 18
    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    move-wide v5, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-long v5, p1, v3

    .line 26
    .line 27
    :goto_0
    const/16 v8, 0xa

    .line 28
    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    move-object v7, p0

    .line 32
    move-wide v11, v5

    .line 33
    invoke-virtual/range {v7 .. v12}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-wide/16 v9, -0x1

    .line 38
    .line 39
    cmp-long v2, v7, v9

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 44
    .line 45
    invoke-static {p0, v7, v8}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    cmp-long v0, v5, v0

    .line 51
    .line 52
    if-gez v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v5, v6}, Lokio/RealBufferedSource;->request(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 61
    .line 62
    sub-long v1, v5, v3

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/16 v1, 0xd

    .line 69
    .line 70
    if-ne v0, v1, :cond_2

    .line 71
    .line 72
    add-long/2addr v3, v5

    .line 73
    invoke-virtual {p0, v3, v4}, Lokio/RealBufferedSource;->request(J)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 80
    .line 81
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0xa

    .line 86
    .line 87
    if-ne v0, v1, :cond_2

    .line 88
    .line 89
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 90
    .line 91
    invoke-static {p0, v5, v6}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_2
    new-instance v6, Lokio/Buffer;

    .line 97
    .line 98
    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 102
    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .line 105
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    const/16 v1, 0x20

    .line 110
    .line 111
    int-to-long v7, v1

    .line 112
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    move-object v1, v6

    .line 117
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/io/EOFException;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "\\n not found: limit="

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 130
    .line 131
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide p0

    .line 139
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p0, " content="

    .line 143
    .line 144
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const/16 p0, 0x2026

    .line 159
    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_3
    const-string p0, "limit < 0: "

    .line 172
    .line 173
    invoke-static {p0, p1, p2}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method public static final commonRequest(Lokio/RealBufferedSource;J)Z
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    cmp-long v0, v2, p1

    .line 25
    .line 26
    if-gez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    .line 29
    .line 30
    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 31
    .line 32
    const-wide/16 v3, 0x2000

    .line 33
    .line 34
    invoke-interface {v0, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    const-wide/16 v4, -0x1

    .line 39
    .line 40
    cmp-long v0, v2, v4

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :cond_1
    return v1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "closed"

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_3
    const-string p0, "byteCount < 0: "

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public static final commonRequire(Lokio/RealBufferedSource;J)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static final commonSelect(Lokio/RealBufferedSource;Lokio/Options;)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-static {v0, p1, v1}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lokio/Options;->getByteStrings$okio()[Lokio/ByteString;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return v0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v2, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonSkip(Lokio/RealBufferedSource;J)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonTimeout(Lokio/RealBufferedSource;)Lokio/Timeout;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public static final commonToString(Lokio/RealBufferedSource;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
