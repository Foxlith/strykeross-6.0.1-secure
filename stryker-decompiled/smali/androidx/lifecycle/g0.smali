.class public final Landroidx/lifecycle/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# static fields
.field public static final i:Landroidx/lifecycle/g0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/v;

.field public final g:Landroidx/activity/d;

.field public final h:Lf/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/g0;

    invoke-direct {v0}, Landroidx/lifecycle/g0;-><init>()V

    sput-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/g0;->a:I

    iput v0, p0, Landroidx/lifecycle/g0;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/g0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/g0;->d:Z

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    iput-object v0, p0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/g0;->g:Landroidx/activity/d;

    new-instance v0, Lf/q0;

    const/16 v1, 0x15

    invoke-direct {v0, p0, v1}, Lf/q0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/g0;->h:Lf/q0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/g0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/g0;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/g0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/g0;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/g0;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/g0;->g:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    return-object v0
.end method
