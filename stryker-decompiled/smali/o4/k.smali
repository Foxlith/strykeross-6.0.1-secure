.class public final synthetic Lo4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo4/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lo4/k;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo4/k;->a:I

    .line 2
    .line 3
    const-string v1, "Network connected successfully!"

    .line 4
    .line 5
    iget-object v2, p0, Lo4/k;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lo4/d0;->g:I

    .line 11
    .line 12
    const-string v0, "Timeout! Skipping...\n"

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 19
    .line 20
    const-string v0, "Failed to start attack. Please try again."

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    sget v0, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 27
    .line 28
    const-string v0, "Switching to other target...\n"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_4
    const-string v0, "Internal wifi adapter (wlan0) does not support packet injection! Please use external wifi adapter!\n"

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
