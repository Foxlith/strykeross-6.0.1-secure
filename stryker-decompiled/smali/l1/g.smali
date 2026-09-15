.class public final Ll1/g;
.super Ll1/k;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll1/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll1/g;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Ll1/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Ll1/g;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPageSelected(I)V
    .locals 2

    .line 1
    iget v0, p0, Ll1/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ll1/g;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, v1, Landroidx/viewpager2/widget/ViewPager2;->j:Ll1/p;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget v0, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 25
    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    iput p1, v1, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 29
    .line 30
    iget-object p1, v1, Landroidx/viewpager2/widget/ViewPager2;->u:Ll1/m;

    .line 31
    .line 32
    invoke-virtual {p1}, Ll1/m;->i()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
