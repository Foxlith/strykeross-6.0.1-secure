.class public final Landroidx/appcompat/widget/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/v2;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/v2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/widget/o2;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/o2;->b:Landroidx/appcompat/widget/v2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/o2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/o2;->b:Landroidx/appcompat/widget/v2;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/core/view/n0;->b(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, v1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-le v0, v2, :cond_0

    .line 33
    .line 34
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, v1, Landroidx/appcompat/widget/v2;->m:I

    .line 41
    .line 42
    if-gt v0, v2, :cond_0

    .line 43
    .line 44
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->d()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/i2;->setListSelectionHidden(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
