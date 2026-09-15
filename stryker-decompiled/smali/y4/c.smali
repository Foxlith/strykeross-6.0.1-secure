.class public final Ly4/c;
.super Ly4/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk5/a;


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ly4/f;I)V
    .locals 2

    .line 1
    iput p2, p0, Ly4/c;->d:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "map"

    .line 5
    .line 6
    if-eq p2, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p2, v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ly4/e;-><init>(Ly4/f;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ly4/e;-><init>(Ly4/f;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Ly4/e;-><init>(Ly4/f;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ly4/c;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Ly4/e;->a:Ly4/f;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Ly4/e;->b:I

    .line 9
    .line 10
    iget v2, v1, Ly4/f;->f:I

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    .line 14
    add-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    iput v2, p0, Ly4/e;->b:I

    .line 17
    .line 18
    iput v0, p0, Ly4/e;->c:I

    .line 19
    .line 20
    iget-object v0, v1, Ly4/f;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Ly4/e;->c:I

    .line 26
    .line 27
    aget-object v0, v0, v1

    .line 28
    .line 29
    invoke-virtual {p0}, Ly4/e;->a()V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_0
    iget v0, p0, Ly4/e;->b:I

    .line 40
    .line 41
    iget v2, v1, Ly4/f;->f:I

    .line 42
    .line 43
    if-ge v0, v2, :cond_1

    .line 44
    .line 45
    add-int/lit8 v2, v0, 0x1

    .line 46
    .line 47
    iput v2, p0, Ly4/e;->b:I

    .line 48
    .line 49
    iput v0, p0, Ly4/e;->c:I

    .line 50
    .line 51
    iget-object v1, v1, Ly4/f;->a:[Ljava/lang/Object;

    .line 52
    .line 53
    aget-object v0, v1, v0

    .line 54
    .line 55
    invoke-virtual {p0}, Ly4/e;->a()V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :pswitch_1
    iget v0, p0, Ly4/e;->b:I

    .line 66
    .line 67
    iget v2, v1, Ly4/f;->f:I

    .line 68
    .line 69
    if-ge v0, v2, :cond_2

    .line 70
    .line 71
    add-int/lit8 v2, v0, 0x1

    .line 72
    .line 73
    iput v2, p0, Ly4/e;->b:I

    .line 74
    .line 75
    iput v0, p0, Ly4/e;->c:I

    .line 76
    .line 77
    new-instance v2, Ly4/d;

    .line 78
    .line 79
    invoke-direct {v2, v1, v0}, Ly4/d;-><init>(Ly4/f;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ly4/e;->a()V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
