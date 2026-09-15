.class public final Landroidx/core/view/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/core/view/h1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/core/view/h1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/view/h1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/h1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/util/Iterator;

    .line 9
    .line 10
    return-object v1

    .line 11
    :pswitch_0
    check-cast v1, Lj5/p;

    .line 12
    .line 13
    const-string v0, "block"

    .line 14
    .line 15
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lp5/h;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    instance-of v2, v1, Lc5/a;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lc5/a;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v0}, Lc5/a;->create(Ljava/lang/Object;La5/e;)La5/e;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Lb5/b;

    .line 35
    .line 36
    invoke-direct {v2, v0, v0, v1}, Lb5/b;-><init>(Lp5/h;Lp5/h;Lj5/p;)V

    .line 37
    .line 38
    .line 39
    move-object v1, v2

    .line 40
    :goto_0
    iput-object v1, v0, Lp5/h;->d:La5/e;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_1
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_2
    check-cast v1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    const-string v0, "<this>"

    .line 53
    .line 54
    invoke-static {v1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroidx/core/view/j1;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {v0, v1, v2}, Landroidx/core/view/j1;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
