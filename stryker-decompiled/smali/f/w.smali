.class public final Lf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;
.implements Landroidx/appcompat/widget/j2;
.implements Landroidx/appcompat/widget/w1;
.implements Lf/c;
.implements Landroidx/appcompat/view/menu/b0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf/h0;


# direct methods
.method public synthetic constructor <init>(Lf/h0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lf/w;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lf/w;->b:Lf/h0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Landroidx/appcompat/view/menu/o;)Z
    .locals 4

    .line 1
    iget v0, p0, Lf/w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x6c

    .line 5
    .line 6
    iget-object v3, p0, Lf/w;->b:Lf/h0;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getRootMenu()Landroidx/appcompat/view/menu/o;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, v3, Lf/h0;->G:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v3, Lf/h0;->l:Landroid/view/Window;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean v3, v3, Lf/h0;->R:Z

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1

    .line 37
    :pswitch_0
    iget-object v0, v3, Lf/h0;->l:Landroid/view/Window;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/core/view/q2;->d()I

    move-result v0

    iget-object v1, p0, Lf/w;->b:Lf/h0;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lf/h0;->I(Landroidx/core/view/q2;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/q2;->b()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/q2;->c()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/q2;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/view/q2;->f(IIII)Landroidx/core/view/q2;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/c1;->j(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 9

    .line 1
    iget v0, p0, Lf/w;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/w;->b:Lf/h0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o;->getRootMenu()Landroidx/appcompat/view/menu/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    .line 16
    move v4, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v2

    .line 19
    :goto_0
    if-eqz v4, :cond_1

    .line 20
    .line 21
    move-object p1, v0

    .line 22
    :cond_1
    iget-object v5, v1, Lf/h0;->M:[Lf/g0;

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v6, v2

    .line 29
    :goto_1
    if-ge v2, v6, :cond_4

    .line 30
    .line 31
    aget-object v7, v5, v2

    .line 32
    .line 33
    if-eqz v7, :cond_3

    .line 34
    .line 35
    iget-object v8, v7, Lf/g0;->h:Landroidx/appcompat/view/menu/o;

    .line 36
    .line 37
    if-ne v8, p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v7, 0x0

    .line 44
    :goto_2
    if-eqz v7, :cond_6

    .line 45
    .line 46
    if-eqz v4, :cond_5

    .line 47
    .line 48
    iget p1, v7, Lf/g0;->a:I

    .line 49
    .line 50
    invoke-virtual {v1, p1, v7, v0}, Lf/h0;->p(ILf/g0;Landroidx/appcompat/view/menu/o;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7, v3}, Lf/h0;->r(Lf/g0;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v1, v7, p2}, Lf/h0;->r(Lf/g0;Z)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {v1, p1}, Lf/h0;->q(Landroidx/appcompat/view/menu/o;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
