.class public final synthetic Lcom/stryker/terminal/setup/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/stryker/terminal/setup/SetupThread;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/setup/SetupThread;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/setup/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/setup/c;->b:Lcom/stryker/terminal/setup/SetupThread;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/stryker/terminal/setup/c;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/setup/c;->b:Lcom/stryker/terminal/setup/SetupThread;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/stryker/terminal/setup/SetupThread;->b(Lcom/stryker/terminal/setup/SetupThread;)V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/stryker/terminal/setup/SetupThread;->b(Lcom/stryker/terminal/setup/SetupThread;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/stryker/terminal/setup/SetupThread;->b(Lcom/stryker/terminal/setup/SetupThread;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/stryker/terminal/setup/SetupThread;->a(Lcom/stryker/terminal/setup/SetupThread;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
