.class Lorg/apache/commons/codec/net/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RADIX:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digit16(B)I
    .locals 2

    .line 1
    int-to-char v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    .line 13
    .line 14
    const-string v1, "Invalid URL encoding: not a valid digit (radix 16): "

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static hexDigit(I)C
    .locals 1

    and-int/lit8 p0, p0, 0xf

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0
.end method
