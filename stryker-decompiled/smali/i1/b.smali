.class public final Li1/b;
.super Li1/a;
.source "SourceFile"


# instance fields
.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroid/os/Parcel;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string v4, ""

    new-instance v5, Ln/b;

    .line 1
    invoke-direct {v5}, Ln/k;-><init>()V

    .line 2
    new-instance v6, Ln/b;

    .line 3
    invoke-direct {v6}, Ln/k;-><init>()V

    .line 4
    new-instance v7, Ln/b;

    .line 5
    invoke-direct {v7}, Ln/k;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-direct/range {v0 .. v7}, Li1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ln/b;Ln/b;Ln/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Ln/b;Ln/b;Ln/b;)V
    .locals 0

    .line 7
    invoke-direct {p0, p5, p6, p7}, Li1/a;-><init>(Ln/b;Ln/b;Ln/b;)V

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Li1/b;->d:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    iput p5, p0, Li1/b;->i:I

    iput p5, p0, Li1/b;->k:I

    iput-object p1, p0, Li1/b;->e:Landroid/os/Parcel;

    iput p2, p0, Li1/b;->f:I

    iput p3, p0, Li1/b;->g:I

    iput p2, p0, Li1/b;->j:I

    iput-object p4, p0, Li1/b;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Li1/b;
    .locals 9

    .line 1
    new-instance v8, Li1/b;

    .line 2
    .line 3
    iget-object v1, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v0, p0, Li1/b;->j:I

    .line 10
    .line 11
    iget v3, p0, Li1/b;->f:I

    .line 12
    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    iget v0, p0, Li1/b;->g:I

    .line 16
    .line 17
    :cond_0
    move v3, v0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Li1/b;->h:Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "  "

    .line 26
    .line 27
    invoke-static {v0, v4, v5}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Li1/a;->a:Ln/b;

    .line 32
    .line 33
    iget-object v6, p0, Li1/a;->b:Ln/b;

    .line 34
    .line 35
    iget-object v7, p0, Li1/a;->c:Ln/b;

    .line 36
    .line 37
    move-object v0, v8

    .line 38
    invoke-direct/range {v0 .. v7}, Li1/b;-><init>(Landroid/os/Parcel;IILjava/lang/String;Ln/b;Ln/b;Ln/b;)V

    .line 39
    .line 40
    .line 41
    return-object v8
.end method

.method public final e(I)Z
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Li1/b;->j:I

    iget v1, p0, Li1/b;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Li1/b;->k:I

    if-ne v0, p1, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Li1/b;->j:I

    iget-object v1, p0, Li1/b;->e:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Li1/b;->k:I

    iget v1, p0, Li1/b;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Li1/b;->j:I

    goto :goto_0

    :cond_2
    iget v0, p0, Li1/b;->k:I

    if-ne v0, p1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public final i(I)V
    .locals 5

    .line 1
    iget v0, p0, Li1/b;->i:I

    .line 2
    .line 3
    iget-object v1, p0, Li1/b;->d:Landroid/util/SparseIntArray;

    .line 4
    .line 5
    iget-object v2, p0, Li1/b;->e:Landroid/os/Parcel;

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int v4, v3, v0

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput p1, p0, Li1/b;->i:I

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
