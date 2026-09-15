.class public abstract Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lk/g;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:Landroidx/activity/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/z;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->a:Ljava/lang/Object;

    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/z;->b:Lk/g;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/z;->c:I

    sget-object v0, Landroidx/lifecycle/z;->k:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/z;->f:Ljava/lang/Object;

    new-instance v1, Landroidx/activity/d;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/lifecycle/z;->j:Landroidx/activity/d;

    iput-object v0, p0, Landroidx/lifecycle/z;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/z;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lj/a;->L()Lj/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lj/a;->c:Lj/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj/c;->M()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Cannot invoke "

    .line 17
    .line 18
    const-string v2, " on a background thread"

    .line 19
    .line 20
    invoke-static {v1, p0, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/y;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroidx/lifecycle/y;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/y;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Landroidx/lifecycle/y;->b(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget v0, p1, Landroidx/lifecycle/y;->c:I

    .line 18
    .line 19
    iget v1, p0, Landroidx/lifecycle/z;->g:I

    .line 20
    .line 21
    if-lt v0, v1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iput v1, p1, Landroidx/lifecycle/y;->c:I

    .line 25
    .line 26
    iget-object p1, p1, Landroidx/lifecycle/y;->a:Landroidx/lifecycle/c0;

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/lifecycle/z;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroidx/fragment/app/n;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast v0, Landroidx/lifecycle/t;

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$200(Landroidx/fragment/app/DialogFragment;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const-string v1, "FragmentManager"

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {p1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "DialogFragment can not be attached to a container view"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_5
    :goto_0
    return-void
.end method

.method public final c(Landroidx/lifecycle/y;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/z;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/lifecycle/z;->i:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/z;->h:Z

    .line 10
    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/z;->i:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/lifecycle/z;->b(Landroidx/lifecycle/y;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/z;->b:Lk/g;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lk/d;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lk/d;-><init>(Lk/g;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lk/g;->c:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-virtual {v2}, Lk/d;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v2}, Lk/d;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/lifecycle/y;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroidx/lifecycle/z;->b(Landroidx/lifecycle/y;)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Landroidx/lifecycle/z;->i:Z

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/z;->i:Z

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iput-boolean v0, p0, Landroidx/lifecycle/z;->h:Z

    .line 68
    .line 69
    return-void
.end method

.method public final d(Landroidx/lifecycle/c0;)V
    .locals 4

    .line 1
    const-string v0, "observeForever"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/lifecycle/z;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/x;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/z;Landroidx/lifecycle/c0;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/lifecycle/z;->b:Lk/g;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lk/g;->a(Ljava/lang/Object;)Lk/c;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object p1, v2, Lk/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance v2, Lk/c;

    .line 24
    .line 25
    invoke-direct {v2, p1, v0}, Lk/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget p1, v1, Lk/g;->d:I

    .line 29
    .line 30
    add-int/2addr p1, v3

    .line 31
    iput p1, v1, Lk/g;->d:I

    .line 32
    .line 33
    iget-object p1, v1, Lk/g;->b:Lk/c;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v2, v1, Lk/g;->a:Lk/c;

    .line 38
    .line 39
    :goto_0
    iput-object v2, v1, Lk/g;->b:Lk/c;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput-object v2, p1, Lk/c;->c:Lk/c;

    .line 43
    .line 44
    iput-object p1, v2, Lk/c;->d:Lk/c;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    const/4 p1, 0x0

    .line 48
    :goto_2
    check-cast p1, Landroidx/lifecycle/y;

    .line 49
    .line 50
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/lifecycle/y;->b(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v0, "Cannot add the same observer with different lifecycles"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method
