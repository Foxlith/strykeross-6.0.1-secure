.class Landroidx/activity/ComponentActivity$5;
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

    iput-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/h;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/activity/ComponentActivity$5;->a:Landroidx/activity/h;

    invoke-virtual {p1}, Landroidx/activity/h;->ensureViewModelStore()V

    invoke-virtual {p1}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->b(Landroidx/lifecycle/s;)V

    return-void
.end method
