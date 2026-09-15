.class public final synthetic Lp2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/ArsenalFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/m;->b:Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lp2/m;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lp2/m;->b:Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->m:I

    .line 9
    .line 10
    const-string p1, "db"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->m:I

    .line 17
    .line 18
    const-string p1, "hub"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
