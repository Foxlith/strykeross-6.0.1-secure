.class public final synthetic Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/a;->b:Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Ll3/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ll3/a;->b:Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/hid/ui/HidFragment;->f(Lj3/a;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidFragment;->l:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of p1, p1, Lcom/zalexdev/stryker/MainActivity;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const p1, 0x7f0a067c

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroidx/fragment/app/x0;->e(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
