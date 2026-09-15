.class public final Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/m0;Ld0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/e;->a:I

    iput-object p1, p0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/h;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/e;->a:I

    iput-object p1, p0, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/fragment/app/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/fragment/app/b0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    new-instance p1, Landroidx/fragment/app/b0;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
