.class public final Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput p2, p0, Landroidx/fragment/app/b0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/b0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/b0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/fragment/app/ListFragment;

    .line 9
    .line 10
    iget-object v0, v1, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 11
    .line 12
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-static {v1, v0}, Landroidx/fragment/app/g1;->b(Ljava/util/ArrayList;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    check-cast v1, Landroidx/fragment/app/u0;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v1, v0}, Landroidx/fragment/app/u0;->s(Z)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    check-cast v1, Landroidx/fragment/app/DialogFragment;

    .line 31
    .line 32
    invoke-static {v1}, Landroidx/fragment/app/DialogFragment;->access$100(Landroidx/fragment/app/DialogFragment;)Landroid/content/DialogInterface$OnDismissListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1}, Landroidx/fragment/app/DialogFragment;->access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    check-cast v1, Landroidx/fragment/app/e;

    .line 45
    .line 46
    iget-object v0, v1, Landroidx/fragment/app/e;->b:Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v2, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v1, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Landroidx/fragment/app/h;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_4
    check-cast v1, Landroidx/fragment/app/e;

    .line 64
    .line 65
    iget-object v0, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v0, v1, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v2, v0

    .line 78
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Landroidx/fragment/app/m0;

    .line 87
    .line 88
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 89
    .line 90
    iget-object v1, v1, Landroidx/fragment/app/e;->e:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ld0/d;

    .line 93
    .line 94
    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/m0;->c(Landroidx/fragment/app/Fragment;Ld0/d;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
