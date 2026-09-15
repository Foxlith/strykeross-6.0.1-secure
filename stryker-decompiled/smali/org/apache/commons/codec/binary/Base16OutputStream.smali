.class public Lorg/apache/commons/codec/binary/Base16OutputStream;
.super Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->LENIENT:Lorg/apache/commons/codec/CodecPolicy;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;ZZLorg/apache/commons/codec/CodecPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZLorg/apache/commons/codec/CodecPolicy;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/codec/binary/Base16;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base16;-><init>(ZLorg/apache/commons/codec/CodecPolicy;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method
