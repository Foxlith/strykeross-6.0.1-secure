.class public final synthetic Lcom/stryker/terminal/component/session/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/component/session/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/component/session/a;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/stryker/terminal/component/session/a;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/component/session/a;->b:Landroid/widget/EditText;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/stryker/terminal/component/session/XSession;->c(Landroid/widget/EditText;)V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/stryker/terminal/component/session/XSession;->e(Landroid/widget/EditText;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
