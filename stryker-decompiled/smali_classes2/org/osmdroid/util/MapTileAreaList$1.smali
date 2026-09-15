.class Lorg/osmdroid/util/MapTileAreaList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/util/MapTileAreaList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrent:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field final synthetic this$0:Lorg/osmdroid/util/MapTileAreaList;


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/MapTileAreaList;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/util/MapTileAreaList$1;->this$0:Lorg/osmdroid/util/MapTileAreaList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrent()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mCurrent:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mIndex:I

    iget-object v1, p0, Lorg/osmdroid/util/MapTileAreaList$1;->this$0:Lorg/osmdroid/util/MapTileAreaList;

    invoke-static {v1}, Lorg/osmdroid/util/MapTileAreaList;->access$000(Lorg/osmdroid/util/MapTileAreaList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/MapTileAreaList$1;->this$0:Lorg/osmdroid/util/MapTileAreaList;

    invoke-static {v0}, Lorg/osmdroid/util/MapTileAreaList;->access$000(Lorg/osmdroid/util/MapTileAreaList;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/MapTileArea;

    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mCurrent:Ljava/util/Iterator;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lorg/osmdroid/util/MapTileAreaList$1;->getCurrent()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Long;
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/osmdroid/util/MapTileAreaList$1;->getCurrent()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/osmdroid/util/MapTileAreaList$1;->getCurrent()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/osmdroid/util/MapTileAreaList$1;->mCurrent:Ljava/util/Iterator;

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileAreaList$1;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
