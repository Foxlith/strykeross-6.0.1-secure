.class public final La5/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# static fields
.field public static final b:La5/c;

.field public static final c:La5/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La5/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La5/c;-><init>(I)V

    sput-object v0, La5/c;->b:La5/c;

    new-instance v0, La5/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La5/c;-><init>(I)V

    sput-object v0, La5/c;->c:La5/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La5/c;->a:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, La5/c;->a:I

    .line 2
    .line 3
    const-string v1, "element"

    .line 4
    .line 5
    const-string v2, "acc"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, La5/j;

    .line 11
    .line 12
    check-cast p2, La5/h;

    .line 13
    .line 14
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, La5/h;->getKey()La5/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, La5/j;->minusKey(La5/i;)La5/j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, La5/k;->a:La5/k;

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget-object v1, La5/f;->a:La5/f;

    .line 34
    .line 35
    invoke-interface {p1, v1}, La5/j;->get(La5/i;)La5/h;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, La5/g;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    new-instance v0, La5/d;

    .line 44
    .line 45
    invoke-direct {v0, p2, p1}, La5/d;-><init>(La5/h;La5/j;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move-object p2, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {p1, v1}, La5/j;->minusKey(La5/i;)La5/j;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    new-instance p1, La5/d;

    .line 57
    .line 58
    invoke-direct {p1, v2, p2}, La5/d;-><init>(La5/h;La5/j;)V

    .line 59
    .line 60
    .line 61
    move-object p2, p1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v0, La5/d;

    .line 64
    .line 65
    new-instance v1, La5/d;

    .line 66
    .line 67
    invoke-direct {v1, p2, p1}, La5/d;-><init>(La5/h;La5/j;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2, v1}, La5/d;-><init>(La5/h;La5/j;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :goto_1
    return-object p2

    .line 75
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 76
    .line 77
    check-cast p2, La5/h;

    .line 78
    .line 79
    invoke-static {p1, v2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, ", "

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_2
    return-object p1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
