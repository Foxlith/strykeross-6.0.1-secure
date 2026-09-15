.class public final synthetic Lk4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lk4/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lk4/g;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lk4/g;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lk4/g;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Lk4/f;

    .line 14
    .line 15
    new-instance v1, Lk4/h;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lk4/h;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {p1, v0, v2, v1}, Lk4/f;-><init>(Landroidx/fragment/app/Fragment;Lf3/b;Lk4/h;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->h:Lk4/f;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->i:Landroidx/activity/result/c;

    .line 27
    .line 28
    iput-object v0, p1, Lk4/f;->f:Landroidx/activity/result/c;

    .line 29
    .line 30
    iget-object p1, p1, Lk4/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/lang/Thread;

    .line 42
    .line 43
    new-instance v1, Lk4/i;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, v0, v2}, Lk4/i;-><init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;I)V

    .line 47
    .line 48
    .line 49
    const-string v0, "arsenal-restore"

    .line 50
    .line 51
    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
