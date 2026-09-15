.class public final Landroidx/fragment/app/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Lb1/f;
.implements Landroidx/lifecycle/y0;


# instance fields
.field public final a:Landroidx/lifecycle/x0;

.field public b:Landroidx/lifecycle/v;

.field public c:Lb1/e;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/x0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    iput-object v0, p0, Landroidx/fragment/app/o1;->c:Lb1/e;

    iput-object p1, p0, Landroidx/fragment/app/o1;->a:Landroidx/lifecycle/x0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/lifecycle/v;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    .line 11
    .line 12
    new-instance v0, Lb1/e;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lb1/e;-><init>(Lb1/f;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/o1;->c:Lb1/e;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    iget-object v0, p0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lb1/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/o1;->c:Lb1/e;

    .line 5
    .line 6
    iget-object v0, v0, Lb1/e;->b:Lb1/d;

    .line 7
    .line 8
    return-object v0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    iget-object v0, p0, Landroidx/fragment/app/o1;->a:Landroidx/lifecycle/x0;

    return-object v0
.end method
