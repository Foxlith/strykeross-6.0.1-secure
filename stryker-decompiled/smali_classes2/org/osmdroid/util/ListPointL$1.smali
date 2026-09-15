.class Lorg/osmdroid/util/ListPointL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/osmdroid/util/PointL;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lorg/osmdroid/util/ListPointL;


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/ListPointL;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    iget-object v1, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    invoke-static {v1}, Lorg/osmdroid/util/ListPointL;->access$000(Lorg/osmdroid/util/ListPointL;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/osmdroid/util/ListPointL$1;->next()Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/osmdroid/util/PointL;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    iget v1, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/ListPointL;->get(I)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
