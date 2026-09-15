.class public final synthetic Lcom/stryker/terminal/ui/other/g;
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
    iput p2, p0, Lcom/stryker/terminal/ui/other/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/other/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/other/g;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/stryker/terminal/ui/other/UsbDialog;

    invoke-static {v1}, Lcom/stryker/terminal/ui/other/UsbDialog;->b(Lcom/stryker/terminal/ui/other/UsbDialog;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/stryker/terminal/ui/other/InterfacesDialog;

    invoke-static {v1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->d(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/stryker/terminal/ui/other/InterfacesDialog;

    invoke-static {v1}, Lcom/stryker/terminal/ui/other/InterfacesDialog;->f(Lcom/stryker/terminal/ui/other/InterfacesDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
