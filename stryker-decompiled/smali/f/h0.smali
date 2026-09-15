.class public final Lf/h0;
.super Lf/u;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final i0:Ln/k;

.field public static final j0:[I

.field public static final k0:Z

.field public static final l0:Z


# instance fields
.field public A:Z

.field public B:Landroid/view/ViewGroup;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/view/View;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:[Lf/g0;

.field public N:Lf/g0;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Landroid/content/res/Configuration;

.field public final T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Lf/c0;

.field public Y:Lf/c0;

.field public Z:Z

.field public a0:I

.field public final b0:Lf/v;

.field public c0:Z

.field public d0:Landroid/graphics/Rect;

.field public e0:Landroid/graphics/Rect;

.field public f0:Lf/l0;

.field public g0:Landroid/window/OnBackInvokedDispatcher;

.field public h0:Landroid/window/OnBackInvokedCallback;

.field public final j:Ljava/lang/Object;

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Lf/b0;

.field public final n:Lf/r;

.field public p:Lf/b;

.field public q:Li/k;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroidx/appcompat/widget/x1;

.field public t:Lf/w;

.field public u:Lf/w;

.field public v:Li/c;

.field public w:Landroidx/appcompat/widget/ActionBarContextView;

.field public x:Landroid/widget/PopupWindow;

.field public y:Lf/v;

.field public z:Landroidx/core/view/p1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln/k;

    invoke-direct {v0}, Ln/k;-><init>()V

    sput-object v0, Lf/h0;->i0:Ln/k;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf/h0;->j0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lf/h0;->k0:Z

    sput-boolean v1, Lf/h0;->l0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lf/r;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/h0;->z:Landroidx/core/view/p1;

    .line 6
    .line 7
    const/16 v1, -0x64

    .line 8
    .line 9
    iput v1, p0, Lf/h0;->T:I

    .line 10
    .line 11
    new-instance v2, Lf/v;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, p0, v3}, Lf/v;-><init>(Lf/h0;I)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lf/h0;->b0:Lf/v;

    .line 18
    .line 19
    iput-object p1, p0, Lf/h0;->k:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p3, p0, Lf/h0;->n:Lf/r;

    .line 22
    .line 23
    iput-object p4, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of p3, p4, Landroid/app/Dialog;

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    instance-of p3, p1, Lf/q;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    check-cast p1, Lf/q;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    check-cast p1, Landroid/content/ContextWrapper;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object p1, v0

    .line 50
    :goto_1
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lf/q;->getDelegate()Lf/u;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lf/h0;

    .line 57
    .line 58
    iget p1, p1, Lf/h0;->T:I

    .line 59
    .line 60
    iput p1, p0, Lf/h0;->T:I

    .line 61
    .line 62
    :cond_2
    iget p1, p0, Lf/h0;->T:I

    .line 63
    .line 64
    if-ne p1, v1, :cond_3

    .line 65
    .line 66
    sget-object p1, Lf/h0;->i0:Ln/k;

    .line 67
    .line 68
    iget-object p3, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p1, p3, v0}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    check-cast p3, Ljava/lang/Integer;

    .line 83
    .line 84
    if-eqz p3, :cond_3

    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    iput p3, p0, Lf/h0;->T:I

    .line 91
    .line 92
    iget-object p3, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p1, p3}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_3
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0, p2}, Lf/h0;->n(Landroid/view/Window;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/a0;->d()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static o(Landroid/content/Context;)Ld0/h;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    sget-object v0, Lf/u;->c:Ld0/h;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lf/z;->b(Landroid/content/res/Configuration;)Ld0/h;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object v0, v0, Ld0/h;->a:Ld0/i;

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    check-cast v1, Ld0/j;

    .line 34
    .line 35
    iget-object v1, v1, Ld0/j;->a:Landroid/os/LocaleList;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    sget-object v0, Ld0/h;->b:Ld0/h;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    move-object v3, v0

    .line 53
    check-cast v3, Ld0/j;

    .line 54
    .line 55
    iget-object v3, v3, Ld0/j;->a:Landroid/os/LocaleList;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget-object v4, p0, Ld0/h;->a:Ld0/i;

    .line 62
    .line 63
    check-cast v4, Ld0/j;

    .line 64
    .line 65
    iget-object v4, v4, Ld0/j;->a:Landroid/os/LocaleList;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    add-int/2addr v4, v3

    .line 72
    if-ge v2, v4, :cond_5

    .line 73
    .line 74
    move-object v3, v0

    .line 75
    check-cast v3, Ld0/j;

    .line 76
    .line 77
    iget-object v3, v3, Ld0/j;->a:Landroid/os/LocaleList;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ge v2, v3, :cond_3

    .line 84
    .line 85
    move-object v3, v0

    .line 86
    check-cast v3, Ld0/j;

    .line 87
    .line 88
    iget-object v3, v3, Ld0/j;->a:Landroid/os/LocaleList;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move-object v3, v0

    .line 96
    check-cast v3, Ld0/j;

    .line 97
    .line 98
    iget-object v3, v3, Ld0/j;->a:Landroid/os/LocaleList;

    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-int v3, v2, v3

    .line 105
    .line 106
    iget-object v4, p0, Ld0/h;->a:Ld0/i;

    .line 107
    .line 108
    check-cast v4, Ld0/j;

    .line 109
    .line 110
    iget-object v4, v4, Ld0/j;->a:Landroid/os/LocaleList;

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    :goto_1
    if-eqz v3, :cond_4

    .line 117
    .line 118
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    new-array v0, v0, [Ljava/util/Locale;

    .line 129
    .line 130
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, [Ljava/util/Locale;

    .line 135
    .line 136
    invoke-static {v0}, Ld0/g;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Ld0/h;

    .line 141
    .line 142
    new-instance v2, Ld0/j;

    .line 143
    .line 144
    invoke-direct {v2, v0}, Ld0/j;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Ld0/h;-><init>(Ld0/j;)V

    .line 148
    .line 149
    .line 150
    move-object v0, v1

    .line 151
    :goto_2
    iget-object v1, v0, Ld0/h;->a:Ld0/i;

    .line 152
    .line 153
    check-cast v1, Ld0/j;

    .line 154
    .line 155
    iget-object v1, v1, Ld0/j;->a:Landroid/os/LocaleList;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move-object p0, v0

    .line 165
    :goto_3
    return-object p0
.end method

.method public static s(Landroid/content/Context;ILd0/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 24
    .line 25
    and-int/lit8 p0, p0, 0x30

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 p0, 0x20

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 p0, 0x10

    .line 32
    .line 33
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    iput p4, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 40
    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget p3, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 47
    .line 48
    and-int/lit8 p3, p3, -0x31

    .line 49
    .line 50
    or-int/2addr p0, p3

    .line 51
    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-static {p1, p2}, Lf/z;->d(Landroid/content/res/Configuration;Ld0/h;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf/h0;->a0:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-int p1, v1, p1

    .line 5
    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lf/h0;->a0:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lf/h0;->Z:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lf/h0;->l:Landroid/view/Window;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    iget-object v0, p0, Lf/h0;->b0:Lf/v;

    .line 22
    .line 23
    invoke-static {p1, v0}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v1, p0, Lf/h0;->Z:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final B(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const/16 v0, -0x64

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq p2, v0, :cond_5

    .line 5
    .line 6
    if-eq p2, v1, :cond_4

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p2, v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p2, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lf/h0;->Y:Lf/c0;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Lf/c0;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lf/c0;-><init>(Lf/h0;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lf/h0;->Y:Lf/c0;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lf/h0;->Y:Lf/c0;

    .line 31
    .line 32
    invoke-virtual {p1}, Lf/c0;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "uimode"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/app/UiModeManager;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    return v1

    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lf/h0;->x(Landroid/content/Context;)Lf/e0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lf/e0;->b()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1

    .line 73
    :cond_4
    return p2

    .line 74
    :cond_5
    return v1
.end method

.method public final C()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf/h0;->O:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lf/h0;->O:Z

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lf/g0;->m:Z

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2, v4}, Lf/h0;->r(Lf/g0;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return v4

    .line 21
    :cond_1
    iget-object v0, p0, Lf/h0;->v:Li/c;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Li/c;->a()V

    .line 26
    .line 27
    .line 28
    return v4

    .line 29
    :cond_2
    invoke-virtual {p0}, Lf/h0;->z()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lf/b;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    return v4

    .line 43
    :cond_3
    return v1
.end method

.method public final D(Lf/g0;Landroid/view/KeyEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v1, Lf/g0;->m:Z

    .line 6
    .line 7
    if-nez v2, :cond_1b

    .line 8
    .line 9
    iget-boolean v2, v0, Lf/h0;->R:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    iget v2, v1, Lf/g0;->a:I

    .line 16
    .line 17
    iget-object v3, v0, Lf/h0;->k:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v4, v4, 0xf

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v4, v0, Lf/h0;->l:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    iget-object v6, v1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 47
    .line 48
    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, v1, v5}, Lf/h0;->r(Lf/g0;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const-string v4, "window"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/view/WindowManager;

    .line 65
    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v6, v1, Lf/g0;->e:Lf/f0;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, -0x2

    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    iget-boolean v9, v1, Lf/g0;->n:Z

    .line 83
    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object v3, v1, Lf/g0;->g:Landroid/view/View;

    .line 88
    .line 89
    if-eqz v3, :cond_18

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_18

    .line 96
    .line 97
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 98
    .line 99
    const/4 v6, -0x1

    .line 100
    if-ne v3, v6, :cond_18

    .line 101
    .line 102
    move v10, v6

    .line 103
    goto/16 :goto_8

    .line 104
    .line 105
    :cond_6
    :goto_0
    if-nez v6, :cond_b

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lf/h0;->z()V

    .line 108
    .line 109
    .line 110
    iget-object v6, v0, Lf/h0;->p:Lf/b;

    .line 111
    .line 112
    if-eqz v6, :cond_7

    .line 113
    .line 114
    invoke-virtual {v6}, Lf/b;->e()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/4 v6, 0x0

    .line 120
    :goto_1
    if-nez v6, :cond_8

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    move-object v3, v6

    .line 124
    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    .line 125
    .line 126
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 142
    .line 143
    .line 144
    const v10, 0x7f040004

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    .line 149
    .line 150
    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    .line 151
    .line 152
    if-eqz v10, :cond_9

    .line 153
    .line 154
    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 155
    .line 156
    .line 157
    :cond_9
    const v10, 0x7f0403c5

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    .line 162
    .line 163
    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    .line 164
    .line 165
    if-eqz v6, :cond_a

    .line 166
    .line 167
    :goto_3
    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_a
    const v6, 0x7f140234

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :goto_4
    new-instance v6, Li/f;

    .line 176
    .line 177
    invoke-direct {v6, v3, v7}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Li/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 185
    .line 186
    .line 187
    iput-object v6, v1, Lf/g0;->j:Li/f;

    .line 188
    .line 189
    sget-object v3, Le/a;->j:[I

    .line 190
    .line 191
    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const/16 v6, 0x56

    .line 196
    .line 197
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    iput v6, v1, Lf/g0;->b:I

    .line 202
    .line 203
    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    iput v6, v1, Lf/g0;->d:I

    .line 208
    .line 209
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    .line 211
    .line 212
    new-instance v3, Lf/f0;

    .line 213
    .line 214
    iget-object v6, v1, Lf/g0;->j:Li/f;

    .line 215
    .line 216
    invoke-direct {v3, v0, v6}, Lf/f0;-><init>(Lf/h0;Li/f;)V

    .line 217
    .line 218
    .line 219
    iput-object v3, v1, Lf/g0;->e:Lf/f0;

    .line 220
    .line 221
    const/16 v3, 0x51

    .line 222
    .line 223
    iput v3, v1, Lf/g0;->c:I

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_b
    iget-boolean v3, v1, Lf/g0;->n:Z

    .line 227
    .line 228
    if-eqz v3, :cond_c

    .line 229
    .line 230
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-lez v3, :cond_c

    .line 235
    .line 236
    iget-object v3, v1, Lf/g0;->e:Lf/f0;

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    .line 240
    .line 241
    :cond_c
    :goto_5
    iget-object v3, v1, Lf/g0;->g:Landroid/view/View;

    .line 242
    .line 243
    if-eqz v3, :cond_d

    .line 244
    .line 245
    iput-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_d
    iget-object v3, v1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 249
    .line 250
    if-nez v3, :cond_e

    .line 251
    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :cond_e
    iget-object v3, v0, Lf/h0;->u:Lf/w;

    .line 255
    .line 256
    if-nez v3, :cond_f

    .line 257
    .line 258
    new-instance v3, Lf/w;

    .line 259
    .line 260
    const/4 v6, 0x5

    .line 261
    invoke-direct {v3, v0, v6}, Lf/w;-><init>(Lf/h0;I)V

    .line 262
    .line 263
    .line 264
    iput-object v3, v0, Lf/h0;->u:Lf/w;

    .line 265
    .line 266
    :cond_f
    iget-object v3, v0, Lf/h0;->u:Lf/w;

    .line 267
    .line 268
    iget-object v6, v1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 269
    .line 270
    if-nez v6, :cond_10

    .line 271
    .line 272
    new-instance v6, Landroidx/appcompat/view/menu/k;

    .line 273
    .line 274
    iget-object v9, v1, Lf/g0;->j:Li/f;

    .line 275
    .line 276
    invoke-direct {v6, v9}, Landroidx/appcompat/view/menu/k;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    iput-object v6, v1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 280
    .line 281
    iput-object v3, v6, Landroidx/appcompat/view/menu/k;->e:Landroidx/appcompat/view/menu/b0;

    .line 282
    .line 283
    iget-object v3, v1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 284
    .line 285
    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 286
    .line 287
    .line 288
    :cond_10
    iget-object v3, v1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 289
    .line 290
    iget-object v6, v1, Lf/g0;->e:Lf/f0;

    .line 291
    .line 292
    iget-object v9, v3, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 293
    .line 294
    if-nez v9, :cond_12

    .line 295
    .line 296
    iget-object v9, v3, Landroidx/appcompat/view/menu/k;->b:Landroid/view/LayoutInflater;

    .line 297
    .line 298
    const v10, 0x7f0d000d

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 306
    .line 307
    iput-object v6, v3, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 308
    .line 309
    iget-object v6, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 310
    .line 311
    if-nez v6, :cond_11

    .line 312
    .line 313
    new-instance v6, Landroidx/appcompat/view/menu/j;

    .line 314
    .line 315
    invoke-direct {v6, v3}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 316
    .line 317
    .line 318
    iput-object v6, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 319
    .line 320
    :cond_11
    iget-object v6, v3, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 321
    .line 322
    iget-object v9, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 323
    .line 324
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    .line 326
    .line 327
    iget-object v6, v3, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 328
    .line 329
    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 330
    .line 331
    .line 332
    :cond_12
    iget-object v3, v3, Landroidx/appcompat/view/menu/k;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 333
    .line 334
    iput-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 335
    .line 336
    if-eqz v3, :cond_1a

    .line 337
    .line 338
    :goto_6
    iget-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 339
    .line 340
    if-nez v3, :cond_13

    .line 341
    .line 342
    goto/16 :goto_9

    .line 343
    .line 344
    :cond_13
    iget-object v3, v1, Lf/g0;->g:Landroid/view/View;

    .line 345
    .line 346
    if-eqz v3, :cond_14

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_14
    iget-object v3, v1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 350
    .line 351
    iget-object v6, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 352
    .line 353
    if-nez v6, :cond_15

    .line 354
    .line 355
    new-instance v6, Landroidx/appcompat/view/menu/j;

    .line 356
    .line 357
    invoke-direct {v6, v3}, Landroidx/appcompat/view/menu/j;-><init>(Landroidx/appcompat/view/menu/k;)V

    .line 358
    .line 359
    .line 360
    iput-object v6, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 361
    .line 362
    :cond_15
    iget-object v3, v3, Landroidx/appcompat/view/menu/k;->f:Landroidx/appcompat/view/menu/j;

    .line 363
    .line 364
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/j;->getCount()I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-lez v3, :cond_1a

    .line 369
    .line 370
    :goto_7
    iget-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 371
    .line 372
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-nez v3, :cond_16

    .line 377
    .line 378
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 379
    .line 380
    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 381
    .line 382
    .line 383
    :cond_16
    iget v6, v1, Lf/g0;->b:I

    .line 384
    .line 385
    iget-object v9, v1, Lf/g0;->e:Lf/f0;

    .line 386
    .line 387
    invoke-virtual {v9, v6}, Lf/f0;->setBackgroundResource(I)V

    .line 388
    .line 389
    .line 390
    iget-object v6, v1, Lf/g0;->f:Landroid/view/View;

    .line 391
    .line 392
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    instance-of v9, v6, Landroid/view/ViewGroup;

    .line 397
    .line 398
    if-eqz v9, :cond_17

    .line 399
    .line 400
    check-cast v6, Landroid/view/ViewGroup;

    .line 401
    .line 402
    iget-object v9, v1, Lf/g0;->f:Landroid/view/View;

    .line 403
    .line 404
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 405
    .line 406
    .line 407
    :cond_17
    iget-object v6, v1, Lf/g0;->e:Lf/f0;

    .line 408
    .line 409
    iget-object v9, v1, Lf/g0;->f:Landroid/view/View;

    .line 410
    .line 411
    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    .line 414
    iget-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 415
    .line 416
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_18

    .line 421
    .line 422
    iget-object v3, v1, Lf/g0;->f:Landroid/view/View;

    .line 423
    .line 424
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 425
    .line 426
    .line 427
    :cond_18
    move v10, v8

    .line 428
    :goto_8
    iput-boolean v7, v1, Lf/g0;->l:Z

    .line 429
    .line 430
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 431
    .line 432
    const/4 v11, -0x2

    .line 433
    const/4 v12, 0x0

    .line 434
    const/4 v13, 0x0

    .line 435
    const/16 v14, 0x3ea

    .line 436
    .line 437
    const/high16 v15, 0x820000

    .line 438
    .line 439
    const/16 v16, -0x3

    .line 440
    .line 441
    move-object v9, v3

    .line 442
    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 443
    .line 444
    .line 445
    iget v6, v1, Lf/g0;->c:I

    .line 446
    .line 447
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 448
    .line 449
    iget v6, v1, Lf/g0;->d:I

    .line 450
    .line 451
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 452
    .line 453
    iget-object v6, v1, Lf/g0;->e:Lf/f0;

    .line 454
    .line 455
    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .line 457
    .line 458
    iput-boolean v5, v1, Lf/g0;->m:Z

    .line 459
    .line 460
    if-nez v2, :cond_19

    .line 461
    .line 462
    invoke-virtual/range {p0 .. p0}, Lf/h0;->H()V

    .line 463
    .line 464
    .line 465
    :cond_19
    return-void

    .line 466
    :cond_1a
    :goto_9
    iput-boolean v5, v1, Lf/g0;->n:Z

    .line 467
    .line 468
    :cond_1b
    :goto_a
    return-void
.end method

.method public final E(Lf/g0;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lf/g0;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/o;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final F(Lf/g0;Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lf/h0;->R:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p1, Lf/g0;->k:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object v0, p0, Lf/h0;->N:Lf/g0;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq v0, p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lf/h0;->r(Lf/g0;Z)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v3, p1, Lf/g0;->a:I

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iput-object v4, p1, Lf/g0;->g:Landroid/view/View;

    .line 37
    .line 38
    :cond_3
    const/16 v4, 0x6c

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    if-ne v3, v4, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move v5, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_5
    :goto_0
    move v5, v2

    .line 48
    :goto_1
    if-eqz v5, :cond_6

    .line 49
    .line 50
    iget-object v6, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 51
    .line 52
    if-eqz v6, :cond_6

    .line 53
    .line 54
    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 55
    .line 56
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 57
    .line 58
    .line 59
    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 60
    .line 61
    check-cast v6, Landroidx/appcompat/widget/q4;

    .line 62
    .line 63
    iput-boolean v2, v6, Landroidx/appcompat/widget/q4;->l:Z

    .line 64
    .line 65
    :cond_6
    iget-object v6, p1, Lf/g0;->g:Landroid/view/View;

    .line 66
    .line 67
    if-nez v6, :cond_1e

    .line 68
    .line 69
    if-eqz v5, :cond_7

    .line 70
    .line 71
    iget-object v6, p0, Lf/h0;->p:Lf/b;

    .line 72
    .line 73
    instance-of v6, v6, Lf/t0;

    .line 74
    .line 75
    if-nez v6, :cond_1e

    .line 76
    .line 77
    :cond_7
    iget-object v6, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    if-eqz v6, :cond_8

    .line 81
    .line 82
    iget-boolean v8, p1, Lf/g0;->o:Z

    .line 83
    .line 84
    if-eqz v8, :cond_18

    .line 85
    .line 86
    :cond_8
    if-nez v6, :cond_11

    .line 87
    .line 88
    iget-object v6, p0, Lf/h0;->k:Landroid/content/Context;

    .line 89
    .line 90
    if-eqz v3, :cond_9

    .line 91
    .line 92
    if-ne v3, v4, :cond_d

    .line 93
    .line 94
    :cond_9
    iget-object v4, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 95
    .line 96
    if-eqz v4, :cond_d

    .line 97
    .line 98
    new-instance v4, Landroid/util/TypedValue;

    .line 99
    .line 100
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    const v9, 0x7f04000b

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    .line 112
    .line 113
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    .line 114
    .line 115
    const v10, 0x7f04000c

    .line 116
    .line 117
    .line 118
    if-eqz v9, :cond_a

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 129
    .line 130
    .line 131
    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    .line 132
    .line 133
    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_a
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 141
    .line 142
    .line 143
    move-object v9, v7

    .line 144
    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    .line 145
    .line 146
    if-eqz v10, :cond_c

    .line 147
    .line 148
    if-nez v9, :cond_b

    .line 149
    .line 150
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 159
    .line 160
    .line 161
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    .line 162
    .line 163
    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 164
    .line 165
    .line 166
    :cond_c
    if-eqz v9, :cond_d

    .line 167
    .line 168
    new-instance v4, Li/f;

    .line 169
    .line 170
    invoke-direct {v4, v6, v1}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Li/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 178
    .line 179
    .line 180
    move-object v6, v4

    .line 181
    :cond_d
    new-instance v4, Landroidx/appcompat/view/menu/o;

    .line 182
    .line 183
    invoke-direct {v4, v6}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, p0}, Landroidx/appcompat/view/menu/o;->setCallback(Landroidx/appcompat/view/menu/m;)V

    .line 187
    .line 188
    .line 189
    iget-object v6, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 190
    .line 191
    if-ne v4, v6, :cond_e

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_e
    if-eqz v6, :cond_f

    .line 195
    .line 196
    iget-object v8, p1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 197
    .line 198
    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/o;->removeMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 199
    .line 200
    .line 201
    :cond_f
    iput-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 202
    .line 203
    iget-object v6, p1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 204
    .line 205
    if-eqz v6, :cond_10

    .line 206
    .line 207
    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 208
    .line 209
    .line 210
    :cond_10
    :goto_3
    iget-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 211
    .line 212
    if-nez v4, :cond_11

    .line 213
    .line 214
    return v1

    .line 215
    :cond_11
    if-eqz v5, :cond_13

    .line 216
    .line 217
    iget-object v4, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 218
    .line 219
    if-eqz v4, :cond_13

    .line 220
    .line 221
    iget-object v6, p0, Lf/h0;->t:Lf/w;

    .line 222
    .line 223
    if-nez v6, :cond_12

    .line 224
    .line 225
    new-instance v6, Lf/w;

    .line 226
    .line 227
    const/4 v8, 0x4

    .line 228
    invoke-direct {v6, p0, v8}, Lf/w;-><init>(Lf/h0;I)V

    .line 229
    .line 230
    .line 231
    iput-object v6, p0, Lf/h0;->t:Lf/w;

    .line 232
    .line 233
    :cond_12
    iget-object v6, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 234
    .line 235
    iget-object v8, p0, Lf/h0;->t:Lf/w;

    .line 236
    .line 237
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 238
    .line 239
    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Landroidx/appcompat/view/menu/o;Lf/w;)V

    .line 240
    .line 241
    .line 242
    :cond_13
    iget-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 243
    .line 244
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 245
    .line 246
    .line 247
    iget-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 248
    .line 249
    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_17

    .line 254
    .line 255
    iget-object p2, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 256
    .line 257
    if-nez p2, :cond_14

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_14
    if-eqz p2, :cond_15

    .line 261
    .line 262
    iget-object v0, p1, Lf/g0;->i:Landroidx/appcompat/view/menu/k;

    .line 263
    .line 264
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/o;->removeMenuPresenter(Landroidx/appcompat/view/menu/c0;)V

    .line 265
    .line 266
    .line 267
    :cond_15
    iput-object v7, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 268
    .line 269
    :goto_4
    if-eqz v5, :cond_16

    .line 270
    .line 271
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 272
    .line 273
    if-eqz p1, :cond_16

    .line 274
    .line 275
    iget-object p2, p0, Lf/h0;->t:Lf/w;

    .line 276
    .line 277
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 278
    .line 279
    invoke-virtual {p1, v7, p2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Landroidx/appcompat/view/menu/o;Lf/w;)V

    .line 280
    .line 281
    .line 282
    :cond_16
    return v1

    .line 283
    :cond_17
    iput-boolean v1, p1, Lf/g0;->o:Z

    .line 284
    .line 285
    :cond_18
    iget-object v3, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 286
    .line 287
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 288
    .line 289
    .line 290
    iget-object v3, p1, Lf/g0;->p:Landroid/os/Bundle;

    .line 291
    .line 292
    if-eqz v3, :cond_19

    .line 293
    .line 294
    iget-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 295
    .line 296
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/o;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 297
    .line 298
    .line 299
    iput-object v7, p1, Lf/g0;->p:Landroid/os/Bundle;

    .line 300
    .line 301
    :cond_19
    iget-object v3, p1, Lf/g0;->g:Landroid/view/View;

    .line 302
    .line 303
    iget-object v4, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 304
    .line 305
    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_1b

    .line 310
    .line 311
    if-eqz v5, :cond_1a

    .line 312
    .line 313
    iget-object p2, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 314
    .line 315
    if-eqz p2, :cond_1a

    .line 316
    .line 317
    iget-object v0, p0, Lf/h0;->t:Lf/w;

    .line 318
    .line 319
    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 320
    .line 321
    invoke-virtual {p2, v7, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->f(Landroidx/appcompat/view/menu/o;Lf/w;)V

    .line 322
    .line 323
    .line 324
    :cond_1a
    iget-object p1, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 327
    .line 328
    .line 329
    return v1

    .line 330
    :cond_1b
    if-eqz p2, :cond_1c

    .line 331
    .line 332
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    goto :goto_5

    .line 337
    :cond_1c
    const/4 p2, -0x1

    .line 338
    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    if-eq p2, v2, :cond_1d

    .line 347
    .line 348
    move p2, v2

    .line 349
    goto :goto_6

    .line 350
    :cond_1d
    move p2, v1

    .line 351
    :goto_6
    iget-object v0, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 352
    .line 353
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/o;->setQwertyMode(Z)V

    .line 354
    .line 355
    .line 356
    iget-object p2, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 357
    .line 358
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 359
    .line 360
    .line 361
    :cond_1e
    iput-boolean v2, p1, Lf/g0;->k:Z

    .line 362
    .line 363
    iput-boolean v1, p1, Lf/g0;->l:Z

    .line 364
    .line 365
    iput-object p1, p0, Lf/h0;->N:Lf/g0;

    .line 366
    .line 367
    return v2
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/h0;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v0, v0, Lf/g0;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :goto_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lf/h0;->v:Li/c;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lf/h0;->h0:Landroid/window/OnBackInvokedCallback;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 36
    .line 37
    invoke-static {v0, p0}, Lf/a0;->b(Ljava/lang/Object;Lf/h0;)Landroid/window/OnBackInvokedCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lf/h0;->h0:Landroid/window/OnBackInvokedCallback;

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lf/h0;->h0:Landroid/window/OnBackInvokedCallback;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    invoke-static {v1, v0}, Lf/a0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    return-void
.end method

.method public final I(Landroidx/core/view/q2;Landroid/graphics/Rect;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/core/view/q2;->d()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v1, v0

    .line 15
    :goto_0
    iget-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    if-eqz v2, :cond_12

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 26
    .line 27
    if-eqz v2, :cond_12

    .line 28
    .line 29
    iget-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .line 37
    iget-object v4, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eqz v4, :cond_10

    .line 45
    .line 46
    iget-object v4, p0, Lf/h0;->d0:Landroid/graphics/Rect;

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    new-instance v4, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lf/h0;->d0:Landroid/graphics/Rect;

    .line 56
    .line 57
    new-instance v4, Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lf/h0;->e0:Landroid/graphics/Rect;

    .line 63
    .line 64
    :cond_2
    iget-object v4, p0, Lf/h0;->d0:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget-object v6, p0, Lf/h0;->e0:Landroid/graphics/Rect;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1}, Landroidx/core/view/q2;->b()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p1}, Landroidx/core/view/q2;->d()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {p1}, Landroidx/core/view/q2;->c()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {p1}, Landroidx/core/view/q2;->a()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object p1, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 94
    .line 95
    sget-object p2, Landroidx/appcompat/widget/x4;->a:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    :try_start_0
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {p2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    :catch_0
    :cond_4
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 107
    .line 108
    iget p2, v4, Landroid/graphics/Rect;->left:I

    .line 109
    .line 110
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    iget-object v6, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 113
    .line 114
    sget-object v7, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 115
    .line 116
    invoke-static {v6}, Landroidx/core/view/r0;->a(Landroid/view/View;)Landroidx/core/view/q2;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-nez v6, :cond_5

    .line 121
    .line 122
    move v7, v0

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    invoke-virtual {v6}, Landroidx/core/view/q2;->b()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    :goto_2
    if-nez v6, :cond_6

    .line 129
    .line 130
    move v6, v0

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    invoke-virtual {v6}, Landroidx/core/view/q2;->c()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    if-ne v8, p1, :cond_8

    .line 139
    .line 140
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 141
    .line 142
    if-ne v8, p2, :cond_8

    .line 143
    .line 144
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 145
    .line 146
    if-eq v8, v4, :cond_7

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_7
    move p2, v0

    .line 150
    goto :goto_5

    .line 151
    :cond_8
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 152
    .line 153
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 154
    .line 155
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 156
    .line 157
    move p2, v5

    .line 158
    :goto_5
    iget-object v4, p0, Lf/h0;->k:Landroid/content/Context;

    .line 159
    .line 160
    if-lez p1, :cond_9

    .line 161
    .line 162
    iget-object p1, p0, Lf/h0;->D:Landroid/view/View;

    .line 163
    .line 164
    if-nez p1, :cond_9

    .line 165
    .line 166
    new-instance p1, Landroid/view/View;

    .line 167
    .line 168
    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    iput-object p1, p0, Lf/h0;->D:Landroid/view/View;

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 177
    .line 178
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 179
    .line 180
    const/4 v9, -0x1

    .line 181
    const/16 v10, 0x33

    .line 182
    .line 183
    invoke-direct {p1, v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 184
    .line 185
    .line 186
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 187
    .line 188
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 189
    .line 190
    iget-object v6, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 191
    .line 192
    iget-object v7, p0, Lf/h0;->D:Landroid/view/View;

    .line 193
    .line 194
    invoke-virtual {v6, v7, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_9
    iget-object p1, p0, Lf/h0;->D:Landroid/view/View;

    .line 199
    .line 200
    if-eqz p1, :cond_b

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    .line 208
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 209
    .line 210
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 211
    .line 212
    if-ne v8, v9, :cond_a

    .line 213
    .line 214
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 215
    .line 216
    if-ne v8, v7, :cond_a

    .line 217
    .line 218
    iget v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 219
    .line 220
    if-eq v8, v6, :cond_b

    .line 221
    .line 222
    :cond_a
    iput v9, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 223
    .line 224
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 225
    .line 226
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 227
    .line 228
    iget-object v6, p0, Lf/h0;->D:Landroid/view/View;

    .line 229
    .line 230
    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_6
    iget-object p1, p0, Lf/h0;->D:Landroid/view/View;

    .line 234
    .line 235
    if-eqz p1, :cond_c

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_c
    move v5, v0

    .line 239
    :goto_7
    if-eqz v5, :cond_e

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_e

    .line 246
    .line 247
    iget-object p1, p0, Lf/h0;->D:Landroid/view/View;

    .line 248
    .line 249
    invoke-static {p1}, Landroidx/core/view/k0;->g(Landroid/view/View;)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    and-int/lit16 v6, v6, 0x2000

    .line 254
    .line 255
    if-eqz v6, :cond_d

    .line 256
    .line 257
    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    .line 258
    .line 259
    const v6, 0x7f060006

    .line 260
    .line 261
    .line 262
    :goto_8
    invoke-static {v4, v6}, Lx/d;->a(Landroid/content/Context;I)I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    goto :goto_9

    .line 267
    :cond_d
    sget-object v6, Lx/g;->a:Ljava/lang/Object;

    .line 268
    .line 269
    const v6, 0x7f060005

    .line 270
    .line 271
    .line 272
    goto :goto_8

    .line 273
    :goto_9
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 274
    .line 275
    .line 276
    :cond_e
    iget-boolean p1, p0, Lf/h0;->I:Z

    .line 277
    .line 278
    if-nez p1, :cond_f

    .line 279
    .line 280
    if-eqz v5, :cond_f

    .line 281
    .line 282
    move v1, v0

    .line 283
    :cond_f
    move p1, v5

    .line 284
    move v5, p2

    .line 285
    goto :goto_a

    .line 286
    :cond_10
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 287
    .line 288
    if-eqz p1, :cond_11

    .line 289
    .line 290
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 291
    .line 292
    move p1, v0

    .line 293
    goto :goto_a

    .line 294
    :cond_11
    move p1, v0

    .line 295
    move v5, p1

    .line 296
    :goto_a
    if-eqz v5, :cond_13

    .line 297
    .line 298
    iget-object p2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 299
    .line 300
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    goto :goto_b

    .line 304
    :cond_12
    move p1, v0

    .line 305
    :cond_13
    :goto_b
    iget-object p2, p0, Lf/h0;->D:Landroid/view/View;

    .line 306
    .line 307
    if-eqz p2, :cond_15

    .line 308
    .line 309
    if-eqz p1, :cond_14

    .line 310
    .line 311
    goto :goto_c

    .line 312
    :cond_14
    move v0, v3

    .line 313
    :goto_c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :cond_15
    return v1
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h0;->k:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lf/h0;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "AppCompatDelegate"

    .line 26
    .line 27
    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lf/h0;->z()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf/b;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lf/h0;->A(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/h0;->P:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lf/h0;->m(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lf/h0;->w()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lv1/f;->z(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    :catch_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lf/h0;->p:Lf/b;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iput-boolean v0, p0, Lf/h0;->c0:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v0}, Lf/b;->l(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    sget-object v1, Lf/u;->h:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_3
    invoke-static {p0}, Lf/u;->f(Lf/u;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lf/u;->g:Ln/c;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ln/c;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    monitor-exit v1

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    throw v0

    .line 69
    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    .line 70
    .line 71
    iget-object v2, p0, Lf/h0;->k:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lf/h0;->S:Landroid/content/res/Configuration;

    .line 85
    .line 86
    iput-boolean v0, p0, Lf/h0;->Q:Z

    .line 87
    .line 88
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lf/u;->h:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lf/u;->f(Lf/u;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1

    .line 18
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lf/h0;->Z:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lf/h0;->b0:Lf/v;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lf/h0;->R:Z

    .line 35
    .line 36
    iget v0, p0, Lf/h0;->T:I

    .line 37
    .line 38
    const/16 v1, -0x64

    .line 39
    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v1, v0, Landroid/app/Activity;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    check-cast v0, Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Lf/h0;->i0:Ln/k;

    .line 57
    .line 58
    iget-object v1, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lf/h0;->T:I

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v0, Lf/h0;->i0:Ln/k;

    .line 79
    .line 80
    iget-object v1, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Lf/b;->h()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lf/h0;->X:Lf/c0;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lf/e0;->a()V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v0, p0, Lf/h0;->Y:Lf/c0;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0}, Lf/e0;->a()V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public final g(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x6d

    .line 2
    .line 3
    const/16 v1, 0x6c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "AppCompatDelegate"

    .line 8
    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 12
    .line 13
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x9

    .line 19
    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 23
    .line 24
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move p1, v0

    .line 28
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lf/h0;->K:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-ne p1, v1, :cond_2

    .line 34
    .line 35
    return v3

    .line 36
    :cond_2
    iget-boolean v2, p0, Lf/h0;->G:Z

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    if-ne p1, v4, :cond_3

    .line 42
    .line 43
    iput-boolean v3, p0, Lf/h0;->G:Z

    .line 44
    .line 45
    :cond_3
    if-eq p1, v4, :cond_9

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq p1, v2, :cond_8

    .line 49
    .line 50
    const/4 v2, 0x5

    .line 51
    if-eq p1, v2, :cond_7

    .line 52
    .line 53
    const/16 v2, 0xa

    .line 54
    .line 55
    if-eq p1, v2, :cond_6

    .line 56
    .line 57
    if-eq p1, v1, :cond_5

    .line 58
    .line 59
    if-eq p1, v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_4
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 69
    .line 70
    .line 71
    iput-boolean v4, p0, Lf/h0;->H:Z

    .line 72
    .line 73
    return v4

    .line 74
    :cond_5
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 75
    .line 76
    .line 77
    iput-boolean v4, p0, Lf/h0;->G:Z

    .line 78
    .line 79
    return v4

    .line 80
    :cond_6
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 81
    .line 82
    .line 83
    iput-boolean v4, p0, Lf/h0;->I:Z

    .line 84
    .line 85
    return v4

    .line 86
    :cond_7
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 87
    .line 88
    .line 89
    iput-boolean v4, p0, Lf/h0;->F:Z

    .line 90
    .line 91
    return v4

    .line 92
    :cond_8
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 93
    .line 94
    .line 95
    iput-boolean v4, p0, Lf/h0;->E:Z

    .line 96
    .line 97
    return v4

    .line 98
    :cond_9
    invoke-virtual {p0}, Lf/h0;->G()V

    .line 99
    .line 100
    .line 101
    iput-boolean v4, p0, Lf/h0;->K:Z

    .line 102
    .line 103
    return v4
.end method

.method public final h(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/h0;->v()V

    iget-object v0, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lf/h0;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lf/h0;->m:Lf/b0;

    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/b0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/h0;->v()V

    iget-object v0, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lf/h0;->m:Lf/b0;

    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/b0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/h0;->v()V

    iget-object v0, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lf/h0;->m:Lf/b0;

    iget-object p2, p0, Lf/h0;->l:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf/b0;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/h0;->r:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget-object v0, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lf/b;->q(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lf/h0;->C:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Li/b;)Li/c;
    .locals 8

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    iget-object v0, p0, Lf/h0;->v:Li/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Li/c;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Lf/y;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lf/y;-><init>(Lf/h0;Li/b;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lf/h0;->z()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lf/h0;->p:Lf/b;

    .line 19
    .line 20
    iget-object v1, p0, Lf/h0;->n:Lf/r;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lf/b;->r(Lf/y;)Li/c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lf/h0;->v:Li/c;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lf/r;->onSupportActionModeStarted(Li/c;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lf/h0;->v:Li/c;

    .line 38
    .line 39
    if-nez p1, :cond_12

    .line 40
    .line 41
    iget-object p1, p0, Lf/h0;->z:Landroidx/core/view/p1;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/core/view/p1;->b()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lf/h0;->v:Li/c;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Li/c;->a()V

    .line 53
    .line 54
    .line 55
    :cond_3
    const/4 p1, 0x0

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-boolean v2, p0, Lf/h0;->R:Z

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    :try_start_0
    invoke-interface {v1, v0}, Lf/r;->onWindowStartingSupportActionMode(Li/b;)Li/c;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    :cond_4
    move-object v2, p1

    .line 68
    :goto_0
    if-eqz v2, :cond_5

    .line 69
    .line 70
    iput-object v2, p0, Lf/h0;->v:Li/c;

    .line 71
    .line 72
    goto/16 :goto_6

    .line 73
    .line 74
    :cond_5
    iget-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    const/4 v4, 0x0

    .line 78
    if-nez v2, :cond_a

    .line 79
    .line 80
    iget-boolean v2, p0, Lf/h0;->J:Z

    .line 81
    .line 82
    iget-object v5, p0, Lf/h0;->k:Landroid/content/Context;

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    new-instance v2, Landroid/util/TypedValue;

    .line 87
    .line 88
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const v7, 0x7f04000b

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 99
    .line 100
    .line 101
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    .line 102
    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 114
    .line 115
    .line 116
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 117
    .line 118
    invoke-virtual {v7, v6, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 119
    .line 120
    .line 121
    new-instance v6, Li/f;

    .line 122
    .line 123
    invoke-direct {v6, v5, v4}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Li/f;->getTheme()Landroid/content/res/Resources$Theme;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 131
    .line 132
    .line 133
    move-object v5, v6

    .line 134
    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    .line 135
    .line 136
    invoke-direct {v6, v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    .line 138
    .line 139
    iput-object v6, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 140
    .line 141
    new-instance v6, Landroid/widget/PopupWindow;

    .line 142
    .line 143
    const v7, 0x7f04001a

    .line 144
    .line 145
    .line 146
    invoke-direct {v6, v5, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    .line 148
    .line 149
    iput-object v6, p0, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 150
    .line 151
    const/4 v7, 0x2

    .line 152
    invoke-static {v6, v7}, Lk0/n;->d(Landroid/widget/PopupWindow;I)V

    .line 153
    .line 154
    .line 155
    iget-object v6, p0, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 156
    .line 157
    iget-object v7, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    iget-object v6, p0, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 163
    .line 164
    const/4 v7, -0x1

    .line 165
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    const v7, 0x7f040005

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v7, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 176
    .line 177
    .line 178
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 179
    .line 180
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iget-object v5, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 193
    .line 194
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 198
    .line 199
    const/4 v5, -0x2

    .line 200
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lf/v;

    .line 204
    .line 205
    invoke-direct {v2, p0, v3}, Lf/v;-><init>(Lf/h0;I)V

    .line 206
    .line 207
    .line 208
    iput-object v2, p0, Lf/h0;->y:Lf/v;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    iget-object v2, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 212
    .line 213
    const v6, 0x7f0a005e

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    .line 221
    .line 222
    if-eqz v2, :cond_a

    .line 223
    .line 224
    invoke-virtual {p0}, Lf/h0;->z()V

    .line 225
    .line 226
    .line 227
    iget-object v6, p0, Lf/h0;->p:Lf/b;

    .line 228
    .line 229
    if-eqz v6, :cond_8

    .line 230
    .line 231
    invoke-virtual {v6}, Lf/b;->e()Landroid/content/Context;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    goto :goto_1

    .line 236
    :cond_8
    move-object v6, p1

    .line 237
    :goto_1
    if-nez v6, :cond_9

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    move-object v5, v6

    .line 241
    :goto_2
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 253
    .line 254
    iput-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 255
    .line 256
    :cond_a
    :goto_3
    iget-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 257
    .line 258
    if-eqz v2, :cond_10

    .line 259
    .line 260
    iget-object v2, p0, Lf/h0;->z:Landroidx/core/view/p1;

    .line 261
    .line 262
    if-eqz v2, :cond_b

    .line 263
    .line 264
    invoke-virtual {v2}, Landroidx/core/view/p1;->b()V

    .line 265
    .line 266
    .line 267
    :cond_b
    iget-object v2, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 268
    .line 269
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 270
    .line 271
    .line 272
    new-instance v2, Li/g;

    .line 273
    .line 274
    iget-object v5, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 275
    .line 276
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    iget-object v6, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 281
    .line 282
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-object v5, v2, Li/g;->c:Landroid/content/Context;

    .line 286
    .line 287
    iput-object v6, v2, Li/g;->d:Landroidx/appcompat/widget/ActionBarContextView;

    .line 288
    .line 289
    iput-object v0, v2, Li/g;->e:Li/b;

    .line 290
    .line 291
    new-instance v5, Landroidx/appcompat/view/menu/o;

    .line 292
    .line 293
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-direct {v5, v6}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/o;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/o;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    iput-object v5, v2, Li/g;->h:Landroidx/appcompat/view/menu/o;

    .line 305
    .line 306
    invoke-virtual {v5, v2}, Landroidx/appcompat/view/menu/o;->setCallback(Landroidx/appcompat/view/menu/m;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, v0, Lf/y;->a:Li/b;

    .line 310
    .line 311
    invoke-interface {v0, v2, v5}, Li/b;->b(Li/c;Landroidx/appcompat/view/menu/o;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_f

    .line 316
    .line 317
    invoke-virtual {v2}, Li/g;->g()V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 321
    .line 322
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Li/c;)V

    .line 323
    .line 324
    .line 325
    iput-object v2, p0, Lf/h0;->v:Li/c;

    .line 326
    .line 327
    iget-boolean p1, p0, Lf/h0;->A:Z

    .line 328
    .line 329
    if-eqz p1, :cond_c

    .line 330
    .line 331
    iget-object p1, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 332
    .line 333
    if-eqz p1, :cond_c

    .line 334
    .line 335
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 336
    .line 337
    invoke-static {p1}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_c

    .line 342
    .line 343
    move p1, v3

    .line 344
    goto :goto_4

    .line 345
    :cond_c
    move p1, v4

    .line 346
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 347
    .line 348
    if-eqz p1, :cond_d

    .line 349
    .line 350
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 351
    .line 352
    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 357
    .line 358
    invoke-static {p1}, Landroidx/core/view/c1;->a(Landroid/view/View;)Landroidx/core/view/p1;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p1, v0}, Landroidx/core/view/p1;->a(F)V

    .line 363
    .line 364
    .line 365
    iput-object p1, p0, Lf/h0;->z:Landroidx/core/view/p1;

    .line 366
    .line 367
    new-instance v0, Lf/x;

    .line 368
    .line 369
    invoke-direct {v0, p0, v3}, Lf/x;-><init>(Ljava/lang/Object;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, v0}, Landroidx/core/view/p1;->d(Landroidx/core/view/q1;)V

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_d
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 377
    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 379
    .line 380
    .line 381
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 382
    .line 383
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    instance-of p1, p1, Landroid/view/View;

    .line 393
    .line 394
    if-eqz p1, :cond_e

    .line 395
    .line 396
    iget-object p1, p0, Lf/h0;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 397
    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    check-cast p1, Landroid/view/View;

    .line 403
    .line 404
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 405
    .line 406
    invoke-static {p1}, Landroidx/core/view/o0;->c(Landroid/view/View;)V

    .line 407
    .line 408
    .line 409
    :cond_e
    :goto_5
    iget-object p1, p0, Lf/h0;->x:Landroid/widget/PopupWindow;

    .line 410
    .line 411
    if-eqz p1, :cond_10

    .line 412
    .line 413
    iget-object p1, p0, Lf/h0;->l:Landroid/view/Window;

    .line 414
    .line 415
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    iget-object v0, p0, Lf/h0;->y:Lf/v;

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_f
    iput-object p1, p0, Lf/h0;->v:Li/c;

    .line 426
    .line 427
    :cond_10
    :goto_6
    iget-object p1, p0, Lf/h0;->v:Li/c;

    .line 428
    .line 429
    if-eqz p1, :cond_11

    .line 430
    .line 431
    if-eqz v1, :cond_11

    .line 432
    .line 433
    invoke-interface {v1, p1}, Lf/r;->onSupportActionModeStarted(Li/c;)V

    .line 434
    .line 435
    .line 436
    :cond_11
    invoke-virtual {p0}, Lf/h0;->H()V

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lf/h0;->v:Li/c;

    .line 440
    .line 441
    iput-object p1, p0, Lf/h0;->v:Li/c;

    .line 442
    .line 443
    :cond_12
    invoke-virtual {p0}, Lf/h0;->H()V

    .line 444
    .line 445
    .line 446
    iget-object p1, p0, Lf/h0;->v:Li/c;

    .line 447
    .line 448
    return-object p1

    .line 449
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 450
    .line 451
    const-string v0, "ActionMode callback can not be null."

    .line 452
    .line 453
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw p1
.end method

.method public final m(ZZ)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lf/h0;->R:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget v0, v1, Lf/h0;->T:I

    .line 10
    .line 11
    const/16 v3, -0x64

    .line 12
    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    :goto_0
    move v3, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget v0, Lf/u;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v4, v1, Lf/h0;->k:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v4, v3}, Lf/h0;->B(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v6, 0x21

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    if-ge v0, v6, :cond_2

    .line 32
    .line 33
    invoke-static {v4}, Lf/h0;->o(Landroid/content/Context;)Ld0/h;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v6, v7

    .line 39
    :goto_2
    if-nez p2, :cond_3

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v6}, Lf/z;->b(Landroid/content/res/Configuration;)Ld0/h;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_3
    invoke-static {v4, v5, v6, v7, v2}, Lf/h0;->s(Landroid/content/Context;ILd0/h;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iget-boolean v9, v1, Lf/h0;->W:Z

    .line 60
    .line 61
    const/4 v10, 0x1

    .line 62
    iget-object v11, v1, Lf/h0;->j:Ljava/lang/Object;

    .line 63
    .line 64
    if-nez v9, :cond_6

    .line 65
    .line 66
    instance-of v9, v11, Landroid/app/Activity;

    .line 67
    .line 68
    if-eqz v9, :cond_6

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    if-nez v9, :cond_4

    .line 75
    .line 76
    move v0, v2

    .line 77
    goto :goto_5

    .line 78
    :cond_4
    const/16 v12, 0x1d

    .line 79
    .line 80
    if-lt v0, v12, :cond_5

    .line 81
    .line 82
    const/high16 v0, 0x100c0000

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    const/high16 v0, 0xc0000

    .line 86
    .line 87
    :goto_3
    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-direct {v12, v4, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v12, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 103
    .line 104
    iput v0, v1, Lf/h0;->V:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catch_0
    iput v2, v1, Lf/h0;->V:I

    .line 108
    .line 109
    :cond_6
    :goto_4
    iput-boolean v10, v1, Lf/h0;->W:Z

    .line 110
    .line 111
    iget v0, v1, Lf/h0;->V:I

    .line 112
    .line 113
    :goto_5
    iget-object v9, v1, Lf/h0;->S:Landroid/content/res/Configuration;

    .line 114
    .line 115
    if-nez v9, :cond_7

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    :cond_7
    iget v12, v9, Landroid/content/res/Configuration;->uiMode:I

    .line 126
    .line 127
    and-int/lit8 v12, v12, 0x30

    .line 128
    .line 129
    iget v13, v8, Landroid/content/res/Configuration;->uiMode:I

    .line 130
    .line 131
    and-int/lit8 v13, v13, 0x30

    .line 132
    .line 133
    invoke-static {v9}, Lf/z;->b(Landroid/content/res/Configuration;)Ld0/h;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    if-nez v6, :cond_8

    .line 138
    .line 139
    move-object v8, v7

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    invoke-static {v8}, Lf/z;->b(Landroid/content/res/Configuration;)Ld0/h;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    :goto_6
    if-eq v12, v13, :cond_9

    .line 146
    .line 147
    const/16 v12, 0x200

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_9
    move v12, v2

    .line 151
    :goto_7
    if-eqz v8, :cond_a

    .line 152
    .line 153
    invoke-virtual {v9, v8}, Ld0/h;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-nez v9, :cond_a

    .line 158
    .line 159
    or-int/lit16 v12, v12, 0x2004

    .line 160
    .line 161
    :cond_a
    not-int v9, v0

    .line 162
    and-int/2addr v9, v12

    .line 163
    const/4 v14, 0x4

    .line 164
    const/16 v15, 0x1c

    .line 165
    .line 166
    if-eqz v9, :cond_d

    .line 167
    .line 168
    if-eqz p1, :cond_d

    .line 169
    .line 170
    iget-boolean v9, v1, Lf/h0;->P:Z

    .line 171
    .line 172
    if-eqz v9, :cond_d

    .line 173
    .line 174
    sget-boolean v9, Lf/h0;->k0:Z

    .line 175
    .line 176
    if-nez v9, :cond_b

    .line 177
    .line 178
    iget-boolean v9, v1, Lf/h0;->Q:Z

    .line 179
    .line 180
    if-eqz v9, :cond_d

    .line 181
    .line 182
    :cond_b
    instance-of v9, v11, Landroid/app/Activity;

    .line 183
    .line 184
    if-eqz v9, :cond_d

    .line 185
    .line 186
    move-object v9, v11

    .line 187
    check-cast v9, Landroid/app/Activity;

    .line 188
    .line 189
    invoke-virtual {v9}, Landroid/app/Activity;->isChild()Z

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    if-nez v16, :cond_d

    .line 194
    .line 195
    sget v16, Lv/g;->b:I

    .line 196
    .line 197
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 198
    .line 199
    if-lt v2, v15, :cond_c

    .line 200
    .line 201
    invoke-virtual {v9}, Landroid/app/Activity;->recreate()V

    .line 202
    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_c
    new-instance v2, Landroid/os/Handler;

    .line 206
    .line 207
    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-direct {v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 212
    .line 213
    .line 214
    new-instance v10, Landroidx/activity/b;

    .line 215
    .line 216
    invoke-direct {v10, v9, v14}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    .line 221
    .line 222
    :goto_8
    const/4 v2, 0x1

    .line 223
    goto :goto_9

    .line 224
    :cond_d
    const/4 v2, 0x0

    .line 225
    :goto_9
    if-nez v2, :cond_1e

    .line 226
    .line 227
    if-eqz v12, :cond_1e

    .line 228
    .line 229
    and-int/2addr v0, v12

    .line 230
    if-ne v0, v12, :cond_e

    .line 231
    .line 232
    const/4 v2, 0x1

    .line 233
    goto :goto_a

    .line 234
    :cond_e
    const/4 v2, 0x0

    .line 235
    :goto_a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    new-instance v10, Landroid/content/res/Configuration;

    .line 240
    .line 241
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {v10, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 253
    .line 254
    and-int/lit8 v0, v0, -0x31

    .line 255
    .line 256
    or-int/2addr v0, v13

    .line 257
    iput v0, v10, Landroid/content/res/Configuration;->uiMode:I

    .line 258
    .line 259
    if-eqz v8, :cond_f

    .line 260
    .line 261
    invoke-static {v10, v8}, Lf/z;->d(Landroid/content/res/Configuration;Ld0/h;)V

    .line 262
    .line 263
    .line 264
    :cond_f
    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 265
    .line 266
    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268
    .line 269
    const/16 v13, 0x1a

    .line 270
    .line 271
    if-ge v0, v13, :cond_1a

    .line 272
    .line 273
    if-lt v0, v15, :cond_10

    .line 274
    .line 275
    goto/16 :goto_16

    .line 276
    .line 277
    :cond_10
    sget-boolean v0, La/c;->h:Z

    .line 278
    .line 279
    const-string v13, "ResourcesFlusher"

    .line 280
    .line 281
    if-nez v0, :cond_11

    .line 282
    .line 283
    :try_start_1
    const-class v0, Landroid/content/res/Resources;

    .line 284
    .line 285
    const-string v15, "mResourcesImpl"

    .line 286
    .line 287
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    sput-object v0, La/c;->g:Ljava/lang/reflect/Field;

    .line 292
    .line 293
    const/4 v15, 0x1

    .line 294
    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .line 296
    .line 297
    :goto_b
    const/4 v15, 0x1

    .line 298
    goto :goto_c

    .line 299
    :catch_1
    move-exception v0

    .line 300
    const-string v15, "Could not retrieve Resources#mResourcesImpl field"

    .line 301
    .line 302
    invoke-static {v13, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .line 304
    .line 305
    goto :goto_b

    .line 306
    :goto_c
    sput-boolean v15, La/c;->h:Z

    .line 307
    .line 308
    :cond_11
    sget-object v0, La/c;->g:Ljava/lang/reflect/Field;

    .line 309
    .line 310
    if-nez v0, :cond_12

    .line 311
    .line 312
    goto/16 :goto_16

    .line 313
    .line 314
    :cond_12
    :try_start_2
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 318
    move-object v9, v0

    .line 319
    goto :goto_d

    .line 320
    :catch_2
    move-exception v0

    .line 321
    move-object v9, v0

    .line 322
    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    .line 323
    .line 324
    invoke-static {v13, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .line 326
    .line 327
    move-object v9, v7

    .line 328
    :goto_d
    if-nez v9, :cond_13

    .line 329
    .line 330
    goto/16 :goto_16

    .line 331
    .line 332
    :cond_13
    sget-boolean v0, La/c;->b:Z

    .line 333
    .line 334
    if-nez v0, :cond_14

    .line 335
    .line 336
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const-string v15, "mDrawableCache"

    .line 341
    .line 342
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sput-object v0, La/c;->a:Ljava/lang/reflect/Field;

    .line 347
    .line 348
    const/4 v15, 0x1

    .line 349
    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 350
    .line 351
    .line 352
    :goto_e
    const/4 v15, 0x1

    .line 353
    goto :goto_f

    .line 354
    :catch_3
    move-exception v0

    .line 355
    const-string v15, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 356
    .line 357
    invoke-static {v13, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .line 359
    .line 360
    goto :goto_e

    .line 361
    :goto_f
    sput-boolean v15, La/c;->b:Z

    .line 362
    .line 363
    :cond_14
    sget-object v0, La/c;->a:Ljava/lang/reflect/Field;

    .line 364
    .line 365
    if-eqz v0, :cond_15

    .line 366
    .line 367
    :try_start_4
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 371
    move-object v9, v0

    .line 372
    goto :goto_10

    .line 373
    :catch_4
    move-exception v0

    .line 374
    move-object v9, v0

    .line 375
    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 376
    .line 377
    invoke-static {v13, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    .line 379
    .line 380
    :cond_15
    move-object v9, v7

    .line 381
    :goto_10
    if-eqz v9, :cond_1a

    .line 382
    .line 383
    sget-boolean v0, La/c;->d:Z

    .line 384
    .line 385
    if-nez v0, :cond_16

    .line 386
    .line 387
    :try_start_5
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 388
    .line 389
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sput-object v0, La/c;->c:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 394
    .line 395
    :goto_11
    const/4 v15, 0x1

    .line 396
    goto :goto_12

    .line 397
    :catch_5
    move-exception v0

    .line 398
    const-string v15, "Could not find ThemedResourceCache class"

    .line 399
    .line 400
    invoke-static {v13, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    goto :goto_11

    .line 404
    :goto_12
    sput-boolean v15, La/c;->d:Z

    .line 405
    .line 406
    :cond_16
    sget-object v0, La/c;->c:Ljava/lang/Class;

    .line 407
    .line 408
    if-nez v0, :cond_17

    .line 409
    .line 410
    goto :goto_16

    .line 411
    :cond_17
    sget-boolean v15, La/c;->f:Z

    .line 412
    .line 413
    if-nez v15, :cond_18

    .line 414
    .line 415
    :try_start_6
    const-string v15, "mUnthemedEntries"

    .line 416
    .line 417
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sput-object v0, La/c;->e:Ljava/lang/reflect/Field;

    .line 422
    .line 423
    const/4 v15, 0x1

    .line 424
    invoke-virtual {v0, v15}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    .line 425
    .line 426
    .line 427
    :goto_13
    const/4 v15, 0x1

    .line 428
    goto :goto_14

    .line 429
    :catch_6
    move-exception v0

    .line 430
    const-string v15, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 431
    .line 432
    invoke-static {v13, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .line 434
    .line 435
    goto :goto_13

    .line 436
    :goto_14
    sput-boolean v15, La/c;->f:Z

    .line 437
    .line 438
    :cond_18
    sget-object v0, La/c;->e:Ljava/lang/reflect/Field;

    .line 439
    .line 440
    if-nez v0, :cond_19

    .line 441
    .line 442
    goto :goto_16

    .line 443
    :cond_19
    :try_start_7
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    check-cast v0, Landroid/util/LongSparseArray;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    .line 448
    .line 449
    move-object v7, v0

    .line 450
    goto :goto_15

    .line 451
    :catch_7
    move-exception v0

    .line 452
    const-string v9, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 453
    .line 454
    invoke-static {v13, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .line 456
    .line 457
    :goto_15
    if-eqz v7, :cond_1a

    .line 458
    .line 459
    invoke-static {v7}, Lf/r0;->a(Landroid/util/LongSparseArray;)V

    .line 460
    .line 461
    .line 462
    :cond_1a
    :goto_16
    iget v0, v1, Lf/h0;->U:I

    .line 463
    .line 464
    if-eqz v0, :cond_1b

    .line 465
    .line 466
    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    iget v7, v1, Lf/h0;->U:I

    .line 474
    .line 475
    const/4 v9, 0x1

    .line 476
    invoke-virtual {v0, v7, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 477
    .line 478
    .line 479
    goto :goto_17

    .line 480
    :cond_1b
    const/4 v9, 0x1

    .line 481
    :goto_17
    if-eqz v2, :cond_1d

    .line 482
    .line 483
    instance-of v0, v11, Landroid/app/Activity;

    .line 484
    .line 485
    if-eqz v0, :cond_1d

    .line 486
    .line 487
    move-object v0, v11

    .line 488
    check-cast v0, Landroid/app/Activity;

    .line 489
    .line 490
    instance-of v2, v0, Landroidx/lifecycle/t;

    .line 491
    .line 492
    if-eqz v2, :cond_1c

    .line 493
    .line 494
    move-object v2, v0

    .line 495
    check-cast v2, Landroidx/lifecycle/t;

    .line 496
    .line 497
    invoke-interface {v2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, Landroidx/lifecycle/v;

    .line 502
    .line 503
    iget-object v2, v2, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 504
    .line 505
    sget-object v7, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 506
    .line 507
    invoke-virtual {v2, v7}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/n;)Z

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    if-eqz v2, :cond_1d

    .line 512
    .line 513
    :goto_18
    invoke-virtual {v0, v10}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 514
    .line 515
    .line 516
    goto :goto_19

    .line 517
    :cond_1c
    iget-boolean v2, v1, Lf/h0;->Q:Z

    .line 518
    .line 519
    if-eqz v2, :cond_1d

    .line 520
    .line 521
    iget-boolean v2, v1, Lf/h0;->R:Z

    .line 522
    .line 523
    if-nez v2, :cond_1d

    .line 524
    .line 525
    goto :goto_18

    .line 526
    :cond_1d
    :goto_19
    move v10, v9

    .line 527
    goto :goto_1a

    .line 528
    :cond_1e
    move v10, v2

    .line 529
    :goto_1a
    if-eqz v10, :cond_20

    .line 530
    .line 531
    instance-of v0, v11, Lf/q;

    .line 532
    .line 533
    if-eqz v0, :cond_20

    .line 534
    .line 535
    and-int/lit16 v0, v12, 0x200

    .line 536
    .line 537
    if-eqz v0, :cond_1f

    .line 538
    .line 539
    move-object v0, v11

    .line 540
    check-cast v0, Lf/q;

    .line 541
    .line 542
    invoke-virtual {v0, v5}, Lf/q;->onNightModeChanged(I)V

    .line 543
    .line 544
    .line 545
    :cond_1f
    and-int/lit8 v0, v12, 0x4

    .line 546
    .line 547
    if-eqz v0, :cond_20

    .line 548
    .line 549
    check-cast v11, Lf/q;

    .line 550
    .line 551
    invoke-virtual {v11, v6}, Lf/q;->onLocalesChanged(Ld0/h;)V

    .line 552
    .line 553
    .line 554
    :cond_20
    if-eqz v10, :cond_21

    .line 555
    .line 556
    if-eqz v8, :cond_21

    .line 557
    .line 558
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-static {v0}, Lf/z;->b(Landroid/content/res/Configuration;)Ld0/h;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v0}, Lf/z;->c(Ld0/h;)V

    .line 571
    .line 572
    .line 573
    :cond_21
    if-nez v3, :cond_22

    .line 574
    .line 575
    invoke-virtual {v1, v4}, Lf/h0;->x(Landroid/content/Context;)Lf/e0;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lf/e0;->c()V

    .line 580
    .line 581
    .line 582
    goto :goto_1b

    .line 583
    :cond_22
    iget-object v0, v1, Lf/h0;->X:Lf/c0;

    .line 584
    .line 585
    if-eqz v0, :cond_23

    .line 586
    .line 587
    invoke-virtual {v0}, Lf/e0;->a()V

    .line 588
    .line 589
    .line 590
    :cond_23
    :goto_1b
    const/4 v0, 0x3

    .line 591
    if-ne v3, v0, :cond_25

    .line 592
    .line 593
    iget-object v0, v1, Lf/h0;->Y:Lf/c0;

    .line 594
    .line 595
    if-nez v0, :cond_24

    .line 596
    .line 597
    new-instance v0, Lf/c0;

    .line 598
    .line 599
    invoke-direct {v0, v1, v4}, Lf/c0;-><init>(Lf/h0;Landroid/content/Context;)V

    .line 600
    .line 601
    .line 602
    iput-object v0, v1, Lf/h0;->Y:Lf/c0;

    .line 603
    .line 604
    :cond_24
    iget-object v0, v1, Lf/h0;->Y:Lf/c0;

    .line 605
    .line 606
    invoke-virtual {v0}, Lf/e0;->c()V

    .line 607
    .line 608
    .line 609
    goto :goto_1c

    .line 610
    :cond_25
    iget-object v0, v1, Lf/h0;->Y:Lf/c0;

    .line 611
    .line 612
    if-eqz v0, :cond_26

    .line 613
    .line 614
    invoke-virtual {v0}, Lf/e0;->a()V

    .line 615
    .line 616
    .line 617
    :cond_26
    :goto_1c
    return v10
.end method

.method public final n(Landroid/view/Window;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 2
    .line 3
    const-string v1, "AppCompat has already installed itself into the Window"

    .line 4
    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Lf/b0;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    new-instance v1, Lf/b0;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lf/b0;-><init>(Lf/h0;Landroid/view/Window$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lf/h0;->m:Lf/b0;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lf/h0;->j0:[I

    .line 26
    .line 27
    iget-object v1, p0, Lf/h0;->k:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {}, Landroidx/appcompat/widget/a0;->a()Landroidx/appcompat/widget/a0;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    monitor-enter v4

    .line 52
    :try_start_0
    iget-object v5, v4, Landroidx/appcompat/widget/a0;->a:Landroidx/appcompat/widget/d3;

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    invoke-virtual {v5, v1, v3, v6}, Landroidx/appcompat/widget/d3;->f(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v4

    .line 63
    throw p1

    .line 64
    :cond_0
    move-object v1, v2

    .line 65
    :goto_0
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lf/h0;->l:Landroid/view/Window;

    .line 74
    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v0, 0x21

    .line 78
    .line 79
    if-lt p1, v0, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lf/h0;->h0:Landroid/window/OnBackInvokedCallback;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-static {p1, v0}, Lf/a0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lf/h0;->h0:Landroid/window/OnBackInvokedCallback;

    .line 95
    .line 96
    :cond_2
    iget-object p1, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 97
    .line 98
    instance-of v0, p1, Landroid/app/Activity;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    check-cast p1, Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-static {p1}, Lf/a0;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iput-object v2, p0, Lf/h0;->g0:Landroid/window/OnBackInvokedDispatcher;

    .line 118
    .line 119
    :goto_1
    invoke-virtual {p0}, Lf/h0;->H()V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lf/h0;->f0:Lf/l0;

    if-nez v0, :cond_1

    sget-object v0, Le/a;->j:[I

    iget-object v1, p0, Lf/h0;->k:Landroid/content/Context;

    .line 1
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x74

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lf/l0;

    invoke-direct {v0}, Lf/l0;-><init>()V

    :goto_0
    iput-object v0, p0, Lf/h0;->f0:Lf/l0;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/l0;

    iput-object v1, p0, Lf/h0;->f0:Lf/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lf/l0;

    invoke-direct {v0}, Lf/l0;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v6, 0x0

    iget-object v1, p0, Lf/h0;->f0:Lf/l0;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget v0, Landroidx/appcompat/widget/v4;->a:I

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lf/l0;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lf/h0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v2, p0, Lf/h0;->R:Z

    .line 11
    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getRootMenu()Landroidx/appcompat/view/menu/o;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v2, p0, Lf/h0;->M:[Lf/g0;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v1

    .line 25
    :goto_0
    move v4, v1

    .line 26
    :goto_1
    if-ge v4, v3, :cond_2

    .line 27
    .line 28
    aget-object v5, v2, v4

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v6, v5, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 33
    .line 34
    if-ne v6, p1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :goto_2
    if-eqz v5, :cond_3

    .line 42
    .line 43
    iget p1, v5, Lf/g0;->a:I

    .line 44
    .line 45
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_3
    return v1
.end method

.method public final onMenuModeChange(Landroidx/appcompat/view/menu/o;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 13
    .line 14
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lf/h0;->k:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 37
    .line 38
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 44
    .line 45
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 46
    .line 47
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowPending()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Lf/h0;->l:Landroid/view/Window;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v2, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 62
    .line 63
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 66
    .line 67
    .line 68
    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 69
    .line 70
    check-cast v2, Landroidx/appcompat/widget/q4;

    .line 71
    .line 72
    iget-object v2, v2, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/16 v3, 0x6c

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 83
    .line 84
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 87
    .line 88
    .line 89
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 90
    .line 91
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    .line 96
    .line 97
    .line 98
    iget-boolean v0, p0, Lf/h0;->R:Z

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v0, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 107
    .line 108
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-boolean v2, p0, Lf/h0;->R:Z

    .line 115
    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    iget-boolean v2, p0, Lf/h0;->Z:Z

    .line 119
    .line 120
    if-eqz v2, :cond_2

    .line 121
    .line 122
    iget v2, p0, Lf/h0;->a0:I

    .line 123
    .line 124
    and-int/2addr v0, v2

    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v2, p0, Lf/h0;->b0:Lf/v;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lf/v;->run()V

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v2, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iget-boolean v4, v0, Lf/g0;->o:Z

    .line 150
    .line 151
    if-nez v4, :cond_4

    .line 152
    .line 153
    iget-object v4, v0, Lf/g0;->g:Landroid/view/View;

    .line 154
    .line 155
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    iget-object v0, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 162
    .line 163
    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 167
    .line 168
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 174
    .line 175
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 176
    .line 177
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-boolean v0, p1, Lf/g0;->n:Z

    .line 188
    .line 189
    invoke-virtual {p0, p1, v1}, Lf/h0;->r(Lf/g0;Z)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lf/h0;->D(Lf/g0;Landroid/view/KeyEvent;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_0
    return-void
.end method

.method public final p(ILf/g0;Landroidx/appcompat/view/menu/o;)V
    .locals 3

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf/h0;->M:[Lf/g0;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    if-ge p1, v1, :cond_0

    .line 11
    .line 12
    aget-object p2, v0, p1

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iget-object p3, p2, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p2, Lf/g0;->m:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean p2, p0, Lf/h0;->R:Z

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Lf/h0;->m:Lf/b0;

    .line 30
    .line 31
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    iput-boolean v1, p2, Lf/b0;->e:Z

    .line 43
    .line 44
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    iput-boolean v2, p2, Lf/b0;->e:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iput-boolean v2, p2, Lf/b0;->e:Z

    .line 52
    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public final q(Landroidx/appcompat/view/menu/o;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/h0;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf/h0;->L:Z

    .line 8
    .line 9
    iget-object v0, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-boolean v1, p0, Lf/h0;->R:Z

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const/16 v1, 0x6c

    .line 38
    .line 39
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lf/h0;->L:Z

    .line 44
    .line 45
    return-void
.end method

.method public final r(Lf/g0;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget v0, p1, Lf/g0;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/widget/q4;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lf/h0;->q(Landroidx/appcompat/view/menu/o;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lf/h0;->k:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "window"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/WindowManager;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-boolean v2, p1, Lf/g0;->m:Z

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, p1, Lf/g0;->e:Lf/f0;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    iget p2, p1, Lf/g0;->a:I

    .line 61
    .line 62
    invoke-virtual {p0, p2, p1, v1}, Lf/h0;->p(ILf/g0;Landroidx/appcompat/view/menu/o;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const/4 p2, 0x0

    .line 66
    iput-boolean p2, p1, Lf/g0;->k:Z

    .line 67
    .line 68
    iput-boolean p2, p1, Lf/g0;->l:Z

    .line 69
    .line 70
    iput-boolean p2, p1, Lf/g0;->m:Z

    .line 71
    .line 72
    iput-object v1, p1, Lf/g0;->f:Landroid/view/View;

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p1, Lf/g0;->n:Z

    .line 76
    .line 77
    iget-object p2, p0, Lf/h0;->N:Lf/g0;

    .line 78
    .line 79
    if-ne p2, p1, :cond_2

    .line 80
    .line 81
    iput-object v1, p0, Lf/h0;->N:Lf/g0;

    .line 82
    .line 83
    :cond_2
    iget p1, p1, Lf/g0;->a:I

    .line 84
    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Lf/h0;->H()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method

.method public final t(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/core/view/n;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    instance-of v0, v0, Lf/j0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0, p1}, La/c;->d(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/16 v3, 0x52

    .line 33
    .line 34
    if-ne v0, v3, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lf/h0;->m:Lf/b0;

    .line 37
    .line 38
    iget-object v4, p0, Lf/h0;->l:Landroid/view/Window;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :try_start_0
    iput-boolean v2, v0, Lf/b0;->d:Z

    .line 48
    .line 49
    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iput-boolean v1, v0, Lf/b0;->d:Z

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iput-boolean v1, v0, Lf/b0;->d:Z

    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, 0x4

    .line 71
    if-nez v4, :cond_7

    .line 72
    .line 73
    if-eq v0, v5, :cond_4

    .line 74
    .line 75
    if-eq v0, v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_11

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-boolean v1, v0, Lf/g0;->m:Z

    .line 89
    .line 90
    if-nez v1, :cond_11

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    .line 93
    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    and-int/lit16 p1, p1, 0x80

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    move v2, v1

    .line 107
    :goto_0
    iput-boolean v2, p0, Lf/h0;->O:Z

    .line 108
    .line 109
    :cond_6
    :goto_1
    move v2, v1

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_7
    if-eq v0, v5, :cond_10

    .line 113
    .line 114
    if-eq v0, v3, :cond_8

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    iget-object v0, p0, Lf/h0;->v:Li/c;

    .line 118
    .line 119
    if-eqz v0, :cond_9

    .line 120
    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_9
    invoke-virtual {p0, v1}, Lf/h0;->y(I)Lf/g0;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 128
    .line 129
    iget-object v4, p0, Lf/h0;->k:Landroid/content/Context;

    .line 130
    .line 131
    if-eqz v3, :cond_b

    .line 132
    .line 133
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 134
    .line 135
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 136
    .line 137
    .line 138
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 139
    .line 140
    check-cast v3, Landroidx/appcompat/widget/q4;

    .line 141
    .line 142
    iget-object v3, v3, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->canShowOverflowMenu()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_b

    .line 149
    .line 150
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_b

    .line 159
    .line 160
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 161
    .line 162
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 163
    .line 164
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 165
    .line 166
    .line 167
    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 168
    .line 169
    check-cast v3, Landroidx/appcompat/widget/q4;

    .line 170
    .line 171
    iget-object v3, v3, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_a

    .line 178
    .line 179
    iget-boolean v3, p0, Lf/h0;->R:Z

    .line 180
    .line 181
    if-nez v3, :cond_11

    .line 182
    .line 183
    invoke-virtual {p0, v0, p1}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_11

    .line 188
    .line 189
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 190
    .line 191
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 194
    .line 195
    .line 196
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 197
    .line 198
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 199
    .line 200
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    goto :goto_3

    .line 207
    :cond_a
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 208
    .line 209
    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e()V

    .line 212
    .line 213
    .line 214
    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->e:Landroidx/appcompat/widget/y1;

    .line 215
    .line 216
    check-cast p1, Landroidx/appcompat/widget/q4;

    .line 217
    .line 218
    iget-object p1, p1, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    goto :goto_3

    .line 225
    :cond_b
    iget-boolean v3, v0, Lf/g0;->m:Z

    .line 226
    .line 227
    if-nez v3, :cond_e

    .line 228
    .line 229
    iget-boolean v5, v0, Lf/g0;->l:Z

    .line 230
    .line 231
    if-eqz v5, :cond_c

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_c
    iget-boolean v3, v0, Lf/g0;->k:Z

    .line 235
    .line 236
    if-eqz v3, :cond_11

    .line 237
    .line 238
    iget-boolean v3, v0, Lf/g0;->o:Z

    .line 239
    .line 240
    if-eqz v3, :cond_d

    .line 241
    .line 242
    iput-boolean v1, v0, Lf/g0;->k:Z

    .line 243
    .line 244
    invoke-virtual {p0, v0, p1}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_11

    .line 249
    .line 250
    :cond_d
    invoke-virtual {p0, v0, p1}, Lf/h0;->D(Lf/g0;Landroid/view/KeyEvent;)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_e
    :goto_2
    invoke-virtual {p0, v0, v2}, Lf/h0;->r(Lf/g0;Z)V

    .line 255
    .line 256
    .line 257
    move p1, v3

    .line 258
    :goto_3
    if-eqz p1, :cond_11

    .line 259
    .line 260
    :goto_4
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "audio"

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Landroid/media/AudioManager;

    .line 271
    .line 272
    if-eqz p1, :cond_f

    .line 273
    .line 274
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_f
    const-string p1, "AppCompatDelegate"

    .line 279
    .line 280
    const-string v0, "Couldn\'t get audio manager"

    .line 281
    .line 282
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_10
    invoke-virtual {p0}, Lf/h0;->C()Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_6

    .line 291
    .line 292
    :cond_11
    :goto_5
    return v2
.end method

.method public final u(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf/h0;->y(I)Lf/g0;

    move-result-object v0

    iget-object v1, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/o;->saveActionViewStates(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lf/g0;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    iget-object v1, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lf/g0;->o:Z

    iput-boolean v1, v0, Lf/g0;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf/h0;->y(I)Lf/g0;

    move-result-object v0

    iput-boolean p1, v0, Lf/g0;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lf/h0;->F(Lf/g0;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final v()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lf/h0;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_1b

    .line 4
    .line 5
    sget-object v0, Le/a;->j:[I

    .line 6
    .line 7
    iget-object v1, p0, Lf/h0;->k:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/16 v3, 0x75

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1a

    .line 20
    .line 21
    const/16 v4, 0x7e

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v6, 0x6c

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v7}, Lf/h0;->g(I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v6}, Lf/h0;->g(I)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    const/16 v3, 0x76

    .line 47
    .line 48
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/16 v4, 0x6d

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lf/h0;->g(I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    const/16 v3, 0x77

    .line 60
    .line 61
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0xa

    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lf/h0;->g(I)Z

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iput-boolean v3, p0, Lf/h0;->J:Z

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lf/h0;->w()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lf/h0;->l:Landroid/view/Window;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-boolean v3, p0, Lf/h0;->K:Z

    .line 94
    .line 95
    const/4 v8, 0x2

    .line 96
    const/4 v9, 0x0

    .line 97
    if-nez v3, :cond_9

    .line 98
    .line 99
    iget-boolean v3, p0, Lf/h0;->J:Z

    .line 100
    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    const v3, 0x7f0d000c

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/view/ViewGroup;

    .line 111
    .line 112
    iput-boolean v5, p0, Lf/h0;->H:Z

    .line 113
    .line 114
    iput-boolean v5, p0, Lf/h0;->G:Z

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_4
    iget-boolean v2, p0, Lf/h0;->G:Z

    .line 119
    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    new-instance v2, Landroid/util/TypedValue;

    .line 123
    .line 124
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const v10, 0x7f04000b

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v10, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 135
    .line 136
    .line 137
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    new-instance v3, Li/f;

    .line 142
    .line 143
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 144
    .line 145
    invoke-direct {v3, v1, v2}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    move-object v3, v1

    .line 150
    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const v3, 0x7f0d0017

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Landroid/view/ViewGroup;

    .line 162
    .line 163
    const v3, 0x7f0a0186

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroidx/appcompat/widget/x1;

    .line 171
    .line 172
    iput-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 173
    .line 174
    iget-object v10, p0, Lf/h0;->l:Landroid/view/Window;

    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-interface {v3, v10}, Landroidx/appcompat/widget/x1;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 181
    .line 182
    .line 183
    iget-boolean v3, p0, Lf/h0;->H:Z

    .line 184
    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 188
    .line 189
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-boolean v3, p0, Lf/h0;->E:Z

    .line 195
    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 199
    .line 200
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 201
    .line 202
    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    iget-boolean v3, p0, Lf/h0;->F:Z

    .line 206
    .line 207
    if-eqz v3, :cond_b

    .line 208
    .line 209
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 210
    .line 211
    const/4 v4, 0x5

    .line 212
    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d(I)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_8
    move-object v2, v9

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    iget-boolean v3, p0, Lf/h0;->I:Z

    .line 221
    .line 222
    if-eqz v3, :cond_a

    .line 223
    .line 224
    const v3, 0x7f0d0016

    .line 225
    .line 226
    .line 227
    :goto_2
    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Landroid/view/ViewGroup;

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_a
    const v3, 0x7f0d0015

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_b
    :goto_3
    if-eqz v2, :cond_19

    .line 239
    .line 240
    new-instance v3, Lf/w;

    .line 241
    .line 242
    invoke-direct {v3, p0, v5}, Lf/w;-><init>(Lf/h0;I)V

    .line 243
    .line 244
    .line 245
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 246
    .line 247
    invoke-static {v2, v3}, Landroidx/core/view/q0;->u(Landroid/view/View;Landroidx/core/view/a0;)V

    .line 248
    .line 249
    .line 250
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 251
    .line 252
    if-nez v3, :cond_c

    .line 253
    .line 254
    const v3, 0x7f0a0657

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Landroid/widget/TextView;

    .line 262
    .line 263
    iput-object v3, p0, Lf/h0;->C:Landroid/widget/TextView;

    .line 264
    .line 265
    :cond_c
    sget-object v3, Landroidx/appcompat/widget/x4;->a:Ljava/lang/reflect/Method;

    .line 266
    .line 267
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    const-string v4, "makeOptionalFitsSystemWindows"

    .line 272
    .line 273
    new-array v10, v5, [Ljava/lang/Class;

    .line 274
    .line 275
    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-nez v4, :cond_d

    .line 284
    .line 285
    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 286
    .line 287
    .line 288
    :cond_d
    new-array v4, v5, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    :catch_0
    const v3, 0x7f0a004b

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 301
    .line 302
    iget-object v4, p0, Lf/h0;->l:Landroid/view/Window;

    .line 303
    .line 304
    const v10, 0x1020002

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Landroid/view/ViewGroup;

    .line 312
    .line 313
    if-eqz v4, :cond_f

    .line 314
    .line 315
    :goto_4
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-lez v11, :cond_e

    .line 320
    .line 321
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_e
    const/4 v11, -0x1

    .line 333
    invoke-virtual {v4, v11}, Landroid/view/View;->setId(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v10}, Landroid/view/View;->setId(I)V

    .line 337
    .line 338
    .line 339
    instance-of v11, v4, Landroid/widget/FrameLayout;

    .line 340
    .line 341
    if-eqz v11, :cond_f

    .line 342
    .line 343
    check-cast v4, Landroid/widget/FrameLayout;

    .line 344
    .line 345
    invoke-virtual {v4, v9}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 346
    .line 347
    .line 348
    :cond_f
    iget-object v4, p0, Lf/h0;->l:Landroid/view/Window;

    .line 349
    .line 350
    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    new-instance v4, Lf/w;

    .line 354
    .line 355
    invoke-direct {v4, p0, v8}, Lf/w;-><init>(Lf/h0;I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/w1;)V

    .line 359
    .line 360
    .line 361
    iput-object v2, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 362
    .line 363
    iget-object v2, p0, Lf/h0;->j:Ljava/lang/Object;

    .line 364
    .line 365
    instance-of v3, v2, Landroid/app/Activity;

    .line 366
    .line 367
    if-eqz v3, :cond_10

    .line 368
    .line 369
    check-cast v2, Landroid/app/Activity;

    .line 370
    .line 371
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    goto :goto_5

    .line 376
    :cond_10
    iget-object v2, p0, Lf/h0;->r:Ljava/lang/CharSequence;

    .line 377
    .line 378
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-nez v3, :cond_13

    .line 383
    .line 384
    iget-object v3, p0, Lf/h0;->s:Landroidx/appcompat/widget/x1;

    .line 385
    .line 386
    if-eqz v3, :cond_11

    .line 387
    .line 388
    invoke-interface {v3, v2}, Landroidx/appcompat/widget/x1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_11
    iget-object v3, p0, Lf/h0;->p:Lf/b;

    .line 393
    .line 394
    if-eqz v3, :cond_12

    .line 395
    .line 396
    invoke-virtual {v3, v2}, Lf/b;->q(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_12
    iget-object v3, p0, Lf/h0;->C:Landroid/widget/TextView;

    .line 401
    .line 402
    if-eqz v3, :cond_13

    .line 403
    .line 404
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    :cond_13
    :goto_6
    iget-object v2, p0, Lf/h0;->B:Landroid/view/ViewGroup;

    .line 408
    .line 409
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    check-cast v2, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 414
    .line 415
    iget-object v3, p0, Lf/h0;->l:Landroid/view/Window;

    .line 416
    .line 417
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    iget-object v10, v2, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    .line 438
    .line 439
    invoke-virtual {v10, v4, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    .line 441
    .line 442
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 443
    .line 444
    invoke-static {v2}, Landroidx/core/view/n0;->c(Landroid/view/View;)Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eqz v3, :cond_14

    .line 449
    .line 450
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 451
    .line 452
    .line 453
    :cond_14
    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const/16 v1, 0x7c

    .line 458
    .line 459
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 464
    .line 465
    .line 466
    const/16 v1, 0x7d

    .line 467
    .line 468
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 473
    .line 474
    .line 475
    const/16 v1, 0x7a

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    if-eqz v3, :cond_15

    .line 482
    .line 483
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 488
    .line 489
    .line 490
    :cond_15
    const/16 v1, 0x7b

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    if-eqz v3, :cond_16

    .line 497
    .line 498
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 503
    .line 504
    .line 505
    :cond_16
    const/16 v1, 0x78

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    if-eqz v3, :cond_17

    .line 512
    .line 513
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 518
    .line 519
    .line 520
    :cond_17
    const/16 v1, 0x79

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-eqz v3, :cond_18

    .line 527
    .line 528
    invoke-virtual {v2}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 533
    .line 534
    .line 535
    :cond_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 539
    .line 540
    .line 541
    iput-boolean v7, p0, Lf/h0;->A:Z

    .line 542
    .line 543
    invoke-virtual {p0, v5}, Lf/h0;->y(I)Lf/g0;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    iget-boolean v1, p0, Lf/h0;->R:Z

    .line 548
    .line 549
    if-nez v1, :cond_1b

    .line 550
    .line 551
    iget-object v0, v0, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 552
    .line 553
    if-nez v0, :cond_1b

    .line 554
    .line 555
    invoke-virtual {p0, v6}, Lf/h0;->A(I)V

    .line 556
    .line 557
    .line 558
    goto :goto_7

    .line 559
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 560
    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    .line 564
    .line 565
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-boolean v2, p0, Lf/h0;->G:Z

    .line 569
    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v2, ", windowActionBarOverlay: "

    .line 574
    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget-boolean v2, p0, Lf/h0;->H:Z

    .line 579
    .line 580
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v2, ", android:windowIsFloating: "

    .line 584
    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    iget-boolean v2, p0, Lf/h0;->J:Z

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v2, ", windowActionModeOverlay: "

    .line 594
    .line 595
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget-boolean v2, p0, Lf/h0;->I:Z

    .line 599
    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v2, ", windowNoTitle: "

    .line 604
    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget-boolean v2, p0, Lf/h0;->K:Z

    .line 609
    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v2, " }"

    .line 614
    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    throw v0

    .line 626
    :cond_1a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 627
    .line 628
    .line 629
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 630
    .line 631
    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    .line 632
    .line 633
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0

    .line 637
    :cond_1b
    :goto_7
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/h0;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/h0;->n(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lf/h0;->l:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x(Landroid/content/Context;)Lf/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/h0;->X:Lf/c0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lf/c0;

    .line 6
    .line 7
    sget-object v1, Lv1/t;->e:Lv1/t;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lv1/t;

    .line 16
    .line 17
    const-string v2, "location"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/location/LocationManager;

    .line 24
    .line 25
    invoke-direct {v1, p1, v2}, Lv1/t;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lv1/t;->e:Lv1/t;

    .line 29
    .line 30
    :cond_0
    sget-object p1, Lv1/t;->e:Lv1/t;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lf/c0;-><init>(Lf/h0;Lv1/t;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lf/h0;->X:Lf/c0;

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lf/h0;->X:Lf/c0;

    .line 38
    .line 39
    return-object p1
.end method

.method public final y(I)Lf/g0;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/h0;->M:[Lf/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Lf/g0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v2, p0, Lf/h0;->M:[Lf/g0;

    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :cond_2
    aget-object v2, v0, p1

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    new-instance v2, Lf/g0;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput p1, v2, Lf/g0;->a:I

    .line 32
    .line 33
    iput-boolean v1, v2, Lf/g0;->n:Z

    .line 34
    .line 35
    aput-object v2, v0, p1

    .line 36
    .line 37
    :cond_3
    return-object v2
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/h0;->v()V

    iget-boolean v0, p0, Lf/h0;->G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/h0;->p:Lf/b;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lf/h0;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Lf/y0;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lf/h0;->H:Z

    invoke-direct {v1, v0, v2}, Lf/y0;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v1, p0, Lf/h0;->p:Lf/b;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Lf/y0;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lf/y0;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lf/h0;->p:Lf/b;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lf/h0;->c0:Z

    invoke-virtual {v0, v1}, Lf/b;->l(Z)V

    :cond_3
    :goto_2
    return-void
.end method
