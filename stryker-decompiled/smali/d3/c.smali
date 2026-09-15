.class public final synthetic Ld3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld3/d;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ld3/d;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ld3/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ld3/c;->b:Ld3/d;

    .line 7
    .line 8
    iput p2, p0, Ld3/c;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Ld3/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Ld3/c;->c:I

    .line 5
    .line 6
    iget-object v3, p0, Ld3/c;->b:Ld3/d;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget v0, v3, Ld3/d;->a:I

    .line 12
    .line 13
    and-int v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    not-int v2, v2

    .line 18
    and-int/2addr v0, v2

    .line 19
    iput v0, v3, Ld3/d;->a:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    or-int/2addr v0, v2

    .line 26
    iput v0, v3, Ld3/d;->a:I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object p1, v3, Ld3/d;->d:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    check-cast v0, Lk3/a;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :try_start_0
    check-cast p1, Lk3/a;

    .line 42
    .line 43
    iget v0, v3, Ld3/d;->a:I

    .line 44
    .line 45
    invoke-static {v0, v2}, Lk3/b;->a(II)Lk3/b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lk3/b;->b()[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lk3/a;->s([B)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v3, Ld3/d;->d:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lk3/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget-object v0, Lk3/b;->b:Lk3/b;

    .line 67
    .line 68
    invoke-virtual {v0}, Lk3/b;->b()[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Lk3/a;->s([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    iget p1, v3, Ld3/d;->a:I

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iput v1, v3, Ld3/d;->a:I

    .line 80
    .line 81
    iget-object p1, v3, Ld3/d;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    :goto_2
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
