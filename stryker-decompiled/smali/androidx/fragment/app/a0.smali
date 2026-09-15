.class public abstract Landroidx/fragment/app/a0;
.super Landroidx/activity/h;
.source "SourceFile"

# interfaces
.implements Lv/d;
.implements Lv/e;


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

.field final mFragments:Landroidx/fragment/app/h0;

.field mResumed:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/z;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/fragment/app/z;-><init>(Landroidx/fragment/app/a0;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/fragment/app/h0;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/fragment/app/h0;-><init>(Landroidx/fragment/app/z;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 15
    .line 16
    new-instance v0, Landroidx/lifecycle/v;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->mStopped:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/activity/h;->getSavedStateRegistry()Lb1/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroidx/fragment/app/x;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Landroidx/fragment/app/x;-><init>(Landroidx/fragment/app/a0;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "android:support:fragments"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroidx/fragment/app/y;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Landroidx/fragment/app/a0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/activity/h;->addOnContextAvailableListener(Lc/b;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static d(Landroidx/fragment/app/u0;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroidx/fragment/app/a0;->d(Landroidx/fragment/app/u0;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    or-int/2addr v0, v2

    .line 42
    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 43
    .line 44
    sget-object v3, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 45
    .line 46
    const-string v4, "setCurrentState"

    .line 47
    .line 48
    sget-object v5, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/fragment/app/o1;->b()V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    .line 57
    .line 58
    iget-object v2, v2, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/n;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/fragment/app/o1;->b:Landroidx/lifecycle/v;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 74
    .line 75
    .line 76
    move v0, v6

    .line 77
    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    .line 78
    .line 79
    iget-object v2, v2, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/n;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/v;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 93
    .line 94
    .line 95
    move v0, v6

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/u0;->f:Landroidx/fragment/app/k0;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/k0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "Local FragmentActivity "

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, " State:"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "  "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "mCreated="

    .line 49
    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->mCreated:Z

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 56
    .line 57
    .line 58
    const-string v1, " mResumed="

    .line 59
    .line 60
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->mResumed:Z

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 66
    .line 67
    .line 68
    const-string v1, " mStopped="

    .line 69
    .line 70
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->mStopped:Z

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-static {p0}, Lv0/a;->a(Landroidx/lifecycle/t;)Lv0/c;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0, p3}, Lv0/c;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 96
    .line 97
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/u0;->p(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 6
    .line 7
    return-object v0
.end method

.method public getSupportLoaderManager()Lv0/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lv0/a;->a(Landroidx/lifecycle/t;)Lv0/c;

    move-result-object v0

    return-object v0
.end method

.method public markFragmentsCreated()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->getSupportFragmentManager()Landroidx/fragment/app/u0;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/a0;->d(Landroidx/fragment/app/u0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/h;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/h;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Landroidx/fragment/app/u0;->B:Z

    .line 19
    .line 20
    iput-boolean v0, p1, Landroidx/fragment/app/u0;->C:Z

    .line 21
    .line 22
    iget-object v1, p1, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 23
    .line 24
    iput-boolean v0, v1, Landroidx/fragment/app/y0;->i:Z

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Landroidx/fragment/app/u0;->o(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroidx/activity/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object p1, p1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v1}, Landroidx/fragment/app/u0;->i(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    or-int/2addr p1, v0

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/h;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/a0;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/a0;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->j()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/h;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroidx/fragment/app/u0;->h(Landroid/view/MenuItem;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/fragment/app/u0;->k(Landroid/view/MenuItem;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    invoke-super {p0, p1}, Landroidx/activity/h;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/fragment/app/u0;->l(Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/h;->onPanelClosed(ILandroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->mResumed:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u0;->o(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 18
    .line 19
    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/fragment/app/u0;->c:Landroidx/fragment/app/c1;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/c1;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public onPostResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/a0;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroidx/activity/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/a0;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 8
    .line 9
    iget-object p2, p2, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 10
    .line 11
    iget-object p2, p2, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroidx/fragment/app/u0;->n(Landroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    or-int/2addr p1, p2

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/h;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/h;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->mResumed:Z

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onResumeFragments()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Landroidx/fragment/app/u0;->B:Z

    .line 16
    .line 17
    iput-boolean v1, v0, Landroidx/fragment/app/u0;->C:Z

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 20
    .line 21
    iput-boolean v1, v2, Landroidx/fragment/app/y0;->i:Z

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/u0;->o(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->mStopped:Z

    .line 11
    .line 12
    iget-boolean v1, p0, Landroidx/fragment/app/a0;->mCreated:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iput-boolean v2, p0, Landroidx/fragment/app/a0;->mCreated:Z

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 24
    .line 25
    iput-boolean v0, v1, Landroidx/fragment/app/u0;->B:Z

    .line 26
    .line 27
    iput-boolean v0, v1, Landroidx/fragment/app/u0;->C:Z

    .line 28
    .line 29
    iget-object v3, v1, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 30
    .line 31
    iput-boolean v0, v3, Landroidx/fragment/app/y0;->i:Z

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-virtual {v1, v3}, Landroidx/fragment/app/u0;->o(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 40
    .line 41
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 47
    .line 48
    sget-object v2, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 54
    .line 55
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 58
    .line 59
    iput-boolean v0, v1, Landroidx/fragment/app/u0;->B:Z

    .line 60
    .line 61
    iput-boolean v0, v1, Landroidx/fragment/app/u0;->C:Z

    .line 62
    .line 63
    iget-object v2, v1, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 64
    .line 65
    iput-boolean v0, v2, Landroidx/fragment/app/y0;->i:Z

    .line 66
    .line 67
    const/4 v0, 0x5

    .line 68
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->o(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    invoke-virtual {v0}, Landroidx/fragment/app/h0;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/a0;->mStopped:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/a0;->markFragmentsCreated()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/a0;->mFragments:Landroidx/fragment/app/h0;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/fragment/app/h0;->a:Landroidx/fragment/app/i0;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/fragment/app/i0;->d:Landroidx/fragment/app/v0;

    .line 15
    .line 16
    iput-boolean v0, v1, Landroidx/fragment/app/u0;->C:Z

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/fragment/app/u0;->I:Landroidx/fragment/app/y0;

    .line 19
    .line 20
    iput-boolean v0, v2, Landroidx/fragment/app/y0;->i:Z

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->o(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/fragment/app/a0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 27
    .line 28
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setEnterSharedElementCallback(Lv/g0;)V
    .locals 0

    .line 1
    sget p1, Lv/g;->b:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lv/b;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setExitSharedElementCallback(Lv/g0;)V
    .locals 0

    .line 1
    sget p1, Lv/g;->b:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lv/b;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/a0;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    sget p1, Lv/g;->b:I

    .line 2
    invoke-static {p0, p2, v0, p4}, Lv/a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    move v3, p3

    .line 3
    if-ne v3, v0, :cond_0

    .line 4
    .line 5
    sget v0, Lv/g;->b:I

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    move v6, p6

    .line 13
    move/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    invoke-static/range {v1 .. v8}, Lv/a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual/range {p1 .. p8}, Landroidx/fragment/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public supportFinishAfterTransition()V
    .locals 1

    .line 1
    sget v0, Lv/g;->b:I

    .line 2
    .line 3
    invoke-static {p0}, Lv/b;->a(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lv/g;->b:I

    .line 2
    .line 3
    invoke-static {p0}, Lv/b;->b(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 1

    .line 1
    sget v0, Lv/g;->b:I

    .line 2
    .line 3
    invoke-static {p0}, Lv/b;->e(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
