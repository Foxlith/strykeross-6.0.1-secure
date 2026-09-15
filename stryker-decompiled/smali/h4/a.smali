.class public final synthetic Lh4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/a;->b:Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lh4/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lh4/a;->b:Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 9
    .line 10
    const-string p1, "wlan_wps"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 17
    .line 18
    const-string p1, "wlan_deauth"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    sget p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 25
    .line 26
    const-string p1, "wlan_scan"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    sget p1, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    .line 33
    .line 34
    const-string p1, "wlan_wifi"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
