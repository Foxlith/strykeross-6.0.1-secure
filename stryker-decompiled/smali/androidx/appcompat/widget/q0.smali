.class public final Landroidx/appcompat/widget/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/widget/q0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/q0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/q0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/q0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/appcompat/widget/x0;

    .line 9
    .line 10
    iget-object v0, v1, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 11
    .line 12
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/appcompat/widget/x0;->F:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/appcompat/widget/x0;->r()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->d()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    check-cast v1, Landroidx/appcompat/widget/a1;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/appcompat/widget/a1;->getInternalPopup()Landroidx/appcompat/widget/z0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-static {v1}, Landroidx/appcompat/widget/s0;->b(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v1}, Landroidx/appcompat/widget/s0;->a(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, v1, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 60
    .line 61
    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/z0;->l(II)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {v0, p0}, Landroidx/appcompat/widget/r0;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
