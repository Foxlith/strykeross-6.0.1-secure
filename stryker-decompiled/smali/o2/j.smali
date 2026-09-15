.class public final synthetic Lo2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo2/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo2/j;->b:Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lo2/j;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lo2/j;->b:Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->c:Ll4/l;

    .line 9
    .line 10
    iget v1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 11
    .line 12
    invoke-static {p1, v1}, Lorg/bouncycastle/math/ec/a;->b(Ll4/l;I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->a:Landroidx/fragment/app/a0;

    .line 16
    .line 17
    check-cast p1, Lcom/zalexdev/stryker/appintro/AppIntroActivity;

    .line 18
    .line 19
    iget v1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->e(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 25
    .line 26
    new-instance v1, Landroidx/activity/b;

    .line 27
    .line 28
    const/16 v2, 0xb

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->k:I

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->k:I

    .line 47
    .line 48
    iget-boolean p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->j:Z

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x2

    .line 54
    iput p1, v0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d()V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
