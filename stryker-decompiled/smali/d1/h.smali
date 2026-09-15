.class public final Ld1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/d;


# direct methods
.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lt4/s;
    .locals 2

    .line 1
    const-string v0, "tokenText"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lt4/s;->b:Lt4/s;

    .line 7
    .line 8
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 9
    .line 10
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lt4/s;->c:Lt4/s;

    .line 25
    .line 26
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 27
    .line 28
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, Lt4/s;->d:Lt4/s;

    .line 42
    .line 43
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 44
    .line 45
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lt4/s;->f:Lt4/s;

    .line 59
    .line 60
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 61
    .line 62
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Lt4/s;->g:Lt4/s;

    .line 76
    .line 77
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 78
    .line 79
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    sget-object v0, Lt4/s;->h:Lt4/s;

    .line 93
    .line 94
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 95
    .line 96
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    sget-object v0, Lt4/s;->i:Lt4/s;

    .line 110
    .line 111
    iget-object v1, v0, Lt4/s;->a:Lu4/e;

    .line 112
    .line 113
    iget-object v1, v1, Lu4/e;->a:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {p0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_6
    new-instance v0, Lt4/s;

    .line 127
    .line 128
    new-instance v1, Lu4/e;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lu4/e;-><init>(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Lt4/s;-><init>(Lu4/e;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lc1/c;)Lc1/e;
    .locals 7

    .line 1
    new-instance v6, Ld1/g;

    iget-object v1, p1, Lc1/c;->a:Landroid/content/Context;

    iget-object v2, p1, Lc1/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lc1/c;->c:Landroidx/fragment/app/t0;

    iget-boolean v4, p1, Lc1/c;->d:Z

    iget-boolean v5, p1, Lc1/c;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ld1/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/t0;ZZ)V

    return-object v6
.end method
