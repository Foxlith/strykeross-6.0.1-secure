.class public abstract Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Ln/d;->a:[I

    new-array v1, v0, [J

    sput-object v1, Ln/d;->b:[J

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ln/d;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a(II[I)I
    .locals 3

    .line 1
    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_2

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p2, v1

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static b(J[JI)I
    .locals 4

    .line 1
    add-int/lit8 p3, p3, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p3, :cond_2

    add-int v1, v0, p3

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p2, v1

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p3, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method
