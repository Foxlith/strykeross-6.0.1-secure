.class public final Landroidx/lifecycle/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/lifecycle/v;

.field public final b:Landroidx/lifecycle/m;

.field public c:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/v;Landroidx/lifecycle/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/r0;->c:Z

    iput-object p1, p0, Landroidx/lifecycle/r0;->a:Landroidx/lifecycle/v;

    iput-object p2, p0, Landroidx/lifecycle/r0;->b:Landroidx/lifecycle/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/r0;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/r0;->a:Landroidx/lifecycle/v;

    iget-object v1, p0, Landroidx/lifecycle/r0;->b:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/r0;->c:Z

    :cond_0
    return-void
.end method
