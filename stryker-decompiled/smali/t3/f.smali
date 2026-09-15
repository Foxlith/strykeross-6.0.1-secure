.class public final synthetic Lt3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/i;

.field public final synthetic c:Lcom/zalexdev/stryker/custom/Device;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ln3/i;Lcom/zalexdev/stryker/custom/Device;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lt3/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt3/f;->b:Ln3/i;

    .line 7
    .line 8
    iput-object p2, p0, Lt3/f;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 9
    .line 10
    iput p3, p0, Lt3/f;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lt3/f;->a:I

    .line 2
    .line 3
    iget v1, p0, Lt3/f;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Lt3/f;->c:Lcom/zalexdev/stryker/custom/Device;

    .line 6
    .line 7
    iget-object v3, p0, Lt3/f;->b:Ln3/i;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v3, Ln3/i;->t:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lr3/v;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lr3/v;->d(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, v3, Ln3/i;->t:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lr3/v;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lr3/v;->d(Lcom/zalexdev/stryker/custom/Device;I)V

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
