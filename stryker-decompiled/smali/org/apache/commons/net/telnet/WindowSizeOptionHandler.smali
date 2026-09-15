.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "SourceFile"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .line 1
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6

    .line 2
    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    return-void
.end method


# virtual methods
.method public startSubnegotiationLocal()[I
    .locals 8

    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->width:I

    const/high16 v1, 0x10000

    mul-int/2addr v1, v0

    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->height:I

    add-int/2addr v1, v2

    rem-int/lit16 v3, v0, 0x100

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    div-int/lit16 v0, v0, 0x100

    if-ne v0, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    rem-int/lit16 v0, v2, 0x100

    if-ne v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    div-int/lit16 v2, v2, 0x100

    if-ne v2, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    new-array v0, v3, [I

    const/4 v2, 0x0

    const/16 v5, 0x1f

    aput v5, v0, v2

    const/4 v2, 0x1

    const/16 v5, 0x18

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_5

    shl-int v7, v4, v5

    and-int/2addr v7, v1

    ushr-int/2addr v7, v5

    aput v7, v0, v6

    if-ne v7, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    aput v4, v0, v6

    :cond_4
    add-int/2addr v6, v2

    add-int/lit8 v5, v5, -0x8

    goto :goto_1

    :cond_5
    return-object v0
.end method
