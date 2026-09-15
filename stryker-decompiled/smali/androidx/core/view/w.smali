.class public final Landroidx/core/view/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/w;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(FFZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/w;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2, p3}, Lg/a;->s(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    return v1
.end method

.method public final b(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/w;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Lg/a;->t(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    return v1
.end method

.method public final c(II[I[II)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 3
    .line 4
    iget-boolean v2, v0, Landroidx/core/view/w;->d:Z

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    move/from16 v2, p5

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v10, 0x1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz v1, :cond_8

    .line 25
    .line 26
    aput v3, v1, v3

    .line 27
    .line 28
    aput v3, v1, v10

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    :goto_0
    iget-object v11, v0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v11, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 36
    .line 37
    .line 38
    aget v5, v1, v3

    .line 39
    .line 40
    aget v6, v1, v10

    .line 41
    .line 42
    move v12, v5

    .line 43
    move v13, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v12, v3

    .line 46
    move v13, v12

    .line 47
    :goto_1
    if-nez p3, :cond_5

    .line 48
    .line 49
    iget-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 50
    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    new-array v5, v5, [I

    .line 55
    .line 56
    iput-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 57
    .line 58
    :cond_4
    iget-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 59
    .line 60
    move-object v14, v5

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move-object/from16 v14, p3

    .line 63
    .line 64
    :goto_2
    aput v3, v14, v3

    .line 65
    .line 66
    aput v3, v14, v10

    .line 67
    .line 68
    iget-object v5, v0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 69
    .line 70
    move/from16 v6, p1

    .line 71
    .line 72
    move/from16 v7, p2

    .line 73
    .line 74
    move-object v8, v14

    .line 75
    move/from16 v9, p5

    .line 76
    .line 77
    invoke-static/range {v4 .. v9}, Lg/a;->u(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 78
    .line 79
    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    invoke-virtual {v11, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 83
    .line 84
    .line 85
    aget v2, v1, v3

    .line 86
    .line 87
    sub-int/2addr v2, v12

    .line 88
    aput v2, v1, v3

    .line 89
    .line 90
    aget v2, v1, v10

    .line 91
    .line 92
    sub-int/2addr v2, v13

    .line 93
    aput v2, v1, v10

    .line 94
    .line 95
    :cond_6
    aget v1, v14, v3

    .line 96
    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    aget v1, v14, v10

    .line 100
    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    :cond_7
    move v3, v10

    .line 104
    :cond_8
    :goto_3
    return v3
.end method

.method public final d(IIII[II[I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/core/view/w;->d:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_7

    .line 9
    .line 10
    move/from16 v2, p6

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    const/4 v12, 0x1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz v1, :cond_7

    .line 30
    .line 31
    aput v3, v1, v3

    .line 32
    .line 33
    aput v3, v1, v12

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    :goto_0
    iget-object v13, v0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v13, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    .line 42
    .line 43
    aget v5, v1, v3

    .line 44
    .line 45
    aget v6, v1, v12

    .line 46
    .line 47
    move v14, v5

    .line 48
    move v15, v6

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v14, v3

    .line 51
    move v15, v14

    .line 52
    :goto_1
    if-nez p7, :cond_5

    .line 53
    .line 54
    iget-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 55
    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    const/4 v5, 0x2

    .line 59
    new-array v5, v5, [I

    .line 60
    .line 61
    iput-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 62
    .line 63
    :cond_4
    iget-object v5, v0, Landroidx/core/view/w;->e:[I

    .line 64
    .line 65
    aput v3, v5, v3

    .line 66
    .line 67
    aput v3, v5, v12

    .line 68
    .line 69
    move-object v11, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object/from16 v11, p7

    .line 72
    .line 73
    :goto_2
    iget-object v5, v0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 74
    .line 75
    move/from16 v6, p1

    .line 76
    .line 77
    move/from16 v7, p2

    .line 78
    .line 79
    move/from16 v8, p3

    .line 80
    .line 81
    move/from16 v9, p4

    .line 82
    .line 83
    move/from16 v10, p6

    .line 84
    .line 85
    invoke-static/range {v4 .. v11}, Lg/a;->v(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 86
    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    invoke-virtual {v13, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 91
    .line 92
    .line 93
    aget v2, v1, v3

    .line 94
    .line 95
    sub-int/2addr v2, v14

    .line 96
    aput v2, v1, v3

    .line 97
    .line 98
    aget v2, v1, v12

    .line 99
    .line 100
    sub-int/2addr v2, v15

    .line 101
    aput v2, v1, v12

    .line 102
    .line 103
    :cond_6
    return v12

    .line 104
    :cond_7
    :goto_3
    return v3
.end method

.method public final e(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Landroidx/core/view/w;->b:Landroid/view/ViewParent;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/core/view/w;->a:Landroid/view/ViewParent;

    return-object p1
.end method

.method public final f(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(II)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Landroidx/core/view/w;->f(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/core/view/w;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v3, v0

    .line 20
    :goto_0
    if-eqz v2, :cond_8

    .line 21
    .line 22
    instance-of v4, v2, Landroidx/core/view/x;

    .line 23
    .line 24
    const-string v5, "ViewParentCompat"

    .line 25
    .line 26
    const-string v6, "ViewParent "

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    move-object v7, v2

    .line 31
    check-cast v7, Landroidx/core/view/x;

    .line 32
    .line 33
    invoke-interface {v7, v3, v0, p1, p2}, Landroidx/core/view/x;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-nez p2, :cond_6

    .line 39
    .line 40
    :try_start_0
    invoke-static {v2, v3, v0, p1}, Landroidx/core/view/l1;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    .line 41
    .line 42
    .line 43
    move-result v7
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_1
    if-eqz v7, :cond_6

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    if-eq p2, v1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iput-object v2, p0, Landroidx/core/view/w;->b:Landroid/view/ViewParent;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    iput-object v2, p0, Landroidx/core/view/w;->a:Landroid/view/ViewParent;

    .line 55
    .line 56
    :goto_2
    if-eqz v4, :cond_4

    .line 57
    .line 58
    check-cast v2, Landroidx/core/view/x;

    .line 59
    .line 60
    invoke-interface {v2, v3, v0, p1, p2}, Landroidx/core/view/x;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-nez p2, :cond_5

    .line 65
    .line 66
    :try_start_1
    invoke-static {v2, v3, v0, p1}, Landroidx/core/view/l1;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " does not implement interface method onNestedScrollAccepted"

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_3
    return v1

    .line 92
    :catch_1
    move-exception v4

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v6, " does not implement interface method onStartNestedScroll"

    .line 102
    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :cond_6
    instance-of v4, v2, Landroid/view/View;

    .line 114
    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    move-object v3, v2

    .line 118
    check-cast v3, Landroid/view/View;

    .line 119
    .line 120
    :cond_7
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_0

    .line 125
    :cond_8
    const/4 p1, 0x0

    .line 126
    return p1
.end method

.method public final h(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/core/view/w;->e(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/core/view/x;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/core/view/w;->c:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/core/view/x;

    .line 14
    .line 15
    invoke-interface {v0, v2, p1}, Landroidx/core/view/x;->onStopNestedScroll(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-static {v0, v2}, Landroidx/core/view/l1;->g(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "ViewParent "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " does not implement interface method onStopNestedScroll"

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "ViewParentCompat"

    .line 46
    .line 47
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    if-eq p1, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iput-object v0, p0, Landroidx/core/view/w;->b:Landroid/view/ViewParent;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iput-object v0, p0, Landroidx/core/view/w;->a:Landroid/view/ViewParent;

    .line 61
    .line 62
    :cond_4
    :goto_1
    return-void
.end method
