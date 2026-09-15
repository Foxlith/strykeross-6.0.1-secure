.class public final Landroidx/lifecycle/ProcessLifecycleInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf1/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lf1/a;->c(Landroid/content/Context;)Lf1/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lf1/a;->b:Ljava/util/HashSet;

    .line 6
    .line 7
    const-class v1, Landroidx/lifecycle/ProcessLifecycleInitializer;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Landroidx/lifecycle/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/Application;

    .line 30
    .line 31
    new-instance v1, Landroidx/lifecycle/p;

    .line 32
    .line 33
    invoke-direct {v1}, Landroidx/lifecycle/p;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroid/os/Handler;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Landroidx/lifecycle/g0;->e:Landroid/os/Handler;

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/lifecycle/g0;->f:Landroidx/lifecycle/v;

    .line 52
    .line 53
    sget-object v2, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/app/Application;

    .line 63
    .line 64
    new-instance v1, Landroidx/lifecycle/f0;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Landroidx/lifecycle/f0;-><init>(Landroidx/lifecycle/g0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name=\'androidx.lifecycle.ProcessLifecycleInitializer\' \n    android:value=\'androidx.startup\' /> \nunder InitializationProvider in your AndroidManifest.xml"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method
