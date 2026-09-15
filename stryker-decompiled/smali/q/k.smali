.class public abstract Lq/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lq/k;->a:[Z

    return-void
.end method

.method public static a(Lq/e;Lo/d;Lq/d;)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Lq/d;->o:I

    .line 3
    .line 4
    iput v0, p2, Lq/d;->p:I

    .line 5
    .line 6
    iget-object v0, p0, Lq/d;->p0:[I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    iget-object v2, p2, Lq/d;->p0:[I

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x4

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    aget v0, v2, v1

    .line 18
    .line 19
    if-ne v0, v4, :cond_0

    .line 20
    .line 21
    iget-object v0, p2, Lq/d;->I:Lq/c;

    .line 22
    .line 23
    iget v1, v0, Lq/c;->g:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lq/d;->r()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-object v6, p2, Lq/d;->K:Lq/c;

    .line 30
    .line 31
    iget v7, v6, Lq/c;->g:I

    .line 32
    .line 33
    sub-int/2addr v5, v7

    .line 34
    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iput-object v7, v0, Lq/c;->i:Lo/j;

    .line 39
    .line 40
    invoke-virtual {p1, v6}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iput-object v7, v6, Lq/c;->i:Lo/j;

    .line 45
    .line 46
    iget-object v0, v0, Lq/c;->i:Lo/j;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Lo/d;->d(Lo/j;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v6, Lq/c;->i:Lo/j;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v5}, Lo/d;->d(Lo/j;I)V

    .line 54
    .line 55
    .line 56
    iput v3, p2, Lq/d;->o:I

    .line 57
    .line 58
    iput v1, p2, Lq/d;->Y:I

    .line 59
    .line 60
    sub-int/2addr v5, v1

    .line 61
    iput v5, p2, Lq/d;->U:I

    .line 62
    .line 63
    iget v0, p2, Lq/d;->b0:I

    .line 64
    .line 65
    if-ge v5, v0, :cond_0

    .line 66
    .line 67
    iput v0, p2, Lq/d;->U:I

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lq/d;->p0:[I

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    aget v0, v0, v1

    .line 73
    .line 74
    if-eq v0, v3, :cond_3

    .line 75
    .line 76
    aget v0, v2, v1

    .line 77
    .line 78
    if-ne v0, v4, :cond_3

    .line 79
    .line 80
    iget-object v0, p2, Lq/d;->J:Lq/c;

    .line 81
    .line 82
    iget v1, v0, Lq/c;->g:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lq/d;->l()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    iget-object v2, p2, Lq/d;->L:Lq/c;

    .line 89
    .line 90
    iget v4, v2, Lq/c;->g:I

    .line 91
    .line 92
    sub-int/2addr p0, v4

    .line 93
    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iput-object v4, v0, Lq/c;->i:Lo/j;

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iput-object v4, v2, Lq/c;->i:Lo/j;

    .line 104
    .line 105
    iget-object v0, v0, Lq/c;->i:Lo/j;

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Lo/d;->d(Lo/j;I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v2, Lq/c;->i:Lo/j;

    .line 111
    .line 112
    invoke-virtual {p1, v0, p0}, Lo/d;->d(Lo/j;I)V

    .line 113
    .line 114
    .line 115
    iget v0, p2, Lq/d;->a0:I

    .line 116
    .line 117
    if-gtz v0, :cond_1

    .line 118
    .line 119
    iget v0, p2, Lq/d;->g0:I

    .line 120
    .line 121
    const/16 v2, 0x8

    .line 122
    .line 123
    if-ne v0, v2, :cond_2

    .line 124
    .line 125
    :cond_1
    iget-object v0, p2, Lq/d;->M:Lq/c;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lo/d;->k(Ljava/lang/Object;)Lo/j;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, v0, Lq/c;->i:Lo/j;

    .line 132
    .line 133
    iget v0, p2, Lq/d;->a0:I

    .line 134
    .line 135
    add-int/2addr v0, v1

    .line 136
    invoke-virtual {p1, v2, v0}, Lo/d;->d(Lo/j;I)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iput v3, p2, Lq/d;->p:I

    .line 140
    .line 141
    iput v1, p2, Lq/d;->Z:I

    .line 142
    .line 143
    sub-int/2addr p0, v1

    .line 144
    iput p0, p2, Lq/d;->V:I

    .line 145
    .line 146
    iget p1, p2, Lq/d;->c0:I

    .line 147
    .line 148
    if-ge p0, p1, :cond_3

    .line 149
    .line 150
    iput p1, p2, Lq/d;->V:I

    .line 151
    .line 152
    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
