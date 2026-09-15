.class public final Landroidx/transition/l;
.super Landroidx/transition/v;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Landroidx/transition/m;


# direct methods
.method public constructor <init>(Landroidx/transition/m;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/l;->g:Landroidx/transition/m;

    iput-object p2, p0, Landroidx/transition/l;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/l;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/transition/l;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/transition/l;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/transition/l;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/transition/l;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/u;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/transition/u;->removeListener(Landroidx/transition/t;)Landroidx/transition/u;

    return-void
.end method

.method public final onTransitionStart(Landroidx/transition/u;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Landroidx/transition/l;->g:Landroidx/transition/m;

    iget-object v1, p0, Landroidx/transition/l;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/transition/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/transition/m;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Landroidx/transition/l;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/transition/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/transition/m;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, Landroidx/transition/l;->e:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/transition/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/transition/m;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
