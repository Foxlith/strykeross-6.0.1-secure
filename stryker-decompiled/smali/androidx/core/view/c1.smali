.class public abstract Landroidx/core/view/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/WeakHashMap;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z

.field public static final d:[I

.field public static final e:Landroidx/core/view/f0;

.field public static final f:Landroidx/core/view/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Landroidx/core/view/c1;->c:Z

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/core/view/c1;->d:[I

    .line 21
    .line 22
    new-instance v0, Landroidx/core/view/f0;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/core/view/c1;->e:Landroidx/core/view/f0;

    .line 28
    .line 29
    new-instance v0, Landroidx/core/view/h0;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/core/view/h0;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/core/view/c1;->f:Landroidx/core/view/h0;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x7f0a0026
        0x7f0a0027
        0x7f0a0032
        0x7f0a003d
        0x7f0a0040
        0x7f0a0041
        0x7f0a0042
        0x7f0a0043
        0x7f0a0044
        0x7f0a0045
        0x7f0a0028
        0x7f0a0029
        0x7f0a002a
        0x7f0a002b
        0x7f0a002c
        0x7f0a002d
        0x7f0a002e
        0x7f0a002f
        0x7f0a0030
        0x7f0a0031
        0x7f0a0033
        0x7f0a0034
        0x7f0a0035
        0x7f0a0036
        0x7f0a0037
        0x7f0a0038
        0x7f0a0039
        0x7f0a003a
        0x7f0a003b
        0x7f0a003c
        0x7f0a003e
        0x7f0a003f
    .end array-data
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/p1;
    .locals 2

    .line 1
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/p1;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/p1;

    invoke-direct {v0, p0}, Landroidx/core/view/p1;-><init>(Landroid/view/View;)V

    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/q2;->g()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroidx/core/view/o0;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static c(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    sget-object v0, Landroidx/core/view/b1;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const v0, 0x7f0a061d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/core/view/b1;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance v1, Landroidx/core/view/b1;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    iput-object v3, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    iput-object v3, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 31
    .line 32
    iput-object v3, v1, Landroidx/core/view/b1;->c:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v0, :cond_8

    .line 43
    .line 44
    iget-object v0, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-object v0, Landroidx/core/view/b1;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_3
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v4, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    new-instance v4, Ljava/util/WeakHashMap;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v4, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    sub-int/2addr v4, v3

    .line 80
    :goto_1
    if-ltz v4, :cond_7

    .line 81
    .line 82
    sget-object v5, Landroidx/core/view/b1;->d:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroid/view/View;

    .line 95
    .line 96
    if-nez v6, :cond_5

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    iget-object v5, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 103
    .line 104
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :goto_2
    instance-of v6, v5, Landroid/view/View;

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    iget-object v6, v1, Landroidx/core/view/b1;->a:Ljava/util/WeakHashMap;

    .line 118
    .line 119
    move-object v7, v5

    .line 120
    check-cast v7, Landroid/view/View;

    .line 121
    .line 122
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    monitor-exit v0

    .line 136
    goto :goto_5

    .line 137
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0

    .line 139
    :cond_8
    :goto_5
    invoke-virtual {v1, p0}, Landroidx/core/view/b1;->a(Landroid/view/View;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_a

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p0, :cond_a

    .line 154
    .line 155
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_a

    .line 160
    .line 161
    iget-object v0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 162
    .line 163
    if-nez v0, :cond_9

    .line 164
    .line 165
    new-instance v0, Landroid/util/SparseArray;

    .line 166
    .line 167
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 171
    .line 172
    :cond_9
    iget-object v0, v1, Landroidx/core/view/b1;->b:Landroid/util/SparseArray;

    .line 173
    .line 174
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 175
    .line 176
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_a
    if-eqz p0, :cond_b

    .line 183
    .line 184
    move v2, v3

    .line 185
    :cond_b
    return v2
.end method

.method public static d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/w0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-boolean v0, Landroidx/core/view/c1;->c:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v0, Landroidx/core/view/c1;->b:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 24
    .line 25
    const-string v3, "mAccessibilityDelegate"

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroidx/core/view/c1;->b:Ljava/lang/reflect/Field;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    sput-boolean v2, Landroidx/core/view/c1;->c:Z

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    :try_start_1
    sget-object v0, Landroidx/core/view/c1;->b:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    move-object v1, p0

    .line 53
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static e(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/v0;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v0, 0x7f0a0615

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-class v0, Ljava/lang/CharSequence;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    check-cast p0, Ljava/lang/CharSequence;

    .line 30
    .line 31
    return-object p0
.end method

.method public static f(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    const v0, 0x7f0a0612

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static g(Landroid/view/View;)[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/y0;->a(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0a0618

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static h(Landroid/view/View;)Landroidx/core/view/x2;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/x0;->b(Landroid/view/View;)Landroidx/core/view/x2;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    instance-of v1, v0, Landroid/app/Activity;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    check-cast v0, Landroid/app/Activity;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v2, Landroidx/core/view/x2;

    .line 34
    .line 35
    invoke-direct {v2, v0, p0}, Landroidx/core/view/x2;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-object v2

    .line 39
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v2
.end method

.method public static i(ILandroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p1}, Landroidx/core/view/c1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-static {p1}, Landroidx/core/view/n0;->a(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/16 v4, 0x20

    .line 47
    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-ne p0, v4, :cond_3

    .line 54
    .line 55
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p0}, Landroidx/core/view/n0;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p1}, Landroidx/core/view/c1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :try_start_0
    invoke-static {v0, p1, p1, p0}, Landroidx/core/view/n0;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, " does not fully implement ViewParent"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "ViewCompat"

    .line 123
    .line 124
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/16 v4, 0x800

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, p0}, Landroidx/core/view/n0;->g(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 141
    .line 142
    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p1}, Landroidx/core/view/c1;->e(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_6

    .line 161
    .line 162
    invoke-static {p1, v2}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :goto_3
    instance-of v1, p0, Landroid/view/View;

    .line 170
    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    move-object v1, p0

    .line 174
    check-cast v1, Landroid/view/View;

    .line 175
    .line 176
    invoke-static {v1}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const/4 v2, 0x4

    .line 181
    if-ne v1, v2, :cond_7

    .line 182
    .line 183
    const/4 p0, 0x2

    .line 184
    invoke-static {p1, p0}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_5
    return-void
.end method

.method public static j(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/core/view/q2;->g()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroidx/core/view/o0;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Landroidx/core/view/q2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/q2;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static k(Landroid/view/View;Landroidx/core/view/i;)Landroidx/core/view/i;
    .locals 2

    .line 1
    const-string v0, "ViewCompat"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 17
    .line 18
    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v1, 0x1f

    .line 22
    .line 23
    if-lt v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/core/view/y0;->b(Landroid/view/View;Landroidx/core/view/i;)Landroidx/core/view/i;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const v0, 0x7f0a0617

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/core/view/b0;

    .line 38
    .line 39
    sget-object v1, Landroidx/core/view/c1;->e:Landroidx/core/view/f0;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    check-cast v0, Lk0/u;

    .line 44
    .line 45
    invoke-virtual {v0, p0, p1}, Lk0/u;->a(Landroid/view/View;Landroidx/core/view/i;)Landroidx/core/view/i;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p0, Landroidx/core/view/c0;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    check-cast v1, Landroidx/core/view/c0;

    .line 59
    .line 60
    :cond_3
    invoke-interface {v1, p1}, Landroidx/core/view/c0;->onReceiveContent(Landroidx/core/view/i;)Landroidx/core/view/i;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_0
    return-object p0

    .line 65
    :cond_4
    instance-of v0, p0, Landroidx/core/view/c0;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    move-object v1, p0

    .line 70
    check-cast v1, Landroidx/core/view/c0;

    .line 71
    .line 72
    :cond_5
    invoke-interface {v1, p1}, Landroidx/core/view/c0;->onReceiveContent(Landroidx/core/view/i;)Landroidx/core/view/i;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public static l(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/core/view/c1;->f(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh0/g;

    invoke-virtual {v1}, Lh0/g;->a()I

    move-result v1

    if-ne v1, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static m(Landroid/view/View;Lh0/g;Ljava/lang/String;Lh0/w;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lh0/g;->a()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1, p0}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v7, Lh0/g;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iget v3, p1, Lh0/g;->b:I

    .line 21
    .line 22
    iget-object v6, p1, Lh0/g;->c:Ljava/lang/Class;

    .line 23
    .line 24
    move-object v1, v7

    .line 25
    move-object v4, p2

    .line 26
    move-object v5, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Lh0/g;-><init>(Ljava/lang/Object;ILjava/lang/String;Lh0/w;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Landroidx/core/view/c1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p2, p1, Landroidx/core/view/a;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    check-cast p1, Landroidx/core/view/a;

    .line 43
    .line 44
    iget-object p1, p1, Landroidx/core/view/a;->a:Landroidx/core/view/c;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p2, Landroidx/core/view/c;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 50
    .line 51
    .line 52
    move-object p1, p2

    .line 53
    :goto_0
    if-nez p1, :cond_3

    .line 54
    .line 55
    new-instance p1, Landroidx/core/view/c;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/core/view/c;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {p0, p1}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Lh0/g;->a()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p1, p0}, Landroidx/core/view/c1;->l(ILandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Landroidx/core/view/c1;->f(Landroid/view/View;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v0, p0}, Landroidx/core/view/c1;->i(ILandroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    return-void
.end method

.method public static n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroidx/core/view/w0;->c(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    return-void
.end method

.method public static o(Landroid/view/View;Landroidx/core/view/c;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/c1;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/a;

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/core/view/c;

    invoke-direct {p1}, Landroidx/core/view/c;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/c;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static p(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/view/g0;

    .line 2
    .line 3
    const v1, 0x7f0a0615

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/g0;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Landroidx/core/view/i0;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Landroidx/core/view/c1;->f:Landroidx/core/view/h0;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, v0, Landroidx/core/view/h0;->a:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object p1, v0, Landroidx/core/view/h0;->a:Ljava/util/WeakHashMap;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0, v0}, Landroidx/core/view/k0;->o(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-void
.end method
