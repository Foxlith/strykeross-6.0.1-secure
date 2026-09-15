.class public Lorg/osmdroid/tileprovider/TileStates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDone:Z

.field private mExpired:I

.field private mNotFound:I

.field private mRunAfters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaled:I

.field private mTotal:I

.field private mUpToDate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getExpired()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    return v0
.end method

.method public getNotFound()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return v0
.end method

.method public getRunAfters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-object v0
.end method

.method public getScaled()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    return v0
.end method

.method public getUpToDate()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    return v0
.end method

.method public handleTile(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, -0x4

    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/4 v0, -0x3

    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, -0x2

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "Unknown state: "

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    .line 52
    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    .line 59
    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 61
    .line 62
    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public initialiseLoop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return-void
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "TileStates: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "(U) + "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "(E) + "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "(S) + "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    .line 53
    .line 54
    const-string v2, "(N)"

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_0
    const-string v0, "TileStates"

    .line 62
    .line 63
    return-object v0
.end method
