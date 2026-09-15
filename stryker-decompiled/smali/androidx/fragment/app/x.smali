.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/a0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/a0;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/x;->a:Landroidx/fragment/app/a0;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/a0;->markFragmentsCreated()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v1, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 12
    .line 13
    sget-object v3, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/u0;->P()Landroidx/fragment/app/w0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v2, "android:support:fragments"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method
