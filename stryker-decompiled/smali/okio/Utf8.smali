.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HIGH_SURROGATE_HEADER:I = 0xd7c0

.field public static final LOG_SURROGATE_HEADER:I = 0xdc00

.field public static final MASK_2BYTES:I = 0xf80

.field public static final MASK_3BYTES:I = -0x1e080

.field public static final MASK_4BYTES:I = 0x381f80

.field public static final REPLACEMENT_BYTE:B = 0x3ft

.field public static final REPLACEMENT_CHARACTER:C = '\ufffd'

.field public static final REPLACEMENT_CODE_POINT:I = 0xfffd


# direct methods
.method public static final isIsoControl(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    if-gt v0, p0, :cond_1

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final isUtf8Continuation(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final process2Utf8Bytes([BIILj5/l;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lj5/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    const v1, 0xfffd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-gt p2, v0, :cond_0

    invoke-interface {p3, v1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    aget-byte p1, p0, p1

    aget-byte p0, p0, v0

    and-int/lit16 p2, p0, 0xc0

    const/16 v0, 0x80

    if-ne p2, v0, :cond_2

    xor-int/lit16 p0, p0, 0xf80

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    if-ge p0, v0, :cond_1

    invoke-interface {p3, v1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-interface {p3, v1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static final process3Utf8Bytes([BIILj5/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lj5/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x1

    const v3, 0xfffd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    if-gt p2, v0, :cond_1

    invoke-interface {p3, v3}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p1, v2

    if-le p2, p1, :cond_0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v1, :cond_0

    return v4

    :cond_0
    return v2

    :cond_1
    aget-byte p2, p0, p1

    add-int/2addr p1, v2

    aget-byte p1, p0, p1

    and-int/lit16 v5, p1, 0xc0

    if-ne v5, v1, :cond_5

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v1, :cond_4

    const v0, -0x1e080

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xc

    xor-int/2addr p0, p1

    const/16 p1, 0x800

    if-ge p0, p1, :cond_2

    :goto_0
    invoke-interface {p3, v3}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const p1, 0xd800

    if-gt p1, p0, :cond_3

    const p1, 0xe000

    if-ge p0, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_4
    invoke-interface {p3, v3}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_5
    invoke-interface {p3, v3}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static final process4Utf8Bytes([BIILj5/l;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lj5/l;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    if-gt p2, v0, :cond_2

    invoke-interface {p3, v4}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p1, 0x1

    if-le p2, p3, :cond_1

    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xc0

    if-ne p3, v3, :cond_1

    add-int/2addr p1, v1

    if-le p2, p1, :cond_0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xc0

    if-ne p0, v3, :cond_0

    return v5

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    aget-byte p2, p0, p1

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v3, :cond_8

    add-int/2addr p1, v1

    aget-byte p1, p0, p1

    and-int/lit16 v2, p1, 0xc0

    if-ne v2, v3, :cond_7

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    if-ne v0, v3, :cond_6

    const v0, 0x381f80

    xor-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, v6, 0xc

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x12

    xor-int/2addr p0, p1

    const p1, 0x10ffff

    if-le p0, p1, :cond_3

    :goto_0
    invoke-interface {p3, v4}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const p1, 0xd800

    if-gt p1, p0, :cond_4

    const p1, 0xe000

    if-ge p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p1, 0x10000

    if-ge p0, p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 p0, 0x4

    return p0

    :cond_6
    invoke-interface {p3, v4}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v5

    :cond_7
    invoke-interface {p3, v4}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_8
    invoke-interface {p3, v4}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public static final processUtf16Chars([BIILj5/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lj5/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_17

    aget-byte v0, p0, p1

    if-ltz v0, :cond_1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v0, 0x5

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x1

    const v6, 0xfffd

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x1

    if-gt p2, v1, :cond_4

    :cond_2
    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move v3, v5

    goto :goto_5

    :cond_4
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_2

    xor-int/lit16 v1, v1, 0xf80

    shl-int/lit8 v0, v0, 0x6

    xor-int/2addr v0, v1

    if-ge v0, v4, :cond_5

    int-to-char v0, v6

    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_4
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    int-to-char v0, v0

    goto :goto_3

    :cond_6
    :goto_5
    add-int/2addr p1, v3

    goto :goto_0

    :cond_7
    shr-int/lit8 v1, v0, 0x4

    const v7, 0xe000

    const v8, 0xd800

    const/4 v9, 0x3

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x2

    if-gt p2, v1, :cond_8

    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_3

    goto :goto_5

    :cond_8
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v4, :cond_c

    aget-byte v1, p0, v1

    and-int/lit16 v5, v1, 0xc0

    if-ne v5, v4, :cond_b

    const v3, -0x1e080

    xor-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0xc

    xor-int/2addr v0, v1

    const/16 v1, 0x800

    if-ge v0, v1, :cond_9

    :goto_6
    int-to-char v0, v6

    :goto_7
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_9
    if-gt v8, v0, :cond_a

    if-ge v0, v7, :cond_a

    goto :goto_6

    :cond_a
    int-to-char v0, v0

    goto :goto_7

    :goto_8
    move v3, v9

    goto :goto_5

    :cond_b
    int-to-char v0, v6

    goto :goto_3

    :cond_c
    int-to-char v0, v6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    shr-int/lit8 v1, v0, 0x3

    if-ne v1, v2, :cond_16

    add-int/lit8 v1, p1, 0x3

    if-gt p2, v1, :cond_e

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_3

    add-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_6

    :goto_9
    goto :goto_8

    :cond_e
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v4, :cond_15

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v4, :cond_14

    aget-byte v1, p0, v1

    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v4, :cond_13

    const v3, 0x381f80

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v5, 0x6

    xor-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0xc

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x12

    xor-int/2addr v0, v1

    const v1, 0x10ffff

    if-le v0, v1, :cond_10

    :cond_f
    :goto_a
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_b
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_10
    if-gt v8, v0, :cond_11

    if-ge v0, v7, :cond_11

    goto :goto_a

    :cond_11
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_12

    goto :goto_a

    :cond_12
    if-eq v0, v6, :cond_f

    ushr-int/lit8 v1, v0, 0xa

    const v2, 0xd7c0

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_b

    :goto_c
    const/4 v3, 0x4

    goto/16 :goto_5

    :cond_13
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_14
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_4

    :cond_15
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_17
    return-void
.end method

.method public static final processUtf8Bytes(Ljava/lang/String;IILj5/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lj5/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    invoke-static {v0, v1}, Li5/a;->t(II)I

    move-result v2

    if-gez v2, :cond_1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v1}, Li5/a;->t(II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p3, p1}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_1

    :cond_1
    const/16 v2, 0x800

    invoke-static {v0, v2}, Li5/a;->t(II)I

    move-result v2

    if-gez v2, :cond_2

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_2
    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_3
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-gt v2, v0, :cond_4

    const v2, 0xe000

    if-ge v0, v2, :cond_4

    const v4, 0xdbff

    invoke-static {v0, v4}, Li5/a;->t(II)I

    move-result v4

    if-gtz v4, :cond_3

    add-int/lit8 v4, p1, 0x1

    if-le p2, v4, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-gt v6, v5, :cond_3

    if-ge v5, v2, :cond_3

    shl-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v0

    const v0, -0x35fdc00

    add-int/2addr v2, v0

    shr-int/lit8 v0, v2, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0xc

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v0, v2, 0x6

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, v2, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_3

    :cond_4
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p3, v2}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public static final processUtf8CodePoints([BIILj5/l;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lj5/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yield"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_15

    aget-byte v0, p0, p1

    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    :goto_1
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v0, 0x5

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x1

    const v6, 0xfffd

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, p1, 0x1

    if-gt p2, v1, :cond_4

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move v3, v5

    goto :goto_4

    :cond_4
    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_2

    xor-int/lit16 v1, v1, 0xf80

    shl-int/lit8 v0, v0, 0x6

    xor-int/2addr v0, v1

    if-ge v0, v4, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_6
    :goto_4
    add-int/2addr p1, v3

    goto :goto_0

    :cond_7
    shr-int/lit8 v1, v0, 0x4

    const v7, 0xe000

    const v8, 0xd800

    const/4 v9, 0x3

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, p1, 0x2

    if-gt p2, v1, :cond_8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_3

    goto :goto_4

    :cond_8
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v4, :cond_c

    aget-byte v1, p0, v1

    and-int/lit16 v5, v1, 0xc0

    if-ne v5, v4, :cond_b

    const v3, -0x1e080

    xor-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0xc

    xor-int/2addr v0, v1

    const/16 v1, 0x800

    if-ge v0, v1, :cond_9

    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    if-gt v8, v0, :cond_a

    if-ge v0, v7, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6

    :goto_7
    move v3, v9

    goto :goto_4

    :cond_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_d
    shr-int/lit8 v1, v0, 0x3

    if-ne v1, v2, :cond_14

    add-int/lit8 v1, p1, 0x3

    if-gt p2, v1, :cond_e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    if-le p2, v0, :cond_3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_3

    add-int/lit8 v0, p1, 0x2

    if-le p2, v0, :cond_6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v4, :cond_6

    :goto_8
    goto :goto_7

    :cond_e
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v4, :cond_13

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v4, :cond_b

    aget-byte v1, p0, v1

    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v4, :cond_12

    const v3, 0x381f80

    xor-int/2addr v1, v3

    shl-int/lit8 v3, v5, 0x6

    xor-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0xc

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x12

    xor-int/2addr v0, v1

    const v1, 0x10ffff

    if-le v0, v1, :cond_f

    :goto_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_a
    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    if-gt v8, v0, :cond_10

    if-ge v0, v7, :cond_10

    goto :goto_9

    :cond_10
    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    :goto_b
    const/4 v3, 0x4

    goto/16 :goto_4

    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public static final size(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final size(Ljava/lang/String;I)J
    .locals 3

    .line 2
    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lokio/Utf8;->size$default(Ljava/lang/String;IIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final size(Ljava/lang/String;II)J
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_a

    if-lt p2, p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    if-ge v2, v3, :cond_0

    add-long/2addr v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    const/4 v2, 0x2

    :goto_2
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const v3, 0xd800

    if-lt v2, v3, :cond_6

    const v3, 0xdfff

    if-le v2, v3, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v6, p1, 0x1

    if-ge v6, p2, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const v8, 0xdbff

    if-gt v2, v8, :cond_5

    const v2, 0xdc00

    if-lt v7, v2, :cond_5

    if-le v7, v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    :goto_4
    add-long/2addr v0, v4

    move p1, v6

    goto :goto_0

    :cond_6
    :goto_5
    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    return-wide v0

    :cond_8
    const-string p1, "endIndex > string.length: "

    const-string v0, " > "

    .line 3
    invoke-static {p1, p2, v0}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p0, "endIndex < beginIndex: "

    const-string v0, " < "

    .line 5
    invoke-static {p0, p2, v0, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const-string p0, "beginIndex < 0: "

    .line 7
    invoke-static {p0, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic size$default(Ljava/lang/String;IIILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method
