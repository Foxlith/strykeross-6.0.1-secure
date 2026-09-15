.class public Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo/j;

.field public b:F

.field public final c:Ljava/util/ArrayList;

.field public final d:Lo/b;

.field public e:Z


# direct methods
.method public constructor <init>(Lv1/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/c;->a:Lo/j;

    const/4 v0, 0x0

    iput v0, p0, Lo/c;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/c;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/c;->e:Z

    new-instance v0, Lo/a;

    invoke-direct {v0, p0, p1}, Lo/a;-><init>(Lo/c;Lv1/m;)V

    iput-object v0, p0, Lo/c;->d:Lo/b;

    return-void
.end method


# virtual methods
.method public final a(Lo/d;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-virtual {p1, p2}, Lo/d;->j(I)Lo/j;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lo/b;->c(Lo/j;F)V

    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-virtual {p1, p2}, Lo/d;->j(I)Lo/j;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Lo/b;->c(Lo/j;F)V

    return-void
.end method

.method public final b(Lo/j;Lo/j;Lo/j;I)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p4, :cond_2

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float p4, p4

    iput p4, p0, Lo/c;->b:F

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lo/c;->d:Lo/b;

    invoke-interface {p4, p1, v0}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p2, v1}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p3, v1}, Lo/b;->c(Lo/j;F)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p4, p0, Lo/c;->d:Lo/b;

    invoke-interface {p4, p1, v1}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p2, v0}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p3, v0}, Lo/b;->c(Lo/j;F)V

    :goto_2
    return-void
.end method

.method public final c(Lo/j;Lo/j;Lo/j;I)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p4, :cond_2

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float p4, p4

    iput p4, p0, Lo/c;->b:F

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lo/c;->d:Lo/b;

    invoke-interface {p4, p1, v0}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p2, v1}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p3, v0}, Lo/b;->c(Lo/j;F)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p4, p0, Lo/c;->d:Lo/b;

    invoke-interface {p4, p1, v1}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p2, v0}, Lo/b;->c(Lo/j;F)V

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, p3, v1}, Lo/b;->c(Lo/j;F)V

    :goto_2
    return-void
.end method

.method public d([Z)Lo/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/c;->f([ZLo/j;)Lo/j;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/c;->a:Lo/j;

    if-nez v0, :cond_0

    iget v0, p0, Lo/c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-interface {v0}, Lo/b;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f([ZLo/j;)Lo/j;
    .locals 9

    .line 1
    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-interface {v0}, Lo/b;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lo/c;->d:Lo/b;

    invoke-interface {v5, v3}, Lo/b;->a(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    iget-object v6, p0, Lo/c;->d:Lo/b;

    invoke-interface {v6, v3}, Lo/b;->h(I)Lo/j;

    move-result-object v6

    if-eqz p1, :cond_0

    iget v7, v6, Lo/j;->b:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    iget v7, v6, Lo/j;->l:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final g(Lo/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/c;->a:Lo/j;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/c;->d:Lo/b;

    invoke-interface {v2, v0, v1}, Lo/b;->c(Lo/j;F)V

    iget-object v0, p0, Lo/c;->a:Lo/j;

    const/4 v2, -0x1

    iput v2, v0, Lo/j;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo/c;->a:Lo/j;

    :cond_0
    iget-object v0, p0, Lo/c;->d:Lo/b;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lo/b;->j(Lo/j;Z)F

    move-result v0

    mul-float/2addr v0, v1

    iput-object p1, p0, Lo/c;->a:Lo/j;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lo/c;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lo/c;->b:F

    iget-object p1, p0, Lo/c;->d:Lo/b;

    invoke-interface {p1, v0}, Lo/b;->i(F)V

    return-void
.end method

.method public final h(Lo/d;Lo/j;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lo/j;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-interface {v0, p2}, Lo/b;->g(Lo/j;)F

    move-result v0

    iget v1, p0, Lo/c;->b:F

    iget v2, p2, Lo/j;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lo/c;->b:F

    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-interface {v0, p2, p3}, Lo/b;->j(Lo/j;Z)F

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0}, Lo/j;->d(Lo/c;)V

    :cond_1
    iget-object p2, p0, Lo/c;->d:Lo/b;

    invoke-interface {p2}, Lo/b;->d()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lo/c;->e:Z

    iput-boolean p2, p1, Lo/d;->a:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lo/d;Lo/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/c;->d:Lo/b;

    invoke-interface {v0, p2, p3}, Lo/b;->f(Lo/c;Z)F

    move-result v0

    iget v1, p0, Lo/c;->b:F

    iget v2, p2, Lo/c;->b:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lo/c;->b:F

    if-eqz p3, :cond_0

    iget-object p2, p2, Lo/c;->a:Lo/j;

    invoke-virtual {p2, p0}, Lo/j;->d(Lo/c;)V

    :cond_0
    iget-object p2, p0, Lo/c;->a:Lo/j;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/c;->d:Lo/b;

    invoke-interface {p2}, Lo/b;->d()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lo/c;->e:Z

    iput-boolean p2, p1, Lo/d;->a:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lo/c;->a:Lo/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lo/c;->a:Lo/j;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, " = "

    .line 25
    .line 26
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lo/c;->b:F

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    cmpl-float v1, v1, v2

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lo/c;->b:F

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v1, v4

    .line 55
    :goto_1
    iget-object v5, p0, Lo/c;->d:Lo/b;

    .line 56
    .line 57
    invoke-interface {v5}, Lo/b;->d()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_2
    if-ge v4, v5, :cond_8

    .line 62
    .line 63
    iget-object v6, p0, Lo/c;->d:Lo/b;

    .line 64
    .line 65
    invoke-interface {v6, v4}, Lo/b;->h(I)Lo/j;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_2

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_2
    iget-object v7, p0, Lo/c;->d:Lo/b;

    .line 73
    .line 74
    invoke-interface {v7, v4}, Lo/b;->a(I)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    cmpl-float v8, v7, v2

    .line 79
    .line 80
    if-nez v8, :cond_3

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_3
    invoke-virtual {v6}, Lo/j;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/high16 v9, -0x40800000    # -1.0f

    .line 88
    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    cmpg-float v1, v7, v2

    .line 92
    .line 93
    if-gez v1, :cond_6

    .line 94
    .line 95
    const-string v1, "- "

    .line 96
    .line 97
    :goto_3
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    mul-float/2addr v7, v9

    .line 102
    goto :goto_4

    .line 103
    :cond_4
    if-lez v8, :cond_5

    .line 104
    .line 105
    const-string v1, " + "

    .line 106
    .line 107
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    const-string v1, " - "

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    .line 117
    cmpl-float v1, v7, v1

    .line 118
    .line 119
    if-nez v1, :cond_7

    .line 120
    .line 121
    invoke-static {v0, v6}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_5

    .line 126
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, " "

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_5
    move v1, v3

    .line 150
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_8
    if-nez v1, :cond_9

    .line 154
    .line 155
    const-string v1, "0.0"

    .line 156
    .line 157
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :cond_9
    return-object v0
.end method
