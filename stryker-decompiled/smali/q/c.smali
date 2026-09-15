.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:I

.field public c:Z

.field public final d:Lq/d;

.field public final e:I

.field public f:Lq/c;

.field public g:I

.field public h:I

.field public i:Lo/j;


# direct methods
.method public constructor <init>(Lq/d;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lq/c;->a:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lq/c;->g:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lq/c;->h:I

    iput-object p1, p0, Lq/c;->d:Lq/d;

    iput p2, p0, Lq/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lq/c;I)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lq/c;->b(Lq/c;IIZ)Z

    return-void
.end method

.method public final b(Lq/c;IIZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lq/c;->j()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Lq/c;->i(Lq/c;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lq/c;->f:Lq/c;

    iget-object p4, p1, Lq/c;->a:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lq/c;->a:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Lq/c;->f:Lq/c;

    iget-object p1, p1, Lq/c;->a:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Lq/c;->g:I

    iput p3, p0, Lq/c;->h:I

    return v0
.end method

.method public final c(ILr/n;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq/c;

    iget-object v1, v1, Lq/c;->d:Lq/d;

    invoke-static {v1, p1, p3, p2}, La/c;->g(Lq/d;ILjava/util/ArrayList;Lr/n;)Lr/n;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lq/c;->b:I

    return v0
.end method

.method public final e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lq/c;->d:Lq/d;

    .line 2
    .line 3
    iget v0, v0, Lq/d;->g0:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget v0, p0, Lq/c;->h:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lq/c;->f:Lq/c;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v2, Lq/c;->d:Lq/d;

    .line 22
    .line 23
    iget v2, v2, Lq/d;->g0:I

    .line 24
    .line 25
    if-ne v2, v1, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    iget v0, p0, Lq/c;->g:I

    .line 29
    .line 30
    return v0
.end method

.method public final f()Lq/c;
    .locals 3

    .line 1
    iget v0, p0, Lq/c;->e:I

    invoke-static {v0}, Lo/i;->c(I)I

    move-result v1

    iget-object v2, p0, Lq/c;->d:Lq/d;

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    iget-object v0, v2, Lq/d;->J:Lq/c;

    return-object v0

    :pswitch_1
    iget-object v0, v2, Lq/d;->I:Lq/c;

    return-object v0

    :pswitch_2
    iget-object v0, v2, Lq/d;->L:Lq/c;

    return-object v0

    :pswitch_3
    iget-object v0, v2, Lq/d;->K:Lq/c;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lq/c;->a:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/c;

    invoke-virtual {v2}, Lq/c;->f()Lq/c;

    move-result-object v2

    invoke-virtual {v2}, Lq/c;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/c;->f:Lq/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i(Lq/c;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x6

    .line 6
    iget v2, p0, Lq/c;->e:I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p1, Lq/c;->d:Lq/d;

    .line 10
    .line 11
    iget p1, p1, Lq/c;->e:I

    .line 12
    .line 13
    if-ne p1, v2, :cond_3

    .line 14
    .line 15
    if-ne v2, v1, :cond_2

    .line 16
    .line 17
    iget-boolean p1, v4, Lq/d;->E:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lq/c;->d:Lq/d;

    .line 22
    .line 23
    iget-boolean p1, p1, Lq/d;->E:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    return v3

    .line 29
    :cond_3
    invoke-static {v2}, Lo/i;->c(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    const/16 v7, 0x9

    .line 36
    .line 37
    const/4 v8, 0x4

    .line 38
    const/4 v9, 0x2

    .line 39
    packed-switch v5, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/AssertionError;

    .line 43
    .line 44
    invoke-static {v2}, Lorg/bouncycastle/math/ec/a;->o(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :pswitch_0
    if-eq p1, v1, :cond_4

    .line 53
    .line 54
    if-eq p1, v6, :cond_4

    .line 55
    .line 56
    if-eq p1, v7, :cond_4

    .line 57
    .line 58
    move v0, v3

    .line 59
    :cond_4
    return v0

    .line 60
    :pswitch_1
    if-eq p1, v9, :cond_6

    .line 61
    .line 62
    if-ne p1, v8, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return v3

    .line 66
    :cond_6
    :goto_0
    return v0

    .line 67
    :pswitch_2
    const/4 v1, 0x3

    .line 68
    if-eq p1, v1, :cond_8

    .line 69
    .line 70
    const/4 v1, 0x5

    .line 71
    if-ne p1, v1, :cond_7

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_7
    move v1, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_8
    :goto_1
    move v1, v3

    .line 77
    :goto_2
    instance-of v2, v4, Lq/h;

    .line 78
    .line 79
    if-eqz v2, :cond_b

    .line 80
    .line 81
    if-nez v1, :cond_9

    .line 82
    .line 83
    if-ne p1, v7, :cond_a

    .line 84
    .line 85
    :cond_9
    move v0, v3

    .line 86
    :cond_a
    move v1, v0

    .line 87
    :cond_b
    return v1

    .line 88
    :pswitch_3
    if-eq p1, v9, :cond_d

    .line 89
    .line 90
    if-ne p1, v8, :cond_c

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_c
    move v1, v0

    .line 94
    goto :goto_4

    .line 95
    :cond_d
    :goto_3
    move v1, v3

    .line 96
    :goto_4
    instance-of v2, v4, Lq/h;

    .line 97
    .line 98
    if-eqz v2, :cond_10

    .line 99
    .line 100
    if-nez v1, :cond_e

    .line 101
    .line 102
    if-ne p1, v6, :cond_f

    .line 103
    .line 104
    :cond_e
    move v0, v3

    .line 105
    :cond_f
    move v1, v0

    .line 106
    :cond_10
    return v1

    .line 107
    :pswitch_4
    return v0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/c;->f:Lq/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq/c;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lq/c;->f:Lq/c;

    iget-object v0, v0, Lq/c;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lq/c;->f:Lq/c;

    iput-object v1, v0, Lq/c;->a:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lq/c;->a:Ljava/util/HashSet;

    iput-object v1, p0, Lq/c;->f:Lq/c;

    const/4 v0, 0x0

    iput v0, p0, Lq/c;->g:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lq/c;->h:I

    iput-boolean v0, p0, Lq/c;->c:Z

    iput v0, p0, Lq/c;->b:I

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/c;->i:Lo/j;

    if-nez v0, :cond_0

    new-instance v0, Lo/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/j;-><init>(I)V

    iput-object v0, p0, Lq/c;->i:Lo/j;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/j;->e()V

    :goto_0
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq/c;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq/c;->c:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lq/c;->d:Lq/d;

    .line 7
    .line 8
    iget-object v1, v1, Lq/d;->h0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lq/c;->e:I

    .line 19
    .line 20
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->o(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
