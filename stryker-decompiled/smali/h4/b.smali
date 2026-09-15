.class public final synthetic Lh4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh4/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lh4/b;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget p1, p0, Lh4/b;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lh4/b;->b:Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 9
    .line 10
    const-string v0, "msf"

    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 17
    .line 18
    const-string v0, "geomac_bg_scan"

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 25
    .line 26
    const-string v0, "geomac_satellite"

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 33
    .line 34
    const-string v0, "autoScan"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 41
    .line 42
    const-string v0, "wifi"

    .line 43
    .line 44
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 49
    .line 50
    const-string v0, "hide"

    .line 51
    .line 52
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_5
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 57
    .line 58
    const-string v0, "pixie_iface_down"

    .line 59
    .line 60
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_6
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 65
    .line 66
    const-string v0, "autoBanner"

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_7
    iget-object p1, v0, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->c:Ll4/l;

    .line 73
    .line 74
    const-string v0, "save_aps"

    .line 75
    .line 76
    invoke-virtual {p1, v0, p2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
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
