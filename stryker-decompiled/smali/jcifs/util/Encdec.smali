.class public Ljcifs/util/Encdec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final SEC_BETWEEEN_1904_AND_1970:J = 0x7c25b080L

.field public static final TIME_1601_NANOS_64BE:I = 0x6

.field public static final TIME_1601_NANOS_64LE:I = 0x5

.field public static final TIME_1904_SEC_32BE:I = 0x3

.field public static final TIME_1904_SEC_32LE:I = 0x4

.field public static final TIME_1970_MILLIS_64BE:I = 0x7

.field public static final TIME_1970_MILLIS_64LE:I = 0x8

.field public static final TIME_1970_SEC_32BE:I = 0x1

.field public static final TIME_1970_SEC_32LE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dec_doublebe([BI)D
    .locals 0

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_doublele([BI)D
    .locals 0

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dec_floatbe([BI)F
    .locals 0

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_floatle([BI)F
    .locals 0

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static dec_time([BII)Ljava/util/Date;
    .locals 10

    const-wide/32 v0, 0x7c25b080

    const-wide v2, 0xffffffffL

    const-wide v4, 0xa9730b66800L

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x3e8

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_1
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_2
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide p0

    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v6

    sub-long/2addr p0, v4

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_3
    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint64le([BI)J

    move-result-wide p0

    new-instance p2, Ljava/util/Date;

    div-long/2addr p0, v6

    sub-long/2addr p0, v4

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_4
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr p0, v0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_5
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr p0, v0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_6
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_7
    new-instance p2, Ljava/util/Date;

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v8

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dec_ucs2le([BII[C)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    int-to-char v2, v2

    aput-char v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static dec_uint16be([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint16le([BI)S
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static dec_uint32be([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint32le([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static dec_uint64be([BI)J
    .locals 5

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_uint64le([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    invoke-static {p0, p1}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static dec_utf8([BII)Ljava/lang/String;
    .locals 10

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p1, p2, :cond_8

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v5, v4, 0xff

    if-eqz v5, :cond_8

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    int-to-char p1, v5

    aput-char p1, v0, v2

    move p1, v3

    goto :goto_1

    :cond_0
    and-int/lit16 v5, v4, 0xe0

    const-string v7, "Invalid UTF-8 sequence"

    const/16 v8, 0xc0

    if-ne v5, v8, :cond_3

    sub-int v5, p2, v3

    const/4 v9, 0x2

    if-ge v5, v9, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    int-to-char v4, v4

    aput-char v4, v0, v2

    add-int/lit8 p1, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v0, v2

    and-int/2addr v3, v8

    if-ne v3, v6, :cond_2

    if-lt v4, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    and-int/lit16 v5, v4, 0xf0

    const/16 v9, 0xe0

    if-ne v5, v9, :cond_7

    sub-int v5, p2, v3

    const/4 v9, 0x3

    if-ge v5, v9, :cond_4

    goto :goto_2

    :cond_4
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    int-to-char v4, v4

    aput-char v4, v0, v2

    add-int/lit8 v5, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v6, :cond_6

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte v4, p0, v5

    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v3, v5

    int-to-char v3, v3

    aput-char v3, v0, v2

    and-int/2addr v4, v8

    if-ne v4, v6, :cond_5

    const/16 v4, 0x800

    if-lt v3, v4, :cond_5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported UTF-8 sequence"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static enc_doublebe(D[BI)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_doublele(D[BI)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatbe(F[BI)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_floatle(F[BI)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0
.end method

.method public static enc_time(Ljava/util/Date;[BII)I
    .locals 8

    const-wide/32 v0, 0x7c25b080

    const-wide/16 v2, 0x2710

    const-wide v4, 0xa9730b66800L

    const-wide/16 v6, 0x3e8

    packed-switch p3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported time encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    add-long/2addr v2, v0

    long-to-int p0, v2

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    add-long/2addr v2, v0

    long-to-int p0, v2

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v6

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    move-result p0

    return p0

    :pswitch_7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v6

    long-to-int p0, v0

    invoke-static {p0, p1, p2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static enc_uint16be(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint16le(S[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    const/4 p0, 0x2

    return p0
.end method

.method public static enc_uint32be(I[BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint32le(I[BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    const/4 p0, 0x4

    return p0
.end method

.method public static enc_uint64be(J[BI)I
    .locals 4

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    add-int/lit8 v3, p3, 0x4

    invoke-static {v2, p2, v3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_uint64le(J[BI)I
    .locals 4

    const-wide v0, 0xffffffffL

    and-long v2, p0, v0

    long-to-int v2, v2

    invoke-static {v2, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    and-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 p0, 0x8

    return p0
.end method

.method public static enc_utf8(Ljava/lang/String;[BII)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_0
    if-ge v2, p3, :cond_4

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    move v2, v4

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_2

    sub-int v4, p3, v2

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v5, v2, 0x2

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    add-int/lit8 v2, v2, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v5

    goto :goto_1

    :cond_2
    sub-int v4, p3, v2

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    sub-int/2addr v2, p2

    return v2
.end method
