.class public final synthetic Lj2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lj2/i;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/i;->b:Landroid/app/Dialog;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lj2/i;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lj2/i;->b:Landroid/app/Dialog;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object p1, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->f:I

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    sget p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    sget p1, Lcom/zalexdev/stryker/nuclei/NucleiMain;->p:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_7
    sget p1, Lcom/zalexdev/stryker/localnetwork/LocalMain;->A:I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_a
    sget-object p1, Ln3/h;->a:[Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_b
    sget-object p1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_c
    sget-object p1, Lb3/g;->g:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_d
    sget p1, Lcom/zalexdev/stryker/dashboard/WiFiHistoryFragment;->e:I

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_e
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
