.class public final Lorg/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [I

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_0

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v6, v0

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v0

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v0

    invoke-direct {p0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v7

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v9, v3, v7

    aget v10, v4, v7

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    shl-int/lit8 v10, v6, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v9

    aput v6, v8, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v8, v2, v0

    shl-int/lit8 v9, v8, 0x8

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v8, v4, v7

    aget v9, v2, v7

    shl-int/lit8 v10, v9, 0x8

    or-int/2addr v8, v10

    aget v7, v3, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v7, v4, v0

    aget v8, v3, v0

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v7

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private F32(I[I)I
    .locals 11

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p1

    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x1

    aget v6, p2, v5

    const/4 v7, 0x2

    aget v8, p2, v7

    const/4 v9, 0x3

    aget p2, p2, v9

    iget v10, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_1

    if-eq v10, v5, :cond_0

    if-eq v10, v7, :cond_3

    if-eq v10, v9, :cond_2

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v6, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v6, v3

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget p2, p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v3, v6, v3

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v3

    xor-int/2addr v1, v3

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v1, v6, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v1, v6, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    :goto_0
    xor-int v3, p2, p1

    goto/16 :goto_1

    :cond_1
    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v7, v5

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v0, v9

    aget-object v9, v7, v3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v1, v9

    aget-object v9, v7, v3

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v9

    xor-int/2addr v2, v9

    aget-object v7, v7, v5

    aget-byte p1, v7, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_2
    sget-object p2, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, p2, v5

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget-object v7, p2, v5

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v7

    xor-int/2addr v1, v7

    aget-object v7, p2, v3

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v7

    xor-int/2addr v2, v7

    aget-object p2, p2, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_3
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v7, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v7, v3

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v0, v9

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v0, v8

    aget p2, p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v8, v7, v3

    aget-object v9, v7, v5

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v1, v9

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v1, v8

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v1, v7, v5

    aget-object v3, v7, v3

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v1, v7, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v2

    xor-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    goto/16 :goto_0

    :goto_1
    return v3
.end method

.method private Fe32_0(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    aget v1, v0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v0, p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private Fe32_3(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    aget v1, v0, v1

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v0, p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private LFSR1(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0xb4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method private LFSR2(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const/16 v2, 0x5a

    :cond_1
    xor-int p1, v0, v2

    return p1
.end method

.method private Mx_X(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr p1, v0

    return p1
.end method

.method private Mx_Y(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private RS_MDS_Encode(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/2addr p1, p2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private RS_rem(I)I
    .locals 5

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v1, v0, 0xff

    shl-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x14d

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, v1, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/16 v4, 0xa6

    :cond_1
    xor-int v0, v3, v4

    xor-int/2addr v0, v2

    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 v3, v0, 0x18

    xor-int/2addr p1, v3

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr p1, v2

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private b0(I)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private b1(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private b2(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private b3(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private decryptBlock([BI[BI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xc

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    xor-int/2addr v1, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/16 v10, 0x10

    const/4 v11, 0x1

    if-ge v9, v10, :cond_0

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v10

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v15, v7, -0x1

    aget v14, v14, v7

    add-int/2addr v13, v14

    xor-int/2addr v1, v13

    invoke-static {v6, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v7, -0x2

    aget v12, v12, v15

    add-int/2addr v10, v12

    xor-int/2addr v6, v10

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    invoke-direct {v0, v6}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    mul-int/lit8 v14, v12, 0x2

    add-int/2addr v14, v10

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v7, -0x3

    aget v13, v15, v13

    add-int/2addr v14, v13

    xor-int/2addr v5, v14

    invoke-static {v4, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    add-int/2addr v10, v12

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v7, -0x4

    aget v12, v12, v16

    add-int/2addr v10, v12

    xor-int/2addr v4, v10

    invoke-static {v5, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v5

    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v7, v7, v8

    xor-int/2addr v6, v7

    invoke-static {v6, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v6, v6, v11

    xor-int/2addr v1, v6

    add-int/lit8 v6, v3, 0x4

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x2

    aget v1, v1, v6

    xor-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v4, 0x3

    aget v1, v1, v4

    xor-int/2addr v1, v5

    add-int/lit8 v3, v3, 0xc

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x8

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v7, v9

    add-int/lit8 v9, p2, 0xc

    invoke-static {v1, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v11, 0x3

    aget v9, v9, v11

    xor-int/2addr v1, v9

    const/16 v9, 0x8

    :goto_0
    const/16 v11, 0x10

    if-ge v6, v11, :cond_0

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v11

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v13

    add-int v14, v11, v13

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v9

    add-int/2addr v14, v15

    xor-int/2addr v7, v14

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v13, v10

    add-int/2addr v13, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v9, 0x2

    aget v11, v11, v16

    add-int/2addr v13, v11

    xor-int/2addr v1, v13

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v11

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v13

    add-int v15, v11, v13

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v9, 0x3

    aget v12, v12, v14

    add-int/2addr v15, v12

    xor-int/2addr v4, v15

    invoke-static {v4, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    invoke-static {v5, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    mul-int/2addr v13, v10

    add-int/2addr v13, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x4

    add-int/2addr v9, v12

    aget v11, v11, v16

    add-int/2addr v13, v11

    xor-int/2addr v5, v13

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v12, 0x4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v6, v6, v12

    xor-int/2addr v6, v7

    invoke-static {v6, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v1, v6

    add-int/lit8 v6, v3, 0x4

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x6

    aget v1, v1, v6

    xor-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v4, 0x7

    aget v1, v1, v4

    xor-int/2addr v1, v5

    add-int/lit8 v3, v3, 0xc

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private setKey([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_0

    mul-int/lit8 v8, v7, 0x8

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    aput v10, v3, v7

    add-int/2addr v8, v2

    invoke-static {v1, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v4, v7

    iget v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v10, v9

    sub-int/2addr v10, v7

    aget v9, v3, v7

    invoke-direct {v0, v9, v8}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v8

    aput v8, v5, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const v2, 0x2020202

    mul-int/2addr v2, v1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v7

    const v8, 0x1010101

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v2

    const/16 v8, 0x8

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    add-int/2addr v7, v2

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v10, v1, 0x2

    aput v7, v8, v10

    add-int/2addr v7, v2

    add-int/2addr v10, v9

    shl-int/lit8 v2, v7, 0x9

    ushr-int/lit8 v7, v7, 0x17

    or-int/2addr v2, v7

    aput v2, v8, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget v1, v5, v6

    aget v2, v5, v9

    const/4 v3, 0x2

    aget v4, v5, v3

    const/4 v7, 0x3

    aget v5, v5, v7

    const/16 v8, 0x400

    new-array v8, v8, [I

    iput-object v8, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move v8, v6

    :goto_2
    const/16 v10, 0x100

    if-ge v8, v10, :cond_6

    iget v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_5

    if-eq v10, v9, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_3

    :cond_3
    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_4

    :cond_4
    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v11, v8, 0x2

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v6

    aget-byte v14, v14, v8

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v12, v12, v14

    aput v12, v10, v11

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v12, v11, 0x1

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v15, v13, v6

    aget-byte v15, v15, v8

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v12, v11, 0x200

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v15, v13, v9

    aget-byte v15, v15, v8

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v11, v11, 0x201

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v13, v13, v9

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_5

    :cond_5
    sget-object v10, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v11, v10, v9

    aget-byte v11, v11, v8

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, v10, v6

    aget-byte v12, v12, v8

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-object v13, v10, v6

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v10, v10, v9

    aget-byte v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v10, v14

    :goto_3
    sget-object v14, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v15, v14, v9

    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v11, v15

    aget-object v15, v14, v9

    aget-byte v12, v15, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v12, v15

    aget-object v15, v14, v6

    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v13, v15

    aget-object v14, v14, v6

    aget-byte v10, v14, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v10, v14

    :goto_4
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v15, v8, 0x2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v16, Lorg/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v17, v16, v6

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v18

    xor-int v11, v11, v18

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v17

    xor-int v11, v11, v17

    aget v3, v3, v11

    aput v3, v14, v15

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v11, v15, 0x1

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v17, v16, v6

    aget-object v18, v16, v9

    aget-byte v12, v18, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v12, v12, v18

    aget-byte v12, v17, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v17

    xor-int v12, v12, v17

    aget v12, v14, v12

    aput v12, v3, v11

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v11, v15, 0x200

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v16, v9

    aget-object v17, v16, v6

    aget-byte v13, v17, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v17

    xor-int v13, v13, v17

    aget-byte v13, v14, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v3, v11

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v15, v15, 0x201

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v12, v16, v9

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v10, v13

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v10, v12

    aget v10, v11, v10

    aput v10, v3, v15

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 6
    .line 7
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 8
    .line 9
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 14
    .line 15
    array-length p2, p1

    .line 16
    mul-int/lit8 p2, p2, 0x8

    .line 17
    .line 18
    const/16 v0, 0x80

    .line 19
    .line 20
    if-eq p2, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xc0

    .line 23
    .line 24
    if-eq p2, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x100

    .line 27
    .line 28
    if-ne p2, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "Key length not 128/192/256 bits."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    array-length p2, p1

    .line 40
    div-int/lit8 p2, p2, 0x8

    .line 41
    .line 42
    iput p2, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "invalid parameter passed to Twofish init - "

    .line 51
    .line 52
    invoke-static {p2, v0}, Ll1/e;->m(Lorg/bouncycastle/crypto/CipherParameters;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Twofish not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    :cond_0
    return-void
.end method
