.class public final Lw0/n;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lw0/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lw0/n;->b:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    const/16 v0, 0x1000

    .line 39
    .line 40
    if-ne p2, v0, :cond_0

    .line 41
    .line 42
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lw0/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw0/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 9
    .line 10
    .line 11
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v1

    .line 21
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p2, p1}, Lh0/h;->k(Z)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/16 p1, 0x1000

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lh0/h;->a(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 p1, -0x1

    .line 45
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/16 p1, 0x2000

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lh0/h;->a(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :pswitch_0
    check-cast v1, Lw0/o;

    .line 58
    .line 59
    iget-object v0, v1, Lw0/o;->b:Landroidx/core/view/c;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v1, Lw0/o;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    instance-of v1, v0, Lw0/m;

    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    check-cast v0, Lw0/m;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lw0/m;->b(I)Landroidx/preference/Preference;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->i(Lh0/h;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget v0, p0, Lw0/n;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw0/n;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p3, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/16 p1, 0x1000

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eq p2, p1, :cond_3

    .line 20
    .line 21
    const/16 p1, 0x2000

    .line 22
    .line 23
    if-eq p2, p1, :cond_2

    .line 24
    .line 25
    :cond_1
    move p3, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    rsub-int/lit8 p1, p3, 0x0

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 46
    .line 47
    invoke-virtual {v1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    add-int/2addr p1, p3

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return p3

    .line 60
    :pswitch_0
    check-cast v1, Lw0/o;

    .line 61
    .line 62
    iget-object v0, v1, Lw0/o;->b:Landroidx/core/view/c;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
