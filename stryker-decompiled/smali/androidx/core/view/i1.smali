.class public final Landroidx/core/view/i1;
.super Lc5/h;
.source "SourceFile"

# interfaces
.implements Lj5/p;


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/view/View;

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;La5/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/i1;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lc5/h;-><init>(La5/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La5/e;)La5/e;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/i1;

    iget-object v1, p0, Landroidx/core/view/i1;->g:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p2}, Landroidx/core/view/i1;-><init>(Landroid/view/ViewGroup;La5/e;)V

    iput-object p1, v0, Landroidx/core/view/i1;->f:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/i1;->create(Ljava/lang/Object;La5/e;)La5/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/core/view/i1;

    .line 10
    .line 11
    sget-object p2, Lw4/h;->a:Lw4/h;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/core/view/i1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lb5/a;->a:Lb5/a;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/view/i1;->e:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Landroidx/core/view/i1;->d:I

    .line 14
    .line 15
    iget v4, p0, Landroidx/core/view/i1;->c:I

    .line 16
    .line 17
    iget-object v5, p0, Landroidx/core/view/i1;->a:Landroid/view/ViewGroup;

    .line 18
    .line 19
    iget-object v6, p0, Landroidx/core/view/i1;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, Lp5/i;

    .line 22
    .line 23
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object p1, p0

    .line 27
    move-object v8, v0

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget v1, p0, Landroidx/core/view/i1;->d:I

    .line 39
    .line 40
    iget v4, p0, Landroidx/core/view/i1;->c:I

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/core/view/i1;->b:Landroid/view/View;

    .line 43
    .line 44
    iget-object v6, p0, Landroidx/core/view/i1;->a:Landroid/view/ViewGroup;

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/core/view/i1;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v7, Lp5/i;

    .line 49
    .line 50
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object p1, p0

    .line 54
    move-object v8, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p1}, Lv1/f;->W(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/core/view/i1;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lp5/i;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/core/view/i1;->g:Landroid/view/ViewGroup;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v6, p0

    .line 71
    move-object v7, v0

    .line 72
    :goto_0
    if-ge v5, v4, :cond_6

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const-string v9, "getChildAt(index)"

    .line 79
    .line 80
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, v6, Landroidx/core/view/i1;->f:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v1, v6, Landroidx/core/view/i1;->a:Landroid/view/ViewGroup;

    .line 86
    .line 87
    iput-object v8, v6, Landroidx/core/view/i1;->b:Landroid/view/View;

    .line 88
    .line 89
    iput v5, v6, Landroidx/core/view/i1;->c:I

    .line 90
    .line 91
    iput v4, v6, Landroidx/core/view/i1;->d:I

    .line 92
    .line 93
    iput v3, v6, Landroidx/core/view/i1;->e:I

    .line 94
    .line 95
    invoke-virtual {p1, v8, v6}, Lp5/i;->a(Ljava/lang/Object;La5/e;)V

    .line 96
    .line 97
    .line 98
    if-ne v0, v7, :cond_3

    .line 99
    .line 100
    return-object v7

    .line 101
    :cond_3
    move-object v11, v7

    .line 102
    move-object v7, p1

    .line 103
    move-object p1, v6

    .line 104
    move-object v6, v1

    .line 105
    move v1, v4

    .line 106
    move v4, v5

    .line 107
    move-object v5, v8

    .line 108
    move-object v8, v11

    .line 109
    :goto_1
    instance-of v9, v5, Landroid/view/ViewGroup;

    .line 110
    .line 111
    if-eqz v9, :cond_5

    .line 112
    .line 113
    check-cast v5, Landroid/view/ViewGroup;

    .line 114
    .line 115
    const-string v9, "<this>"

    .line 116
    .line 117
    invoke-static {v5, v9}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v9, Landroidx/core/view/i1;

    .line 121
    .line 122
    const/4 v10, 0x0

    .line 123
    invoke-direct {v9, v5, v10}, Landroidx/core/view/i1;-><init>(Landroid/view/ViewGroup;La5/e;)V

    .line 124
    .line 125
    .line 126
    new-instance v5, Landroidx/core/view/h1;

    .line 127
    .line 128
    invoke-direct {v5, v9, v2}, Landroidx/core/view/h1;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    iput-object v7, p1, Landroidx/core/view/i1;->f:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v6, p1, Landroidx/core/view/i1;->a:Landroid/view/ViewGroup;

    .line 134
    .line 135
    iput-object v10, p1, Landroidx/core/view/i1;->b:Landroid/view/View;

    .line 136
    .line 137
    iput v4, p1, Landroidx/core/view/i1;->c:I

    .line 138
    .line 139
    iput v1, p1, Landroidx/core/view/i1;->d:I

    .line 140
    .line 141
    iput v2, p1, Landroidx/core/view/i1;->e:I

    .line 142
    .line 143
    invoke-virtual {v7, v5, p1}, Lp5/i;->b(Landroidx/core/view/h1;La5/e;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-ne v5, v8, :cond_4

    .line 148
    .line 149
    return-object v8

    .line 150
    :cond_4
    move-object v5, v6

    .line 151
    move-object v6, v7

    .line 152
    :goto_2
    move-object v7, v8

    .line 153
    move-object v11, v6

    .line 154
    move-object v6, p1

    .line 155
    move-object p1, v11

    .line 156
    move-object v12, v5

    .line 157
    move v5, v1

    .line 158
    move-object v1, v12

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    move v5, v1

    .line 161
    move-object v1, v6

    .line 162
    move-object v6, p1

    .line 163
    move-object p1, v7

    .line 164
    move-object v7, v8

    .line 165
    :goto_3
    add-int/2addr v4, v3

    .line 166
    move v11, v5

    .line 167
    move v5, v4

    .line 168
    move v4, v11

    .line 169
    goto :goto_0

    .line 170
    :cond_6
    sget-object p1, Lw4/h;->a:Lw4/h;

    .line 171
    .line 172
    return-object p1
.end method
