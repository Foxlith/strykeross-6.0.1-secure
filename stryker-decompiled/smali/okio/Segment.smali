.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Segment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Segment$Companion;

.field public static final SHARE_MINIMUM:I = 0x400

.field public static final SIZE:I = 0x2000


# instance fields
.field public final data:[B

.field public limit:I

.field public next:Lokio/Segment;

.field public owner:Z

.field public pos:I

.field public prev:Lokio/Segment;

.field public shared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Segment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Segment$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/Segment;->Companion:Lokio/Segment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    .line 2
    const-string v0, "data"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/Segment;->data:[B

    iput p2, p0, Lokio/Segment;->pos:I

    iput p3, p0, Lokio/Segment;->limit:I

    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    iput-boolean p5, p0, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 3

    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v0, p0, :cond_3

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    iget-boolean v0, v0, Lokio/Segment;->owner:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    iget v1, v1, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    iget-boolean v2, v2, Lokio/Segment;->shared:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pop()Lokio/Segment;
    .locals 4

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-object p1
.end method

.method public final sharedCopy()Lokio/Segment;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Segment;->data:[B

    iget v3, p0, Lokio/Segment;->pos:I

    iget v4, p0, Lokio/Segment;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .locals 6

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lokio/Segment;->limit:I

    .line 4
    .line 5
    iget v1, p0, Lokio/Segment;->pos:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    if-gt p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x400

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lokio/Segment;->data:[B

    .line 24
    .line 25
    iget-object v2, v0, Lokio/Segment;->data:[B

    .line 26
    .line 27
    iget v3, p0, Lokio/Segment;->pos:I

    .line 28
    .line 29
    add-int v4, v3, p1

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static {v5, v1, v3, v2, v4}, Lg5/i;->c0(I[BI[BI)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget v1, v0, Lokio/Segment;->pos:I

    .line 36
    .line 37
    add-int/2addr v1, p1

    .line 38
    iput v1, v0, Lokio/Segment;->limit:I

    .line 39
    .line 40
    iget v1, p0, Lokio/Segment;->pos:I

    .line 41
    .line 42
    add-int/2addr v1, p1

    .line 43
    iput v1, p0, Lokio/Segment;->pos:I

    .line 44
    .line 45
    iget-object p1, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 46
    .line 47
    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string v0, "byteCount out of range"

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final unsharedCopy()Lokio/Segment;
    .locals 7

    new-instance v6, Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v0, "copyOf(this, size)"

    invoke-static {v1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 5

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget v0, p1, Lokio/Segment;->limit:I

    .line 11
    .line 12
    add-int v1, v0, p2

    .line 13
    .line 14
    const/16 v2, 0x2000

    .line 15
    .line 16
    if-le v1, v2, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p1, Lokio/Segment;->shared:Z

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget v3, p1, Lokio/Segment;->pos:I

    .line 23
    .line 24
    sub-int/2addr v1, v3

    .line 25
    if-gt v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p1, Lokio/Segment;->data:[B

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v1, v3, v1, v0}, Lg5/i;->c0(I[BI[BI)V

    .line 31
    .line 32
    .line 33
    iget v0, p1, Lokio/Segment;->limit:I

    .line 34
    .line 35
    iget v1, p1, Lokio/Segment;->pos:I

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    iput v0, p1, Lokio/Segment;->limit:I

    .line 39
    .line 40
    iput v2, p1, Lokio/Segment;->pos:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lokio/Segment;->data:[B

    .line 56
    .line 57
    iget-object v1, p1, Lokio/Segment;->data:[B

    .line 58
    .line 59
    iget v2, p1, Lokio/Segment;->limit:I

    .line 60
    .line 61
    iget v3, p0, Lokio/Segment;->pos:I

    .line 62
    .line 63
    add-int v4, v3, p2

    .line 64
    .line 65
    invoke-static {v2, v0, v3, v1, v4}, Lg5/i;->c0(I[BI[BI)V

    .line 66
    .line 67
    .line 68
    iget v0, p1, Lokio/Segment;->limit:I

    .line 69
    .line 70
    add-int/2addr v0, p2

    .line 71
    iput v0, p1, Lokio/Segment;->limit:I

    .line 72
    .line 73
    iget p1, p0, Lokio/Segment;->pos:I

    .line 74
    .line 75
    add-int/2addr p1, p2

    .line 76
    iput p1, p0, Lokio/Segment;->pos:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string p2, "only owner can write"

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method
