.class public final Lm2/b;
.super Landroidx/viewpager2/adapter/e;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/e;-><init>(Landroidx/fragment/app/a0;)V

    iput-object p2, p0, Lm2/b;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm2/a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
