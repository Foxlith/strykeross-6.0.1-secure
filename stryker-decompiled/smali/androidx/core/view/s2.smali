.class public abstract Landroidx/core/view/s2;
.super Ld/d;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/Window;

.field public final f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ld/d;-><init>(I)V

    iput-object p1, p0, Landroidx/core/view/s2;->e:Landroid/view/Window;

    iput-object p2, p0, Landroidx/core/view/s2;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x100

    .line 4
    .line 5
    if-gt v1, v2, :cond_4

    .line 6
    .line 7
    and-int v2, p1, v1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    if-eq v1, v0, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v2, p0, Landroidx/core/view/s2;->e:Landroid/view/Window;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "input_method"

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v3, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/core/view/s2;->v(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v2, 0x4

    .line 54
    goto :goto_1

    .line 55
    :goto_2
    shl-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroidx/core/view/s2;->w(I)V

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroidx/core/view/s2;->v(I)V

    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x100

    .line 4
    .line 5
    if-gt v1, v2, :cond_8

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    and-int v3, v2, v1

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object v3, p0, Landroidx/core/view/s2;->e:Landroid/view/Window;

    .line 15
    .line 16
    if-eq v1, v0, :cond_6

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq v1, v4, :cond_5

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_1
    iget-object v2, p0, Landroidx/core/view/s2;->f:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v3}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 45
    .line 46
    .line 47
    :goto_2
    if-nez v2, :cond_4

    .line 48
    .line 49
    const v2, 0x1020002

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_4
    if-eqz v2, :cond_7

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_7

    .line 63
    .line 64
    new-instance v3, Landroidx/core/view/r2;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v3, v4, v2}, Landroidx/core/view/r2;-><init>(ILandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    invoke-virtual {p0, v4}, Landroidx/core/view/s2;->w(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    const/4 v2, 0x4

    .line 79
    invoke-virtual {p0, v2}, Landroidx/core/view/s2;->w(I)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x400

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    .line 86
    .line 87
    :cond_7
    :goto_3
    shl-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    return-void
.end method

.method public final v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/s2;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final w(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/s2;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
