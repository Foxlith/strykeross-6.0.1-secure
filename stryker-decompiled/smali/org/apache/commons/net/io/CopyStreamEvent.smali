.class public Lorg/apache/commons/net/io/CopyStreamEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field public static final UNKNOWN_STREAM_SIZE:J = -0x1L

.field private static final serialVersionUID:J = -0xd641c927d2d4a5bL


# instance fields
.field private final bytesTransferred:I

.field private final streamSize:J

.field private final totalBytesTransferred:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JIJ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p4, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    iput-wide p2, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    iput-wide p5, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    return-void
.end method


# virtual methods
.method public getBytesTransferred()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    return v0
.end method

.method public getStreamSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    return-wide v0
.end method

.method public getTotalBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "[source="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", total="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->totalBytesTransferred:J

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", bytes="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->bytesTransferred:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", size="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v1, p0, Lorg/apache/commons/net/io/CopyStreamEvent;->streamSize:J

    .line 53
    .line 54
    const-string v3, "]"

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
