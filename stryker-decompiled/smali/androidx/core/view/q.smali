.class public final synthetic Landroidx/core/view/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:Landroidx/core/view/s;

.field public final synthetic b:Landroidx/lifecycle/n;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/s;Landroidx/lifecycle/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/q;->a:Landroidx/core/view/s;

    iput-object p2, p0, Landroidx/core/view/q;->b:Landroidx/lifecycle/n;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 8

    .line 1
    iget-object p1, p0, Landroidx/core/view/q;->a:Landroidx/core/view/s;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/view/q;->b:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x3

    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eq v1, v4, :cond_2

    .line 17
    .line 18
    if-eq v1, v3, :cond_1

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    move-object v1, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Landroidx/lifecycle/m;->ON_RESUME:Landroidx/lifecycle/m;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 31
    .line 32
    :goto_0
    iget-object v6, p1, Landroidx/core/view/s;->a:Ljava/lang/Runnable;

    .line 33
    .line 34
    iget-object v7, p1, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    if-ne p2, v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 46
    .line 47
    if-ne p2, v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/core/view/s;->c()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eq p1, v4, :cond_7

    .line 58
    .line 59
    if-eq p1, v3, :cond_6

    .line 60
    .line 61
    if-eq p1, v2, :cond_5

    .line 62
    .line 63
    move-object v1, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    sget-object v1, Landroidx/lifecycle/m;->ON_PAUSE:Landroidx/lifecycle/m;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 69
    .line 70
    :cond_7
    :goto_1
    if-ne p2, v1, :cond_8

    .line 71
    .line 72
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 76
    .line 77
    .line 78
    :cond_8
    :goto_2
    return-void
.end method
