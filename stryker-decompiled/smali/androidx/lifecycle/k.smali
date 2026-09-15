.class public abstract Landroidx/lifecycle/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/t0;

.field public static final b:Landroidx/lifecycle/t0;

.field public static final c:Landroidx/lifecycle/t0;

.field public static d:J

.field public static e:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/t0;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/t0;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/t0;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/t0;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/t0;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public static b(Landroidx/lifecycle/s0;Lb1/d;Landroidx/lifecycle/o;)V
    .locals 2

    .line 1
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/s0;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Landroidx/lifecycle/s0;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_0
    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->b:Z

    .line 29
    .line 30
    invoke-virtual {p2, p0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Landroidx/lifecycle/k0;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/lifecycle/k0;->e:Landroidx/lifecycle/j0;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Landroidx/lifecycle/k;->l(Landroidx/lifecycle/o;Lb1/d;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "Already attached to lifecycleOwner"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    :goto_1
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public static c(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->i()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;ZZ)I
    .locals 4

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p6

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e0;->h()I

    move-result p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static e(Landroidx/recyclerview/widget/l1;Landroidx/recyclerview/widget/e0;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/w0;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/w0;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/e0;->b(Landroid/view/View;)I

    move-result p5

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/w0;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/l1;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Lu0/d;)Landroidx/lifecycle/k0;
    .locals 7

    .line 1
    sget-object v0, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/t0;

    .line 2
    .line 3
    iget-object p0, p0, Lu0/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lb1/f;

    .line 10
    .line 11
    if-eqz v0, :cond_9

    .line 12
    .line 13
    sget-object v1, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/t0;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/y0;

    .line 20
    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    sget-object v2, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/t0;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/os/Bundle;

    .line 30
    .line 31
    sget-object v3, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p0, :cond_7

    .line 40
    .line 41
    invoke-interface {v0}, Lb1/f;->getSavedStateRegistry()Lb1/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lb1/d;->b()Lb1/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    instance-of v3, v0, Landroidx/lifecycle/n0;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    check-cast v0, Landroidx/lifecycle/n0;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v0, v4

    .line 58
    :goto_0
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/lifecycle/k;->h(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v3, v1, Landroidx/lifecycle/o0;->d:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroidx/lifecycle/k0;

    .line 71
    .line 72
    if-nez v3, :cond_5

    .line 73
    .line 74
    sget-object v3, Landroidx/lifecycle/k0;->f:[Ljava/lang/Class;

    .line 75
    .line 76
    iget-boolean v3, v0, Landroidx/lifecycle/n0;->b:Z

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    iget-object v3, v0, Landroidx/lifecycle/n0;->a:Lb1/d;

    .line 82
    .line 83
    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 84
    .line 85
    invoke-virtual {v3, v6}, Lb1/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, v0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 90
    .line 91
    iput-boolean v5, v0, Landroidx/lifecycle/n0;->b:Z

    .line 92
    .line 93
    iget-object v3, v0, Landroidx/lifecycle/n0;->d:Lw4/f;

    .line 94
    .line 95
    invoke-virtual {v3}, Lw4/f;->a()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroidx/lifecycle/o0;

    .line 100
    .line 101
    :cond_1
    iget-object v3, v0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 102
    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move-object v3, v4

    .line 111
    :goto_1
    iget-object v6, v0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 112
    .line 113
    if-eqz v6, :cond_3

    .line 114
    .line 115
    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v6, v0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 119
    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    invoke-virtual {v6}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-ne v6, v5, :cond_4

    .line 127
    .line 128
    iput-object v4, v0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 129
    .line 130
    :cond_4
    invoke-static {v3, v2}, Ld/d;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/k0;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v0, v1, Landroidx/lifecycle/o0;->d:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_5
    return-object v3

    .line 140
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    .line 143
    .line 144
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    .line 159
    .line 160
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    .line 167
    .line 168
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0
.end method

.method public static final g(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 13

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "`"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x60

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x19

    .line 43
    .line 44
    const/4 v3, -0x1

    .line 45
    if-le v0, v2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v2, "columnNames"

    .line 60
    .line 61
    invoke-static {v0, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "."

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    array-length v5, v0

    .line 86
    const/4 v6, 0x0

    .line 87
    move v7, v6

    .line 88
    move v8, v7

    .line 89
    :goto_0
    if-ge v7, v5, :cond_6

    .line 90
    .line 91
    aget-object v9, v0, v7

    .line 92
    .line 93
    add-int/lit8 v10, v8, 0x1

    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    add-int/lit8 v12, v12, 0x2

    .line 104
    .line 105
    if-lt v11, v12, :cond_5

    .line 106
    .line 107
    invoke-static {v9, v4, v6}, Lq5/h;->o1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_4

    .line 112
    .line 113
    :goto_1
    move v3, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-ne v11, v1, :cond_5

    .line 120
    .line 121
    invoke-static {v9, v2, v6}, Lq5/h;->o1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-eqz v9, :cond_5

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    move v8, v10

    .line 131
    goto :goto_0

    .line 132
    :cond_6
    :goto_2
    move v0, v3

    .line 133
    :goto_3
    if-ltz v0, :cond_7

    .line 134
    .line 135
    return v0

    .line 136
    :cond_7
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string v0, "c.columnNames"

    .line 141
    .line 142
    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    const/16 v1, 0x3f

    .line 147
    .line 148
    invoke-static {p0, v0, v1}, Lg5/i;->m0([Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_4

    .line 153
    :catch_0
    const-string p0, "unknown"

    .line 154
    .line 155
    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string v1, "column \'"

    .line 158
    .line 159
    const-string v2, "\' does not exist. Available columns: "

    .line 160
    .line 161
    invoke-static {v1, p1, v2, p0}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0
.end method

.method public static final h(Landroidx/lifecycle/y0;)Landroidx/lifecycle/o0;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf/q0;

    .line 7
    .line 8
    const/16 v1, 0x16

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lf/q0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-class v1, Landroidx/lifecycle/o0;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    .line 23
    new-instance v4, Lu0/e;

    .line 24
    .line 25
    invoke-interface {v2}, Lkotlin/jvm/internal/c;->a()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 30
    .line 31
    invoke-static {v2, v5}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v2}, Lu0/e;-><init>(Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v2, Lu0/c;

    .line 41
    .line 42
    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    new-array v3, v3, [Lu0/e;

    .line 48
    .line 49
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    check-cast v0, [Lu0/e;

    .line 56
    .line 57
    array-length v3, v0

    .line 58
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, [Lu0/e;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lu0/c;-><init>([Lu0/e;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lv1/t;

    .line 68
    .line 69
    invoke-direct {v0, p0, v2}, Lv1/t;-><init>(Landroidx/lifecycle/y0;Lu0/c;)V

    .line 70
    .line 71
    .line 72
    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 73
    .line 74
    invoke-virtual {v0, v1, p0}, Lv1/t;->j(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroidx/lifecycle/o0;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 82
    .line 83
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 84
    .line 85
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public static i()Z
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Landroidx/lifecycle/k;->e:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/material/textfield/h;->l()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return v0

    .line 10
    :catch_0
    :cond_0
    const-class v0, Landroid/os/Trace;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_1
    sget-object v2, Landroidx/lifecycle/k;->e:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const-string v2, "TRACE_TAG_APP"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    sput-wide v5, Landroidx/lifecycle/k;->d:J

    .line 30
    .line 31
    const-string v2, "isTagEnabled"

    .line 32
    .line 33
    new-array v5, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v6, v5, v1

    .line 38
    .line 39
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Landroidx/lifecycle/k;->e:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Landroidx/lifecycle/k;->e:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    new-array v2, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    sget-wide v5, Landroidx/lifecycle/k;->d:J

    .line 53
    .line 54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    aput-object v3, v2, v1

    .line 59
    .line 60
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    instance-of v2, v0, Ljava/lang/reflect/InvocationTargetException;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    check-cast v0, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    throw v0

    .line 86
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_3
    :goto_2
    return v1
.end method

.method public static final j(Ly0/w;Ly0/y;)Landroid/database/Cursor;
    .locals 1

    .line 1
    const-string v0, "db"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly0/w;->m(Lc1/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public static l(Landroidx/lifecycle/o;Lb1/d;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/lifecycle/v;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/n;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/o;Lb1/d;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lb1/d;->d()V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method public static final m(Ln1/p;Landroidx/work/impl/WorkDatabase;Lm1/b;Ljava/util/List;Lv1/p;Ljava/util/Set;)V
    .locals 9

    .line 1
    iget-object v5, p4, Lv1/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, v5}, Lv1/r;->h(Ljava/lang/String;)Lv1/p;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_6

    .line 12
    .line 13
    iget v0, v3, Lv1/p;->b:I

    .line 14
    .line 15
    invoke-static {v0}, Ll1/e;->a(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v3}, Lv1/p;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p4}, Lv1/p;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    xor-int/2addr v0, v1

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Ln1/p;->d(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ln1/r;

    .line 54
    .line 55
    invoke-interface {v1, v5}, Ln1/r;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v8, Ln1/c0;

    .line 60
    .line 61
    move-object v0, v8

    .line 62
    move-object v1, p1

    .line 63
    move-object v2, p4

    .line 64
    move-object v4, p3

    .line 65
    move-object v6, p5

    .line 66
    move v7, p0

    .line 67
    invoke-direct/range {v0 .. v7}, Ln1/c0;-><init>(Landroidx/work/impl/WorkDatabase;Lv1/p;Lv1/p;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ly0/w;->c()V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-virtual {v8}, Ln1/c0;->run()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ly0/w;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ly0/w;->k()V

    .line 80
    .line 81
    .line 82
    if-nez p0, :cond_2

    .line 83
    .line 84
    invoke-static {p2, p1, p3}, Ln1/s;->a(Lm1/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-virtual {p1}, Ly0/w;->k()V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p2, "Can\'t update "

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lv1/p;->d()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    const-string p3, "OneTime"

    .line 107
    .line 108
    const-string p5, "Periodic"

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    move-object p2, p5

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move-object p2, p3

    .line 115
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p2, " Worker to "

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4}, Lv1/p;->d()Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    move-object p3, p5

    .line 130
    :cond_5
    const-string p2, " Worker. Update operation must preserve worker\'s type."

    .line 131
    .line 132
    invoke-static {p1, p3, p2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const-string p1, "Worker with "

    .line 143
    .line 144
    const-string p2, " doesn\'t exist"

    .line 145
    .line 146
    invoke-static {p1, v5, p2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method
