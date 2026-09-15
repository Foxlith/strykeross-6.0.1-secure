.class public abstract Ljcifs/netbios/SessionServicePacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final HEADER_LENGTH:I = 0x4

.field static final MAX_MESSAGE_SIZE:I = 0x1ffff

.field public static final NEGATIVE_SESSION_RESPONSE:I = 0x83

.field public static final POSITIVE_SESSION_RESPONSE:I = 0x82

.field static final SESSION_KEEP_ALIVE:I = 0x85

.field static final SESSION_MESSAGE:I = 0x0

.field static final SESSION_REQUEST:I = 0x81

.field static final SESSION_RETARGET_RESPONSE:I = 0x84


# instance fields
.field length:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readInt2([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt4([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readLength([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readPacketType(Ljava/io/InputStream;[BI)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Ljcifs/netbios/SessionServicePacket;->readn(Ljava/io/InputStream;[BII)I

    move-result p0

    if-eq p0, v0, :cond_1

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected EOF reading netbios session header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static writeInt2(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public static writeInt4(I[BI)V
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

    return-void
.end method


# virtual methods
.method public readHeaderWireFormat(Ljava/io/InputStream;[BI)I
    .locals 1

    add-int/lit8 p1, p3, 0x1

    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    aget-byte p1, p2, p1

    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 p3, p3, 0x2

    invoke-static {p2, p3}, Ljcifs/netbios/SessionServicePacket;->readInt2([BI)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    const/4 p1, 0x4

    return p1
.end method

.method public abstract readTrailerWireFormat(Ljava/io/InputStream;[BI)I
.end method

.method public readWireFormat(Ljava/io/InputStream;[BI)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readHeaderWireFormat(Ljava/io/InputStream;[BI)I

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/netbios/SessionServicePacket;->readTrailerWireFormat(Ljava/io/InputStream;[BI)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public writeHeaderWireFormat([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    iget v1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    aput-byte v2, p1, v0

    :cond_0
    add-int/lit8 p2, p2, 0x2

    invoke-static {v1, p1, p2}, Ljcifs/netbios/SessionServicePacket;->writeInt2(I[BI)V

    const/4 p1, 0x4

    return p1
.end method

.method public abstract writeTrailerWireFormat([BI)I
.end method

.method public writeWireFormat([BI)I
    .locals 1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/SessionServicePacket;->writeTrailerWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/SessionServicePacket;->writeHeaderWireFormat([BI)I

    iget p1, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
