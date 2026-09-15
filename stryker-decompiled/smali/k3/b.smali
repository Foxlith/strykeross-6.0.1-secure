.class public final Lk3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lk3/b;


# instance fields
.field public final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lk3/b;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v1, v2}, Lk3/b;-><init>(I[I)V

    sput-object v0, Lk3/b;->b:Lk3/b;

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lk3/b;->a:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    array-length p1, p2

    const/4 v1, 0x2

    :goto_0
    if-ge v2, p1, :cond_2

    aget v3, p2, v2

    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lk3/b;->a:[B

    add-int/lit8 v5, v1, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    move v1, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static a(II)Lk3/b;
    .locals 1

    .line 1
    new-instance v0, Lk3/b;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lk3/b;-><init>(I[I)V

    return-object v0
.end method


# virtual methods
.method public final b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lk3/b;->a:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
