.class public final Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput p2, p0, Lf/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lf/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lf/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lf/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/preference/Preference;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->j(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Lf/l;

    .line 15
    .line 16
    iget-object v0, v1, Lf/l;->o:Landroid/widget/Button;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lf/l;->q:Landroid/os/Message;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    :goto_0
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, v1, Lf/l;->s:Landroid/widget/Button;

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v1, Lf/l;->u:Landroid/os/Message;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, v1, Lf/l;->w:Landroid/widget/Button;

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    iget-object p1, v1, Lf/l;->y:Landroid/os/Message;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_1
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p1, v1, Lf/l;->P:Lf/j;

    .line 58
    .line 59
    iget-object v0, v1, Lf/l;->b:Lf/j0;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
