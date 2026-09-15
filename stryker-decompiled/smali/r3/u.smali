.class public final synthetic Lr3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/localnetwork/LocalMain;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/localnetwork/LocalMain;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lr3/u;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/u;->b:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lr3/u;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lr3/u;->b:Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->f()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/localnetwork/LocalMain;->b:Landroid/content/Context;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 26
    .line 27
    new-instance v1, Landroidx/activity/b;

    .line 28
    .line 29
    const/16 v2, 0x19

    .line 30
    .line 31
    invoke-direct {v1, v0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;->j()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
