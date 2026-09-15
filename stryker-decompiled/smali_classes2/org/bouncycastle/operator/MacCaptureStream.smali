.class public Lorg/bouncycastle/operator/MacCaptureStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final cOut:Ljava/io/OutputStream;

.field private final mac:[B

.field macIndex:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iput-object p1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-byte v2, v1, v0

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v0

    sub-int/2addr v1, v4

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p3, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget v3, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v0

    iput v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    add-int v1, p2, p3

    array-length v3, v0

    sub-int/2addr v1, v3

    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    :goto_0
    if-eq v2, p3, :cond_1

    add-int v0, p2, v2

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/operator/MacCaptureStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
