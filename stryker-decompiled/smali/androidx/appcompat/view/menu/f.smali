.class public final Landroidx/appcompat/view/menu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/view/menu/x;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/x;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/f;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/view/menu/f;->b:Landroidx/appcompat/view/menu/x;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/appcompat/view/menu/h0;

    .line 9
    .line 10
    iget-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    .line 25
    .line 26
    :cond_0
    iget-object v0, v1, Landroidx/appcompat/view/menu/h0;->q:Landroid/view/ViewTreeObserver;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/appcompat/view/menu/h0;->j:Landroidx/appcompat/view/menu/e;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    check-cast v1, Landroidx/appcompat/view/menu/i;

    .line 38
    .line 39
    iget-object v0, v1, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, v1, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 54
    .line 55
    :cond_2
    iget-object v0, v1, Landroidx/appcompat/view/menu/i;->z:Landroid/view/ViewTreeObserver;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/appcompat/view/menu/i;->j:Landroidx/appcompat/view/menu/e;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
