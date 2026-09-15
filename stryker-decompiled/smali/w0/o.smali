.class public final Lw0/o;
.super Landroidx/recyclerview/widget/r1;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/core/view/c;

.field public final c:Lw0/n;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/r1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/r1;->getItemDelegate()Landroidx/core/view/c;

    move-result-object v0

    iput-object v0, p0, Lw0/o;->b:Landroidx/core/view/c;

    new-instance v0, Lw0/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw0/n;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lw0/o;->c:Lw0/n;

    iput-object p1, p0, Lw0/o;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getItemDelegate()Landroidx/core/view/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/o;->c:Lw0/n;

    return-object v0
.end method
