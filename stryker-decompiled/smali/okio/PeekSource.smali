.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    const-string v0, "upstream"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object p1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz p1, :cond_0

    iget p1, p1, Lokio/Segment;->pos:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lokio/PeekSource;->expectedPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_6

    .line 11
    .line 12
    iget-boolean v3, p0, Lokio/PeekSource;->closed:Z

    .line 13
    .line 14
    xor-int/lit8 v3, v3, 0x1

    .line 15
    .line 16
    if-eqz v3, :cond_5

    .line 17
    .line 18
    iget-object v3, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 23
    .line 24
    iget-object v4, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 25
    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    iget v3, p0, Lokio/PeekSource;->expectedPos:I

    .line 29
    .line 30
    invoke-static {v4}, Li5/a;->m(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget v4, v4, Lokio/Segment;->pos:I

    .line 34
    .line 35
    if-ne v3, v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p2, "Peek source is invalid because upstream source was used"

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 51
    .line 52
    return-wide v0

    .line 53
    :cond_2
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 54
    .line 55
    iget-wide v1, p0, Lokio/PeekSource;->pos:J

    .line 56
    .line 57
    const-wide/16 v3, 0x1

    .line 58
    .line 59
    add-long/2addr v1, v3

    .line 60
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    const-wide/16 p1, -0x1

    .line 67
    .line 68
    return-wide p1

    .line 69
    :cond_3
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 74
    .line 75
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 80
    .line 81
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget v0, v0, Lokio/Segment;->pos:I

    .line 85
    .line 86
    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 89
    .line 90
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    .line 95
    .line 96
    sub-long/2addr v0, v2

    .line 97
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide p2

    .line 101
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 102
    .line 103
    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    .line 104
    .line 105
    move-object v3, p1

    .line 106
    move-wide v6, p2

    .line 107
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 108
    .line 109
    .line 110
    iget-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 111
    .line 112
    add-long/2addr v0, p2

    .line 113
    iput-wide v0, p0, Lokio/PeekSource;->pos:J

    .line 114
    .line 115
    return-wide p2

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p2, "closed"

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_6
    const-string p1, "byteCount < 0: "

    .line 129
    .line 130
    invoke-static {p1, p2, p3}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
