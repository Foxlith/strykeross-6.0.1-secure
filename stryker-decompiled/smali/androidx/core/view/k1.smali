.class public final Landroidx/core/view/k1;
.super Lc5/h;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;La5/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/k1;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Lc5/h;-><init>(La5/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La5/e;)La5/e;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/k1;

    iget-object v1, p0, Landroidx/core/view/k1;->c:Landroid/view/View;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/k1;-><init>(Landroid/view/View;La5/e;)V

    iput-object p1, v0, Landroidx/core/view/k1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lp5/i;

    .line 2
    .line 3
    check-cast p2, La5/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/k1;->create(Ljava/lang/Object;La5/e;)La5/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/core/view/k1;

    .line 10
    .line 11
    sget-object p2, Lw4/h;->a:Lw4/h;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/view/k1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lb5/a;->a:Lb5/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/k1;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/core/view/k1;->c:Landroid/view/View;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Landroidx/core/view/k1;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lp5/i;

    .line 30
    .line 31
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    instance-of p1, v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    .line 40
    const-string p1, "<this>"

    .line 41
    .line 42
    invoke-static {v2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Landroidx/core/view/i1;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct {p1, v2, v3}, Landroidx/core/view/i1;-><init>(Landroid/view/ViewGroup;La5/e;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Landroidx/core/view/h1;

    .line 52
    .line 53
    invoke-direct {v2, p1, v4}, Landroidx/core/view/h1;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    iput-object v3, p0, Landroidx/core/view/k1;->b:Ljava/lang/Object;

    .line 57
    .line 58
    iput v4, p0, Landroidx/core/view/k1;->a:I

    .line 59
    .line 60
    invoke-virtual {v1, v2, p0}, Lp5/i;->b(Landroidx/core/view/h1;La5/e;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    :goto_0
    sget-object p1, Lw4/h;->a:Lw4/h;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Landroidx/core/view/k1;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lp5/i;

    .line 76
    .line 77
    iput-object p1, p0, Landroidx/core/view/k1;->b:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, p0, Landroidx/core/view/k1;->a:I

    .line 80
    .line 81
    invoke-virtual {p1, v2, p0}, Lp5/i;->a(Ljava/lang/Object;La5/e;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method
