.class public final synthetic Lk4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

.field public final synthetic c:Le3/b;

.field public final synthetic d:Lf3/c;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;Le3/b;Lf3/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lk4/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lk4/j;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lk4/j;->c:Le3/b;

    .line 9
    .line 10
    iput-object p3, p0, Lk4/j;->d:Lf3/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lk4/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lk4/j;->d:Lf3/c;

    .line 4
    .line 5
    iget-object v2, p0, Lk4/j;->c:Le3/b;

    .line 6
    .line 7
    iget-object v3, p0, Lk4/j;->b:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 13
    .line 14
    invoke-virtual {v3, v2, v1}, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d(Le3/b;Lf3/c;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v3, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->a:Ll4/l;

    .line 18
    .line 19
    const v1, 0x7f1300a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->j:I

    .line 31
    .line 32
    invoke-virtual {v3, v2, v1}, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->d(Le3/b;Lf3/c;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
