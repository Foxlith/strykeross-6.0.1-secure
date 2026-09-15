.class public abstract Lq5/f;
.super Lq5/e;
.source "SourceFile"


# direct methods
.method public static k1(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Li5/a;->q(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x30

    .line 21
    .line 22
    invoke-static {v4, v5}, Li5/a;->t(II)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const v6, -0x7fffffff

    .line 27
    .line 28
    .line 29
    if-gez v5, :cond_3

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-ne v1, v5, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    const/16 v7, 0x2d

    .line 36
    .line 37
    if-ne v4, v7, :cond_2

    .line 38
    .line 39
    const/high16 v6, -0x80000000

    .line 40
    .line 41
    move v4, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/16 v7, 0x2b

    .line 44
    .line 45
    if-ne v4, v7, :cond_9

    .line 46
    .line 47
    move v4, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move v4, v3

    .line 50
    move v5, v4

    .line 51
    :goto_0
    const v7, -0x38e38e3

    .line 52
    .line 53
    .line 54
    move v8, v7

    .line 55
    :goto_1
    if-ge v5, v1, :cond_7

    .line 56
    .line 57
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-gez v9, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    if-ge v3, v8, :cond_5

    .line 69
    .line 70
    if-ne v8, v7, :cond_9

    .line 71
    .line 72
    div-int/lit8 v8, v6, 0xa

    .line 73
    .line 74
    if-ge v3, v8, :cond_5

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    mul-int/lit8 v3, v3, 0xa

    .line 78
    .line 79
    add-int v10, v6, v9

    .line 80
    .line 81
    if-ge v3, v10, :cond_6

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    sub-int/2addr v3, v9

    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_7
    if-eqz v4, :cond_8

    .line 89
    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :goto_2
    move-object v2, p0

    .line 95
    goto :goto_3

    .line 96
    :cond_8
    neg-int p0, v3

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    goto :goto_2

    .line 102
    :cond_9
    :goto_3
    return-object v2
.end method
