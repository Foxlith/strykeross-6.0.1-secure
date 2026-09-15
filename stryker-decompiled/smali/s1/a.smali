.class public final Ls1/a;
.super Ls1/b;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lt1/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls1/a;->f:I

    const-string v0, "tracker"

    .line 1
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls1/b;-><init>(Lt1/f;)V

    return-void
.end method

.method public constructor <init>(Lt1/f;I)V
    .locals 2

    iput p2, p0, Ls1/a;->f:I

    const/4 v0, 0x2

    const-string v1, "tracker"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls1/b;-><init>(Lt1/f;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls1/b;-><init>(Lt1/f;)V

    return-void

    .line 4
    :cond_1
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls1/b;-><init>(Lt1/f;)V

    return-void

    .line 5
    :cond_2
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ls1/b;-><init>(Lt1/f;)V

    return-void
.end method


# virtual methods
.method public final a(Lv1/p;)Z
    .locals 4

    .line 1
    iget v0, p0, Ls1/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "workSpec"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 14
    .line 15
    iget-boolean p1, p1, Lm1/d;->e:Z

    .line 16
    .line 17
    return p1

    .line 18
    :pswitch_0
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 22
    .line 23
    iget p1, p1, Lm1/d;->a:I

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v3, 0x1e

    .line 31
    .line 32
    if-lt v0, v3, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x6

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    :cond_1
    :goto_0
    return v1

    .line 40
    :pswitch_1
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 44
    .line 45
    iget p1, p1, Lm1/d;->a:I

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v1, v2

    .line 52
    :goto_1
    return v1

    .line 53
    :pswitch_2
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 57
    .line 58
    iget-boolean p1, p1, Lm1/d;->d:Z

    .line 59
    .line 60
    return p1

    .line 61
    :pswitch_3
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 65
    .line 66
    iget-boolean p1, p1, Lm1/d;->b:Z

    .line 67
    .line 68
    return p1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Ls1/a;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    packed-switch v0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    :pswitch_0
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1

    .line 18
    :pswitch_1
    check-cast p1, Lr1/a;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ls1/a;->e(Lr1/a;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :pswitch_2
    check-cast p1, Lr1/a;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ls1/a;->e(Lr1/a;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    packed-switch v0, :pswitch_data_2

    .line 39
    .line 40
    .line 41
    :pswitch_4
    xor-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    return p1

    .line 44
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    packed-switch v0, :pswitch_data_3

    .line 51
    .line 52
    .line 53
    :pswitch_6
    xor-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    return p1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final e(Lr1/a;)Z
    .locals 5

    .line 1
    iget v0, p0, Ls1/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "value"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p1, Lr1/a;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean p1, p1, Lr1/a;->c:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :cond_1
    :goto_0
    return v1

    .line 24
    :pswitch_0
    invoke-static {p1, v3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v3, 0x1a

    .line 30
    .line 31
    iget-boolean v4, p1, Lr1/a;->a:Z

    .line 32
    .line 33
    if-lt v0, v3, :cond_3

    .line 34
    .line 35
    if-eqz v4, :cond_4

    .line 36
    .line 37
    iget-boolean p1, p1, Lr1/a;->b:Z

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-nez v4, :cond_2

    .line 45
    .line 46
    :cond_4
    :goto_1
    return v1

    .line 47
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
