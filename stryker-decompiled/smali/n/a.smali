.class public final Ln/a;
.super Landroidx/appcompat/view/menu/d;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ln/a;->d:I

    iput-object p1, p0, Ln/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly0/w;I)V
    .locals 0

    iput p3, p0, Ln/a;->d:I

    iput-object p1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/d;-><init>(Ly0/w;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    invoke-virtual {v1}, Ln/c;->clear()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Ln/b;

    .line 15
    .line 16
    invoke-virtual {v1}, Ln/k;->clear()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(II)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    iget-object p2, v1, Ln/c;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object p1, p2, p1

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    check-cast v1, Ln/b;

    .line 16
    .line 17
    iget-object v0, v1, Ln/k;->b:[Ljava/lang/Object;

    .line 18
    .line 19
    shl-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    add-int/2addr p1, p2

    .line 22
    aget-object p1, v0, p1

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f()Ln/b;
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "not a map"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    iget-object v0, p0, Ln/a;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ln/b;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g()I
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    iget v0, v1, Ln/c;->c:I

    .line 11
    .line 12
    return v0

    .line 13
    :pswitch_0
    check-cast v1, Ln/b;

    .line 14
    .line 15
    iget v0, v1, Ln/k;->c:I

    .line 16
    .line 17
    return v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ln/c;->indexOf(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    check-cast v1, Ln/b;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ln/k;->e(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ln/c;->indexOf(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    check-cast v1, Ln/b;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ln/k;->g(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ln/c;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Ln/b;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(I)V
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ln/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ln/c;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ln/c;->e(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Ln/b;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ln/k;->i(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public l(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ln/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string p2, "not a map"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1

    .line 14
    :pswitch_0
    iget-object v0, p0, Ln/a;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ln/b;

    .line 17
    .line 18
    shl-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iget-object v0, v0, Ln/k;->b:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v1, v0, p1

    .line 25
    .line 26
    aput-object p2, v0, p1

    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ln/a;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object v0

    :pswitch_0
    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object v0

    :pswitch_1
    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
