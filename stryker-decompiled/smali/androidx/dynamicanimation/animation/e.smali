.class public final Landroidx/dynamicanimation/animation/e;
.super Landroidx/dynamicanimation/animation/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/dynamicanimation/animation/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/j;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/e;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    nop

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Landroid/view/View;F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/e;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :sswitch_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :sswitch_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/e;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :sswitch_0
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :sswitch_1
    check-cast p1, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :sswitch_2
    check-cast p1, Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :sswitch_3
    check-cast p1, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :sswitch_4
    check-cast p1, Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/e;->a(Landroid/view/View;)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    nop

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/dynamicanimation/animation/e;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :sswitch_0
    check-cast p1, Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :sswitch_1
    check-cast p1, Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :sswitch_2
    check-cast p1, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_3
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :sswitch_4
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/e;->b(Landroid/view/View;F)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
