.class public final synthetic Ll3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll3/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/e;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ll3/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ll3/e;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 9
    .line 10
    const-string v0, "\u26d4 No HID-capable profile in USB Arsenal \u2014 open it and create one"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->r:Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v0, Lf/q0;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lf/q0;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lf/q0;->H()Le3/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Lw2/h;

    .line 47
    .line 48
    const/16 v3, 0xc

    .line 49
    .line 50
    invoke-direct {v2, v1, v0, v3}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
