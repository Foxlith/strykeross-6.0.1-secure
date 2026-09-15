.class public abstract Landroidx/fragment/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/s1;

.field public final b:Ld0/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s1;Ld0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    iput-object p2, p0, Landroidx/fragment/app/i;->b:Ld0/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/s1;->e:Ljava/util/HashSet;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/i;->b:Ld0/d;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/s1;->b()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/s1;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/support/v4/media/session/a;->c(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v0, v0, Landroidx/fragment/app/s1;->a:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method
