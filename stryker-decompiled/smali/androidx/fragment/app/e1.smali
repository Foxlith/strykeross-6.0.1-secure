.class public abstract Landroidx/fragment/app/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Ljava/lang/CharSequence;

.field public n:Ljava/util/ArrayList;

.field public o:Ljava/util/ArrayList;

.field public p:Z


# virtual methods
.method public final b(Landroidx/fragment/app/d1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/e1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/e1;->b:I

    iput v0, p1, Landroidx/fragment/app/d1;->c:I

    iget v0, p0, Landroidx/fragment/app/e1;->c:I

    iput v0, p1, Landroidx/fragment/app/d1;->d:I

    iget v0, p0, Landroidx/fragment/app/e1;->d:I

    iput v0, p1, Landroidx/fragment/app/d1;->e:I

    iget v0, p0, Landroidx/fragment/app/e1;->e:I

    iput v0, p1, Landroidx/fragment/app/d1;->f:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/e1;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/e1;->g:Z

    iput-object p1, p0, Landroidx/fragment/app/e1;->i:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public final e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p1, p2, v0}, Landroidx/fragment/app/e1;->d(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/e1;->b:I

    iput p2, p0, Landroidx/fragment/app/e1;->c:I

    iput p3, p0, Landroidx/fragment/app/e1;->d:I

    iput p4, p0, Landroidx/fragment/app/e1;->e:I

    return-void
.end method
