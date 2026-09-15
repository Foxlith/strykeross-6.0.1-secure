.class final Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doFlush()V
    .locals 4

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;->write([BII)V

    iput v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer(B)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;->write(Ljava/nio/ByteBuffer;)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;->write([BII)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeBool(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer(B)V

    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArray(I[BII)V

    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArrayNoTag([BII)V

    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method public writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->writeTo(Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferFixed64NoTag(J)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt64NoTag(J)V

    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeLazy([BII)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;->writeLazy([BII)V

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    return-void
.end method

.method public writeMessage(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    return-void
.end method

.method public writeMessage(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V
    .locals 1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->wrapper:Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessage(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->write(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeLazy([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    :cond_1
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->limit:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->buffer:[B

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    invoke-static {p1, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v2

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->totalBytesWritten:I

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException;)V

    :goto_2
    return-void
.end method

.method public writeTag(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream$AbstractBufferedEncoder;->bufferUInt64NoTag(J)V

    return-void
.end method
