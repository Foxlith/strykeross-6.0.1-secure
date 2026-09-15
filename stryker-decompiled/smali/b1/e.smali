.class public final Lb1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb1/f;

.field public final b:Lb1/d;

.field public c:Z


# direct methods
.method public constructor <init>(Lb1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/e;->a:Lb1/f;

    .line 5
    .line 6
    new-instance p1, Lb1/d;

    .line 7
    .line 8
    invoke-direct {p1}, Lb1/d;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lb1/e;->b:Lb1/d;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/e;->a:Lb1/f;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "owner.lifecycle"

    .line 8
    .line 9
    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Landroidx/lifecycle/v;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 16
    .line 17
    sget-object v3, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Lb1/f;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lb1/e;->b:Lb1/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-boolean v2, v0, Lb1/d;->b:Z

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    xor-int/2addr v2, v3

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Lb1/a;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lb1/a;-><init>(Lb1/d;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 46
    .line 47
    .line 48
    iput-boolean v3, v0, Lb1/d;->b:Z

    .line 49
    .line 50
    iput-boolean v3, p0, Lb1/e;->c:Z

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v1, "SavedStateRegistry was already attached."

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb1/e;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lb1/e;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lb1/e;->a:Lb1/f;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "owner.lifecycle"

    .line 15
    .line 16
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroidx/lifecycle/v;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 22
    .line 23
    sget-object v2, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/n;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    xor-int/2addr v1, v2

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    iget-object v0, p0, Lb1/e;->b:Lb1/d;

    .line 34
    .line 35
    iget-boolean v1, v0, Lb1/d;->b:Z

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-boolean v1, v0, Lb1/d;->d:Z

    .line 40
    .line 41
    xor-int/2addr v1, v2

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput-object p1, v0, Lb1/d;->c:Landroid/os/Bundle;

    .line 55
    .line 56
    iput-boolean v2, v0, Lb1/d;->d:Z

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "SavedStateRegistry was already restored."

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v0, "You must call performAttach() before calling performRestore(Bundle)."

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "performRestore cannot be called when owner is "

    .line 86
    .line 87
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "outBundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb1/e;->b:Lb1/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lb1/d;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, v0, Lb1/d;->a:Lk/g;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lk/d;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lk/d;-><init>(Lk/g;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lk/g;->c:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v2}, Lk/d;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Lk/d;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lb1/c;

    .line 63
    .line 64
    invoke-interface {v0}, Lb1/c;->a()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
