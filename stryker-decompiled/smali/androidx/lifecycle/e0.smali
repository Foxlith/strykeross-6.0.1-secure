.class public final Landroidx/lifecycle/e0;
.super Landroidx/lifecycle/f;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/f0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/e0;->this$1:Landroidx/lifecycle/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/e0;->this$1:Landroidx/lifecycle/f0;

    iget-object p1, p1, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    invoke-virtual {p1}, Landroidx/lifecycle/g0;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/e0;->this$1:Landroidx/lifecycle/f0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/lifecycle/f0;->this$0:Landroidx/lifecycle/g0;

    .line 4
    .line 5
    iget v0, p1, Landroidx/lifecycle/g0;->a:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p1, Landroidx/lifecycle/g0;->a:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p1, Landroidx/lifecycle/g0;->d:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    .line 18
    .line 19
    sget-object v1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Landroidx/lifecycle/g0;->d:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method
