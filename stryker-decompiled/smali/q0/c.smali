.class public abstract Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ld/d;->b:Ld/d;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ld/d;

    .line 9
    .line 10
    invoke-direct {v0}, Ld/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ld/d;->b:Ld/d;

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    iget v0, p0, Lq0/c;->d:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lq0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lq0/c;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
