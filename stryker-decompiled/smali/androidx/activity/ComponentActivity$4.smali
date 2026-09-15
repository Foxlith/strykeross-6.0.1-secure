.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/activity/h;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/h;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/h;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Lc/a;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/h;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/h;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/activity/h;->getViewModelStore()Landroidx/lifecycle/x0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroidx/lifecycle/x0;->a()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
