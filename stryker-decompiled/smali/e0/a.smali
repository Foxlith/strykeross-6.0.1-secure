.class public final Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Le0/a;->a:I

    iput-object p1, p0, Le0/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Le0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le0/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Le0/a;->a:I

    iput-object p1, p0, Le0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Le0/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Le0/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le0/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Le0/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Le0/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Le0/a;->a:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v2, Landroid/app/Activity;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast v2, Ln1/a0;

    .line 27
    .line 28
    iget-object v2, v2, Ln1/a0;->h:Ln1/p;

    .line 29
    .line 30
    check-cast v1, Ln1/t;

    .line 31
    .line 32
    check-cast v0, Lv1/t;

    .line 33
    .line 34
    invoke-virtual {v2, v1, v0}, Ln1/p;->g(Ln1/t;Lv1/t;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    :try_start_0
    check-cast v0, La2/a;

    .line 39
    .line 40
    check-cast v0, Lx1/i;

    .line 41
    .line 42
    invoke-virtual {v0}, Lx1/i;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    check-cast v2, Ln1/c;

    .line 53
    .line 54
    check-cast v1, Lv1/i;

    .line 55
    .line 56
    invoke-interface {v2, v1, v4}, Ln1/c;->b(Lv1/i;Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    :try_start_1
    check-cast v2, Ljava/util/concurrent/Callable;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_0

    .line 67
    :catch_1
    const/4 v2, 0x0

    .line 68
    :goto_0
    check-cast v1, Lg0/a;

    .line 69
    .line 70
    check-cast v0, Landroid/os/Handler;

    .line 71
    .line 72
    new-instance v3, Le0/a;

    .line 73
    .line 74
    invoke-direct {v3, p0, v1, v2, v4}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_3
    check-cast v2, Lg0/a;

    .line 82
    .line 83
    invoke-interface {v2, v1}, Lg0/a;->accept(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_4
    check-cast v2, Lf/q0;

    .line 88
    .line 89
    check-cast v1, Landroid/graphics/Typeface;

    .line 90
    .line 91
    iget-object v0, v2, Lf/q0;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Ly/o;

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ly/o;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
