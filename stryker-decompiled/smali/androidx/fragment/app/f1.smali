.class public final Landroidx/fragment/app/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k;Ljava/util/ArrayList;Landroidx/fragment/app/s1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroidx/fragment/app/f1;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/fragment/app/f1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/fragment/app/f1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/fragment/app/f1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/f1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/f1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/fragment/app/f1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Landroidx/fragment/app/s1;

    .line 15
    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    check-cast v1, Landroidx/fragment/app/k;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, v2, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 33
    .line 34
    iget v1, v2, Landroidx/fragment/app/s1;->a:I

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->a(ILandroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    :pswitch_0
    check-cast v3, Landroidx/fragment/app/m0;

    .line 41
    .line 42
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    check-cast v1, Ld0/d;

    .line 45
    .line 46
    invoke-virtual {v3, v2, v1}, Landroidx/fragment/app/m0;->c(Landroidx/fragment/app/Fragment;Ld0/d;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    check-cast v3, Landroidx/fragment/app/m0;

    .line 51
    .line 52
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 53
    .line 54
    check-cast v1, Ld0/d;

    .line 55
    .line 56
    invoke-virtual {v3, v2, v1}, Landroidx/fragment/app/m0;->c(Landroidx/fragment/app/Fragment;Ld0/d;)V

    .line 57
    .line 58
    .line 59
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
