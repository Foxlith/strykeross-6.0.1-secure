.class public Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32;
.super Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/MurmurHash3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementalHash32"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;-><init>()V

    return-void
.end method


# virtual methods
.method public finalise(II[BI)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto :goto_2

    :cond_0
    aget-byte p2, p3, v2

    shl-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    aget-byte p3, p3, v1

    xor-int/2addr p2, p3

    const p3, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p2, p3

    const/16 p3, 0xf

    invoke-static {p2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p2

    const p3, 0x1b873593

    mul-int/2addr p2, p3

    xor-int/2addr p1, p2

    :goto_2
    xor-int/2addr p1, p4

    invoke-static {p1}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$200(I)I

    move-result p1

    return p1
.end method
