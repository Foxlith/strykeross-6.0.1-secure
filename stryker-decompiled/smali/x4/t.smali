.class public final Lx4/t;
.super Lx4/f;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx4/f;-><init>()V

    iput-object p1, p0, Lx4/t;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/t;->a:Ljava/util/List;

    invoke-static {p1, p0}, Lx4/l;->t0(ILjava/util/List;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lx4/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lx4/r;-><init>(Lx4/t;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 1
    new-instance v0, Lx4/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lx4/r;-><init>(Lx4/t;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 2
    new-instance v0, Lx4/r;

    invoke-direct {v0, p0, p1}, Lx4/r;-><init>(Lx4/t;I)V

    return-object v0
.end method
